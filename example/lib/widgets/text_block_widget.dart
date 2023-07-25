import 'dart:ui';

import 'package:content_block_parser/content_block_parser.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/text.dart';

class TextBlockWidget {
  static TextSpan generateTextBlock(TextBlock block) {
    final style = block.parameters;
    final isSemiBold = style?.contains(TextBlockStyle.b) ?? false;
    final isMedium = style?.contains(TextBlockStyle.strong) ?? false;
    final isItalic = style?.any((e) => [
              TextBlockStyle.em,
              TextBlockStyle.i,
            ].contains(e)) ??
        false;
    final isUnderlined = style?.any((e) => [
              TextBlockStyle.u,
              TextBlockStyle.ins,
            ].contains(e)) ??
        false;
    final isSuperscript = style?.contains(TextBlockStyle.sup) ?? false;
    final isSubscript = style?.contains(TextBlockStyle.sub) ?? false;
    final isDel = style?.contains(TextBlockStyle.del) ?? false;
    final isMark = style?.contains(TextBlockStyle.mark) ?? false;
    final isSmall = style?.contains(TextBlockStyle.small) ?? false;
    final onTap = block.url != null
        ? () async => await launchUrl(Uri.parse(block.url!))
        : null;

    return TextSpan(
      text: block.text,
      style: TextStyle(
        fontWeight: isSemiBold
            ? FontWeight.bold
            : isMedium
                ? FontWeight.w500
                : FontWeight.normal,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        fontFeatures: [
          if (isSuperscript) const FontFeature.superscripts(),
          if (isSubscript) const FontFeature.subscripts(),
        ],
        fontSize: isSmall ? 14 * 0.8 : null,
        decoration: TextDecoration.combine([
          if (isUnderlined) TextDecoration.underline,
          if (isDel) TextDecoration.lineThrough,
        ]),
        backgroundColor: isMark ? Colors.lightGreenAccent : null,
      ),
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }

  static TextSpan generateHardBreak(IBlock block) {
    return const TextSpan(text: '\n');
  }
}
