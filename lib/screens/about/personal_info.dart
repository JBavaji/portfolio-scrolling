import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child:   Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name: Jayeshgiri R. Bavaji',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Phone: (+91) 96018 33544',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Email: jbavaji@gmail.com',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Address: 303, Sai Miracle, Pune',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Country: India',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Languages: English, Hindi, Gujrati',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'FreeLance: Available',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        ElevatedButton.icon(
          onPressed: () {

          },
          icon: const FaIcon(FontAwesomeIcons.download, size: 20,),
          label: const Text('Download CV'),
        ),
      ],
      ),
    );
  }
}
