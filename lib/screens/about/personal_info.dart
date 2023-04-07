import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  Widget infoWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade900,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 42),
          ),
          infoWidget(
            context,
            'Name: Jayeshgiri R. Bavaji',
          ),
          infoWidget(
            context,
            'Phone: (+91) 96018 33544',
          ),
          infoWidget(
            context,
            'Address: 303, Sai Miracle, Pune',
          ),
          infoWidget(
            context,
            'Country: India',
          ),
          infoWidget(
            context,
            'Languages: English, Hindi, Gujrati',
          ),
          infoWidget(
            context,
            'FreeLance: Available',
          ),
          // ElevatedButton.icon(
          //   onPressed: () {},
          //   icon: const FaIcon(
          //     FontAwesomeIcons.download,
          //     size: 20,
          //   ),
          //   label: const Text('Download CV'),
          // ),
        ],
      ),
    );
  }
}
