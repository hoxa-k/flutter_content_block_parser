import 'package:content_block_parser/content_block_parser.dart';
import 'package:flutter/cupertino.dart';

class DocumentWidget extends StatelessWidget {
  final BlockContainer block;
  final List<dynamic> children;

  const DocumentWidget(this.block, {this.children = const [], super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: List<Widget>.from(children),
    );
  }
}