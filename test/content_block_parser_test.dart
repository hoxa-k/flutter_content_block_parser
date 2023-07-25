import 'package:content_block_parser/content_block_parser.dart';
import 'package:content_block_parser/src/visitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockElement extends IBlock {
  MockElement(super.type, super.uuid);
}

class MockDocument extends BlockContainer {
  MockDocument(super.type, super.uuid, {required super.children});
}

class FakeContentBlock extends Fake implements IBlock {}
class FakeContentBlockContainer extends Fake implements BlockContainer {}

class MockVisitor extends Mock implements Visitor {}

void main() {
  final creator = WidgetCreatorVisitor();
  final document = MockDocument(
    'MockDocument',
    'uuid',
    children: [MockElement('MockElement', 'uuid'), MockElement('MockElement', 'uuid')],
  );
  final element = MockElement('MockElement', 'uuid');


  setUpAll(() {
    registerFallbackValue(FakeContentBlock());
    registerFallbackValue(FakeContentBlockContainer());

    WidgetCreatorVisitor.registerBlocWidget(
        'MockElement', (p0, p1) => Text(p0.id));
    WidgetCreatorVisitor.registerBlocWidget(
      'MockDocument',
      (p0, p1) => Column(children: List<Widget>.from(p1 ?? [])),
    );
  });

  group('content block visitor', () {
    test('test visit element', () {
      final visitor = MockVisitor();
      element.accept(visitor);
      verify(() => visitor.visitElement(element)).called(1);
    });
    test('test visit document', () {
      final visitor = MockVisitor();
      document.accept(visitor);
      verify(() => visitor.visitContainer(document)).called(1);
      verify(() => visitor.beforeVisit(document)).called(1);
      verify(() => visitor.afterVisit(document)).called(1);
      verify(() => visitor.visitElement(any<IBlock>())).called(2);
    });
    test('test widget creator visitor', () {
      document.accept(creator);
      final result = creator.get();
      expect(creator.result.length, equals(1));
      expect(result, isA<Column>());
      expect((result as Column).children.length, equals(2));
      expect(result.children, contains(isA<Text>()));
    });
  });

}
