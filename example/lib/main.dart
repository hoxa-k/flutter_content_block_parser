import 'package:flutter_content_block_parser/flutter_content_block_parser.dart';
import 'init_ioc.dart';
import 'package:flutter/material.dart';

void main() {
  initContentBlockWidgets();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contents block example')),
      body: ContentBlocks(),
    );
  }
}

class ContentBlocks extends StatelessWidget {
  ContentBlocks({super.key});

  final _creator = WidgetCreatorVisitor();
  final _blocks = ContentBlock.fromJson(jsonContentBlocks);

  @override
  Widget build(BuildContext context) {
    _blocks.accept(_creator);
    return SingleChildScrollView(child: _creator.get());
  }
}

const jsonContentBlocks = {
  "type": "main_container",
  "id": "f67f866c-8ec9-4856-975d-149e67e4jkll",
  "items": [
    {
      "type": "paragraph",
      "id": "68cf45a1-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Списки в тексте: разбор частых ошибок копирайтеров и правила оформления",
          "id": "68cf45a2-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["b"]
          }
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45a1-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Содержание статьи:",
          "id": "68cf45a2-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["b"]
          }
        }
      ]
    },
    {
      "type": "ordered_list",
      "id": "68cf45a3-3da0-11ee-86bd-e13524611d7b",
      "start": 1,
      "items": [
        {
          "type": "list_item",
          "id": "68cf45a4-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "Маркированные списки",
              "id": "68cf45a6-3da0-11ee-86bd-e13524611d7b"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "68cf45a7-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "Нумерованные списки",
              "id": "68cf45a9-3da0-11ee-86bd-e13524611d7b"
            }
          ]
        }
      ]
    },
    {"type": "paragraph", "id": "68cf45aa-3da0-11ee-86bd-e13524611d7b", "items":<Map<String, dynamic>>[]},
    {
      "type": "paragraph",
      "id": "68cf45ab-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Маркированные списки",
          "id": "68cf45ac-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["b"]
          }
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45ad-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "Это неупорядоченные перечисления: в них используются буллиты в виде точек, квадратиков, иконок, изображений. Они нужны, когда последовательность элементов не имеет значения.",
          "id": "68cf45ae-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45af-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "В маркированных списках должны присутствовать пункты, связанные друг с другом по смыслу и имеющие примерно одинаковую важность. Рекомендуется, чтобы все пункты были примерно равны по объему, в противном случае перечень будет казаться перегруженным.",
          "id": "68cf45b0-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45b1-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Вот пример того, как делать не стоит:",
          "id": "68cf45b2-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45b3-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Хорошая структура статьи содержит:",
          "id": "68cf45b4-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["i"]
          }
        }
      ]
    },
    {
      "type": "unordered_list",
      "id": "68cf45b5-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "list_item",
          "id": "68cf45b6-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "подзаголовки;",
              "id": "68cf45b8-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            }
          ]
        },
        {
          "type": "list_item",
          "id": "68cf45b9-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "абзацы;",
              "id": "68cf45bb-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            }
          ]
        },
        {
          "type": "list_item",
          "id": "68cf45bc-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text":
                  "выделения жирным и курсивом: они позволяют обозначить в статье важные мысли и привлечь внимание читателя.",
              "id": "68cf45be-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            },
          ]
        }
      ]
    },
    {"type": "hr", "id": "68cf45c0-3da0-11ee-86bd-e13524611d8b"},
    {
      "type": "paragraph",
      "id": "68cf45c0-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "Пояснение в конце перечня стоит вынести в отдельное предложение.",
          "id": "68cf45c1-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45c2-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "Минимальное количество элементов в маркированном списке — три. Если перечень слишком короткий, лучше трансформировать его в небольшое предложение.",
          "id": "68cf45c3-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45c4-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Нумерованные списки",
          "id": "68cf45c5-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["b"]
          }
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45c6-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "Это упорядоченные перечисления, представленные в конкретной последовательности. В качестве буллитов используются числа, реже — буквы (обычно встречаются в тестах).",
          "id": "68cf45c7-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45c8-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text":
              "Часто нумерованные перечисления используются в пошаговых инструкциях и руководствах, в рецептах. Без них не обойтись в топах и рейтингах. Но есть ситуации, когда подходят только маркированные списки.",
          "id": "68cf45c9-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45ca-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Пример того, как делать не стоит:",
          "id": "68cf45cb-3da0-11ee-86bd-e13524611d7b"
        }
      ]
    },
    {
      "type": "paragraph",
      "id": "68cf45cc-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "text",
          "text": "Для связи с нами вы можете:",
          "id": "68cf45cd-3da0-11ee-86bd-e13524611d7b",
          "parameters": {
            "formatting_styles": ["i"]
          }
        }
      ]
    },
    {
      "type": "unordered_list",
      "id": "68cf45ce-3da0-11ee-86bd-e13524611d7b",
      "items": [
        {
          "type": "list_item",
          "id": "68cf45cf-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "Позвонить по телефону.",
              "id": "68cf45d1-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            }
          ]
        },
        {
          "type": "list_item",
          "id": "68cf45d2-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text":
                  "Написать в мессенджере или в сообщения группы в соцсети.",
              "id": "68cf45d4-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            }
          ]
        },
        {
          "type": "list_item",
          "id": "68cf45d5-3da0-11ee-86bd-e13524611d7b",
          "items": [
            {
              "type": "text",
              "text": "Прийти в офис компании лично.",
              "id": "68cf45d7-3da0-11ee-86bd-e13524611d7b",
              "parameters": {
                "formatting_styles": ["i"]
              }
            }
          ]
        }
      ]
    },
    {"type": "paragraph", "id": "68cf45aa-3da0-11ee-86bd-e13524611d7b", "items":<Map<String, dynamic>>[]},
    {"type": "image", "id": "68cf45aa-3da0-11ee-86bd-e13524611d7b", "url":"http://eee.ru","authors":[{"name":"ivan","last_name":"ivanov"},{"name":"petr","last_name":"petrov"}]},
  ]
};
