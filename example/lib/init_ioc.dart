import 'package:content_block_parser/content_block_parser.dart';
import 'package:content_block_parser_example/models/list_item.dart';
import 'package:content_block_parser_example/widgets/default_widget.dart';
import 'package:content_block_parser_example/widgets/document_widget.dart';
import 'package:content_block_parser_example/widgets/list_widget.dart';
import 'package:content_block_parser_example/widgets/list_item_widget.dart';
import 'package:content_block_parser_example/widgets/paragraph_widget.dart';
import 'package:content_block_parser_example/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

import 'models/text.dart';

void initContentBlockWidgets() {
  WidgetCreatorVisitor.registerBlocWidget(
    'default',
    (p0, p1) => DefaultWidget(p0),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'text',
    (p0, p1) => TextBlockWidget.generateTextBlock(
        TextBlock.fromContentBlock(p0 as ContentBlock)),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'hard_break',
    (p0, p1) => TextBlockWidget.generateHardBreak(p0),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'paragraph',
    (p0, p1) => ParagraphWidget(p0 as BlockContainer, children: p1 ?? []),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'ordered_list',
    (p0, p1) => ListWidget(p0 as BlockContainer, children: p1 ?? []),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'ordered_list / list_item',
    (p0, p1) => ListItemWidget.ordered(
      ListItemBlock.fromContentBlock(p0),
      children: p1 ?? [],
    ),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'list_item',
    (p0, p1) => ListItemWidget.unordered(
      ListItemBlock.fromContentBlock(p0),
      children: p1 ?? [],
    ),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'unordered_list',
    (p0, p1) => ListWidget(p0 as BlockContainer, children: p1 ?? []),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'main_container',
    (p0, p1) => DocumentWidget(p0 as BlockContainer, children: p1 ?? []),
  );
  WidgetCreatorVisitor.registerBlocWidget(
    'hr',
        (p0, p1) => const Divider(color: Colors.red, thickness: 2),
  );
}
