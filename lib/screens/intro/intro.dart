import 'package:app/app_config/assets_data.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'I\'m Jayeshgiri Bavaji (JBavaji).',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.green.shade700,
                    fontSize: 28
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                    'It\'s been a decade in the mobile application development profession. After spending the first significant chunk of my career working to develop E-Commerce, Food Ordering System, and Safety Solutions, as well as shaping my technical expertise in Android native development. In the latter stages of my career, I was exposed to cross-platform technology.  Throughout my career, I\'ve had the opportunity to experiment with and work with both React Native and Flutter.',
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 15),
                Text('Let\'s schedule a time!',
                    style: Theme.of(context).textTheme.displayLarge),
                Text(
                  '• Modernizing existing application',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  '• Rebuild as cross platform application',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  '• Transforming your idea into reality',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
          child: Image.asset(
            AppAssets.homeLandingImage,
            height: 600,
            width: 500,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
