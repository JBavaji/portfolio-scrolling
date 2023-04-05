import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_media/social_media_data.dart';
import 'contact_item.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get in touch today',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    color: Colors.green.shade700,
                  ),
            ),
            const SizedBox(height: 20),
            Text(
              'Contact information',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              shadowColor: Colors.grey.shade100,
              elevation: 20,
              child: Column(
                children: [
                  ContactItem(
                    icon: FontAwesomeIcons.envelope,
                    label: 'Email:',
                    value: 'jbavaji@gmail.com',
                    onItemClick: () {
                      SocialMediaData.launchURL(SocialMediaData.emailURL());
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                  ),
                  ContactItem(
                    icon: FontAwesomeIcons.phone,
                    label: 'Phone No:',
                    value: '+91 96018 33544',
                    onItemClick: () {
                      SocialMediaData.launchURL(SocialMediaData.phoneNo);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
