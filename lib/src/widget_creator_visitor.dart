import 'dart:collection';

import 'package:content_block_parser/src/visitor.dart';
import 'package:content_block_parser/src/content_block_container.dart';
import 'package:content_block_parser/src/i_content_block.dart';
import 'package:content_block_parser/src/ioc_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetCreatorVisitor implements Visitor {
  final Queue<List<dynamic>> result = Queue()..add([]);
  final Queue<BlockContainer> parent = Queue();

  @override
  void beforeVisit(BlockContainer element) {
    result.add([]);
    element.obj?['index'] = 0;
    element.obj?['parentSize'] = element.children.length;
    parent.add(element);
  }

  @override
  void afterVisit(BlockContainer element) {
    parent.removeLast();
  }

  @override
  void visitElement(IBlock element) {
    _setFromParent(element, parent.last);
    result.last.add(getBlocWidget(element, parent: parent.last));
  }

  @override
  void visitContainer(BlockContainer container) {
    final children = List<dynamic>.from(result.last);
    final containerParent = (parent.length-2 >= 0 ) ? parent.elementAt(parent.length-2) : null;
    _setFromParent(container, containerParent);

    result.removeLast();
    result.last.add(getBlocWidget(
      container,
      children: children,
      parent: containerParent
    ));
  }

  Widget get() => result.last.first;

  void _setFromParent(IBlock element, BlockContainer? parent) {
    if (parent == null) return;
    element.obj?['index'] = parent.obj?['index'];
    parent.obj?['index'] ++;
    element.obj?['parentSize'] = parent.obj?['parentSize'];
  }

  static void registerBlocWidget(
    String blockType,
    DiagnosticableTree Function(IBlock, List<dynamic>?) blocWidget,
  ) {
    IoC.registerFactoryParam<DiagnosticableTree, IBlock, List<dynamic>?>(
      (element, children) => blocWidget(element, children),
      instanceName: blockType,
    );
  }

  static dynamic getBlocWidget(IBlock element,
      {List<dynamic>? children, IBlock? parent}) {
    final instanceNameWithParent =
        parent != null ? '${parent.type} / ${element.type}' : null;

    final instanceName = (instanceNameWithParent != null &&
            IoC.isRegistered<DiagnosticableTree>(
              instanceName: instanceNameWithParent,
            ))
        ? instanceNameWithParent
        : IoC.isRegistered<DiagnosticableTree>(instanceName: element.type)
            ? element.type
            : 'default';

    return IoC.get<DiagnosticableTree>(
      instanceName: instanceName,
      param1: element,
      param2: children,
    );
  }
}
