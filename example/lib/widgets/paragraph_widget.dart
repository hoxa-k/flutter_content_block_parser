import 'package:flutter_content_block_parser/flutter_content_block_parser.dart';
import 'package:flutter/cupertino.dart';

class ParagraphWidget extends StatelessWidget {
  final BlockContainer block;
  final List<dynamic> children;

  const ParagraphWidget(this.block, {this.children = const [], super.key});

  @override
  Widget build(BuildContext context) {
    final typedChildren =
        List<InlineSpan>.from(children.whereType<InlineSpan>());
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: typedChildren,
        ),
      ),
    );
  }
}
