import 'package:flutter_content_block_parser_example/models/list_item.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final ListItemBlock block;
  final List<dynamic> children;
  final bool _isOrdered;

  const ListItemWidget.unordered(this.block,
      {this.children = const [], super.key})
      : _isOrdered = false;

  const ListItemWidget.ordered(this.block,
      {this.children = const [], super.key})
      : _isOrdered = true;

  String get leading => _isOrdered ? '${block.index + 1}. ' : '•';

  @override
  Widget build(BuildContext context) {
    final currentStyle = DefaultTextStyle.of(context).style;
    final typedChildren =
        List<InlineSpan>.from(children.whereType<InlineSpan>());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: currentStyle.fontSize! * 1.2, child: Text(leading)),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: typedChildren,
            ),
          ),
        ),
      ],
    );
  }
}
