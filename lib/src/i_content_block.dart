import 'visitor.dart';

abstract class IBlock {
  final String type;
  final String id;
  final Map<String, dynamic>? obj;

  IBlock(this.type, this.id, {this.obj});

  void accept(Visitor visitor) => visitor.visitElement(this);
}