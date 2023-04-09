import '../../model/page.dart';

class PageNavigationData {
  PageNavigationData._();

  static List<AppPage> pageNavigatorList = [
    AppPage(index: 2, label: 'Portfolio', route: '/portfolio'),
    AppPage(index: 3, label: 'Skills', route: '/skills'),
    AppPage(index: 4, label: 'About', route: '/about'),
    AppPage(index: 5, label: 'Contact', route: '/contact'),
  ];
}
