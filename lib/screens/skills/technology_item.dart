import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_config/assets_data.dart';

class TechnologyItem extends StatelessWidget {
  final Map<String, String> item;

  const TechnologyItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                height: 100,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.10),
                ),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    item['icon']!,
                  ),
                )),
          ),
          const SizedBox(height: 10),
          Text(item['name']!, style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
