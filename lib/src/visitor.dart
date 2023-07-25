import 'package:content_block_parser/src/content_block_container.dart';
import 'package:content_block_parser/src/i_content_block.dart';

abstract class Visitor {
  void visitElement(IBlock element);
  void visitContainer(BlockContainer container);
  void beforeVisit(BlockContainer container);
  void afterVisit(BlockContainer container);
}