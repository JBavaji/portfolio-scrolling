import 'package:app/app_config/assets_data.dart';

final List<Map<String, String>> technologies = [
  {'mobile': 'Mobile Technology'},
  {'web': 'Web Technology'},
  {'design': 'UI/UX Design'},
  {'blockchain': 'Blockchain'},
  {'cloud': 'Cloud'},
  {'database': 'Database'},
];

final List<Map<String, List<Map<String, String>>>> languages = [
  {
    'mobile': [
      {'name': "Flutter", 'icon': AppAssets.flutter},
      {'name': "React Native", 'icon': AppAssets.react_native},
      {'name': "Kotlin", 'icon': AppAssets.kotlin},
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
      {'name': "Figma", 'icon': AppAssets.figma},
    ]
  },
  {
    'blockchain': [
      {'name': "Solana", 'icon': AppAssets.solana},
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
