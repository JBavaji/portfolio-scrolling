import '../../model/page.dart';

class PageNavigationData {
  PageNavigationData._();

  static List<AppPage> pageNavigatorList = [
    AppPage(index: 1, label: 'Career', route: '/career'),
    AppPage(index: 0, label: 'Work', route: '/portfolio'),
    AppPage(index: 0, label: 'Skills', route: '/skills'),
    AppPage(index: 1, label: 'About', route: '/about'),
    AppPage(index: 2, label: 'Contact', route: '/contact'),
  ];
}
