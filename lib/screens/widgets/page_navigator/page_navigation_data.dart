import 'package:app/screens/home/screens_data.dart';

import '../../model/page.dart';

class PageNavigationData {
  PageNavigationData._();

  static List<AppPage> pageNavigatorList = [
    AppPage(
      index: ScreenNavigation.portfolio.index,
      label: 'Portfolio',
      route: '/portfolio',
    ),
    AppPage(
      index: ScreenNavigation.technology.index,
      label: 'Skills',
      route: '/skills',
    ),
    AppPage(
      index: ScreenNavigation.about.index,
      label: 'About',
      route: '/about',
    ),
    AppPage(
      index: ScreenNavigation.contact.index,
      label: 'Contact',
      route: '/contact',
    ),
  ];
}
