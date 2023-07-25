import 'package:content_block_parser/content_block_parser.dart';
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
      "id": "f67f866c-8ec9-4856-975d-149e67e406bf",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "423f8b27-b405-49c7-acf1-a4237bcc53ef",
          "type": "text",
          "parameters": {},
          "text":
              "Уровень мирового океана повысится минимум на 27 см в течение ближайших 100-150 лет из-за таяния 110 трлн тонн гренландских ледников даже при сокращении выбросов углекислого газа в атмосферу. Об этом "
        },
        {
          "id": "0284c87e-950b-48a6-b14d-492e6879aec8",
          "type": "link",
          "parameters": {},
          "is_external": true,
          "text": "сообщает",
          "url":
              "https://www.theguardian.com/environment/2022/aug/29/major-sea-level-rise-caused-by-melting-of-greenland-ice-cap-is-now-inevitable-27cm-climate"
        },
        {
          "id": "46beed97-31ad-42d9-8771-9ff2bc464aa0",
          "type": "text",
          "parameters": {
            "formattingStyles": ["i", "b"],
          },
          "text": " во вторник газета Guardian со ссылкой на "
        },
        {
          "id": "b24e93d8-6eb7-4338-bbb9-4fda6741bada",
          "type": "link",
          "parameters": {},
          "is_external": true,
          "text": "исследование",
          "url": "https://www.nature.com/articles/s41558-022-01441-2"
        },
        {
          "id": "71fd6de8-fa1a-4e37-b736-e68d6d4bfd23",
          "type": "text",
          "parameters": {},
          "text":
              " Геологической службы Дании и Гренландии (Geological Survey of Denmark and Greenland - Geus)."
        },
        {
          "id": "71fd6de8-fa1a-4e37-b736-e68d6d4bfd23",
          "type": "hard_break",
        },
        {
          "id": "71fd6de8-fa1a-4e37-b736-e68d6d4bfd23",
          "type": "text",
          "parameters": {},
          "text":
              " Геологической службы Дании и Гренландии (Geological Survey of Denmark and Greenland - Geus)."
        }
      ]
    },
    {
      "id": "93abea61-0dad-4e6a-b2fe-6f4548ab9739",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "9db3e69f-723b-4d41-9e16-1139b527c775",
          "type": "text",
          "parameters": {},
          "text":
              "\"Подъем минимум на 27 см - это изменение уровня моря, которое произойдет вне зависимости от того, что мы будем делать дальше\", - отмечает сотрудник геологической службы Уильям Колген."
        }
      ]
    },
    {
      "id": "3d483fa5-61fd-4469-9753-de1330804315",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "6175fb4e-948d-455c-9c69-561c98588b23",
          "type": "text",
          "parameters": {},
          "text":
              "Исследователи проанализировали состояние ледников Гренландии в 2000-2019 годах на основе спутниковых данных. По их прогнозам, в случае, если выбросы углекислого газа в атмосферу не будут сокращены, таяние ледников может ускориться и привести к повышению уровня мирового океана на 78 см."
        }
      ]
    },
    {
      "id": "14642140-c184-4f0e-9713-648bad508df9",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "167da30d-cf02-456a-be26-9b2c2c33e9d0",
          "parameters": {},
          "type": "text",
          "text":
              "В 2015 году 197 стран приняли Парижское соглашение по климату в целях борьбы с негативными климатическими изменениями. Соглашение предусматривает существенное сокращение выбросов парниковых газов, что должно ограничить повышение глобальной температуры в этом столетии до 2 градусов Цельсия."
        }
      ]
    },
    {
      "id": "4b796346-08f1-4d2e-889c-d11786e62024",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "72093d5a-e8f0-4f64-9c4a-b5a1bccbeeda",
          "type": "text",
          "parameters": {},
          "text":
              "По данным Всемирной метеорологической организации (ВМО), средние темпы подъема уровня океанов составили в 2013-2021 гг 4,5 мм в год, что более чем в два раза выше, чем в 1993-2002 гг."
        }
      ]
    },
    {
      "id": "1c355aa5-990c-4b7f-a024-1d7accd9a9d1",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "0d74fefc-d436-4a75-9ad6-548c119f1c29",
          "type": "text",
          "parameters": {},
          "text":
              "В прибрежных зонах, которым угрожает затопление из-за повышения уровня мирового океана, по всему миру проживают около 600 млн человек."
        }
      ]
    },
    {
      "id": "d8e65870-0cbb-49ac-b83c-0f300e259ea0",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "1c68586a-bf24-4dff-a41c-1aae60e74958",
          "type": "text",
          "parameters": {},
          "text": " "
        }
      ]
    },
    {
      "id": "06fbc081-8276-42f4-b7c0-2e14c4c45cef",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "1fc37b72-4214-496a-bbdf-9d3e1dc26887",
          "type": "text",
          "parameters": {},
          "text":
              "По данным Всемирной метеорологической организации (ВМО), средние темпы подъема уровня океанов составили в 2013-2021 гг 4,5 мм в год, что более чем в два раза выше, чем в 1993-2002 гг."
        }
      ]
    },
    {
      "id": "073ed718-b6dc-4034-bbb7-dcc18db8afb3",
      "type": "paragraph",
      "parameters": {},
      "items": [
        {
          "id": "bbcebfa4-78c5-4c5c-a68c-9746a3edb021",
          "type": "text",
          "parameters": {},
          "text":
              "В прибрежных зонах, которым угрожает затопление из-за повышения уровня мирового океана, по всему миру проживают около 600 млн человек."
        }
      ]
    },
    {
      "id": "073ed718-b6dc-4034-bbb7-dcc18db8afb5",
      "type": "paragraph",
      "parameters": null,
      "items": [
        {
          "id": "bbcebfa4-78c5-4c5c-a68c-9746a3edb05",
          "type": "link",
          "parameters": {},
          "is_external": false,
          "text": "А в конце будет ссылка на другую новость",
          "url": "ru.tass.tassovec://news/randomId"
        }
      ]
    },
    {
      "type": "ordered_list",
      "id": "b940ed53-c7ed-11ed-a122-f70e6478f434",
      "start": 1,
      "items": [
        {
          "type": "list_item",
          "id": "b940ed54-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": "et iusto odio dignissimos",
              "id": "b940ed56-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed57-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " ducimus ",
              "id": "b940ed59-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed5a-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": "qui blanditiis",
              "id": "b940ed5c-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed5d-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " praesentium",
              "id": "b940ed5f-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed60-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " voluptatum",
              "id": "b940ed62-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed63-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " deleniti atque corrupti ",
              "id": "b940ed65-c7ed-11ed-a122-f70e6478f434"
            },
            {"id": "b940ed66-c7ed-11ed-a122-f70e6478f434", "type": "hard_break"}
          ]
        }
      ]
    },
    {
      "type": "unordered_list",
      "id": "b940ed53-c7ed-11ed-a122-f70e6478f434",
      "start": 1,
      "items": [
        {
          "type": "list_item",
          "id": "b940ed54-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": "et iusto odio dignissimos",
              "id": "b940ed56-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed57-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " ducimus ",
              "id": "b940ed59-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed5a-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": "qui blanditiis",
              "id": "b940ed5c-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed5d-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " praesentium",
              "id": "b940ed5f-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed60-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " voluptatum",
              "id": "b940ed62-c7ed-11ed-a122-f70e6478f434"
            }
          ]
        },
        {
          "type": "list_item",
          "id": "b940ed63-c7ed-11ed-a122-f70e6478f434",
          "items": [
            {
              "type": "text",
              "text": " deleniti atque corrupti ",
              "id": "b940ed65-c7ed-11ed-a122-f70e6478f434"
            },
            {"id": "b940ed66-c7ed-11ed-a122-f70e6478f434", "type": "hard_break"}
          ]
        }
      ]
    }
  ]
};
