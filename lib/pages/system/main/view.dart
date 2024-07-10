part of main;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const _MainViewGetX();
  }
}

class _MainViewGetX extends GetView<MainController> {
  const _MainViewGetX({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Scaffold(
        bottomNavigationBar: GetBuilder<MainController>(
          id: 'navigation',
          builder: (_) {
            // return BuildNavigation(
            //   items: [
            //     NavigationItemModel(label: '首页', icon: AssetsSvgs.tabHomeSvg),
            //     NavigationItemModel(label: '事件', icon: AssetsSvgs.tabEventSvg),
            //     NavigationItemModel(
            //         label: '督导', icon: AssetsSvgs.tabSuperviseSvg),
            //     NavigationItemModel(
            //         label: '我的', icon: AssetsSvgs.tabProfileSvg),
            //   ],
            //   currentIndex: controller.currentIndex,
            //   onTap: controller.onJumpToPage,
            // );
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex,
              onTap: controller.onJumpToPage,
              selectedItemColor: AppColors.primary,
              unselectedFontSize: 14,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
                BottomNavigationBarItem(icon: Icon(Icons.event), label: '事件'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm), label: '督导'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
              ],
            );
          },
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(), // 不响应用户的滚动
          controller: controller.pageController,
          onPageChanged: controller.onIndexChanged,
          children: const [
            HomePage(),
            AboutPage(),
            MessagePage(),
            MinePage(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      id: "main",
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
