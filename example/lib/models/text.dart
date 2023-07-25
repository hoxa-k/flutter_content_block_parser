import 'package:content_block_parser/content_block_parser.dart';

class TextBlock extends IBlock {
  final String? text;
  final String? url;
  final List<String>? parameters;

  TextBlock(super.type, super.id, {this.text, this.url, this.parameters});

  factory TextBlock.fromContentBlock(ContentBlock block) {
    return TextBlock(
      block.type,
      block.id,
      text: block.obj?['text'],
      parameters: block.obj?['parameters']?['formattingStyles'],
    );
  }
}

class TextBlockStyle {
  static const u = 'u';
  static const b = 'b';
      static const strong = 'strong';
      static const i = 'i';
      static const em = 'em';
      static const mark = 'mark';
      static const small = 'small';
      static const del = 'del';
      static const ins = 'ins';
      static const sub = 'sub';
      static const sup = 'sup';
      static const unknown = 'unknown';
}
