part of routers;

abstract class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> pages = [
    // 页面跳转方式
    GetPage(
      name: RouteNames.mainRoute,
      page: () => const MainPage(),
      customTransition: RouteTransition(),
      // binding: MainBinding(),
    ),

    /// 系统
    GetPage(
      name: RouteNames.homeRoute,
      page: () => const HomePage(),
      customTransition: RouteTransition(),
      // binding: MainBinding(),
    ),
    GetPage(
      name: RouteNames.aboutRoute,
      page: () => const AboutPage(),
      // customTransition: RouteTransition(),
      // binding: MainBinding(),
    ),
    GetPage(
      name: RouteNames.mineRoute,
      page: () => const MessagePage(),
      // customTransition: RouteTransition(),
      // binding: MainBinding(),
    ),
    GetPage(
      name: RouteNames.messageRoute,
      page: () => const MinePage(),
      // customTransition: RouteTransition(),
      // binding: MainBinding(),
    ),
  ];
}
