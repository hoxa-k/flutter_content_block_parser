import 'i_content_block.dart';
import 'visitor.dart';

class BlockContainer extends IBlock {
  final List<IBlock> children;

  BlockContainer(super.type, super.id, {super.obj, required this.children});

  @override
  void accept(Visitor visitor) {
    visitor.beforeVisit(this);
    for (final child in children) {
      child.accept(visitor);
    }
    visitor.visitContainer(this);
    visitor.afterVisit(this);
  }
}
