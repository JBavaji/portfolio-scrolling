import 'package:app/app_config/assets_data.dart';

final List<Map<String, String>> technologies = [
  {'mobile': 'Mobile Technology'},
  {'web': 'Web Technology'},
  {'design': 'UI/UX Design'},
  {'blockchain': 'Blockchain'},
  {'cloud': 'Cloud'},
  {'source': 'Source Control'},
  {'database': 'Database'},
];

final List<Map<String, List<Map<String, String>>>> languages = [
  {
    'mobile': [
      {'name': "Flutter", 'icon': AppAssets.flutter},
      {'name': "React Native", 'icon': AppAssets.react_native},
      {'name': "Kotlin", 'icon': AppAssets.kotlin},
      {'name': "Java", 'icon': AppAssets.java},
    ]
  },
  {
    'web': [
      {'name': "React.Js", 'icon': AppAssets.reactjs},
      {'name': "JavaScript", 'icon': AppAssets.javascript},
    ]
  },
  {
    'design': [
      {'name': "Sketch", 'icon': AppAssets.sketch},
      {'name': "Figma", 'icon': AppAssets.figma},
    ]
  },
  {
    'blockchain': [
      {'name': "Solana", 'icon': AppAssets.solana},
    ]
  },
  {
    'source': [
      {'name': "Github", 'icon': AppAssets.github},
      {'name': "SourceTree", 'icon': AppAssets.sourcetree},
    ]
  },
  {
    'cloud': [
      {'name': "Firebase", 'icon': AppAssets.firebase},
    ]
  },
  {
    'database': [
      {'name': "MySql", 'icon': AppAssets.mysql},
      {'name': "PostgreSql", 'icon': AppAssets.postgresql},
      {'name': "mongodb", 'icon': AppAssets.mongodb},
      {'name': "couchdb", 'icon': AppAssets.couchdb},
    ]
  },
];
