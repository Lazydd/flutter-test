part of main;

/// 导航栏数据模型
class NavigationItemModel {
  /// 底部的文字
  final String? label;

  /// 图标 - 默认Icons.xxx - 可以设置iconType来满足你支持的类型
  final String icon;

  /// 选中时候的图标
  final String? activeIcon;

  /// 计数
  final int count;

  ///支持的类型 icon/image/svg/json
  final String? iconType;

  NavigationItemModel({
    this.label,
    required this.icon,
    this.activeIcon,
    this.count = 0,
    this.iconType = 'svg',
  });
}

/// 导航栏
class BuildNavigation extends StatelessWidget {
  final int currentIndex;
  final List<NavigationItemModel> items;
  final Function(int) onTap;

  const BuildNavigation({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabBarWidgets = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      var color = (i == currentIndex)
          ? AppColors.primary
          : const Color.fromRGBO(89, 99, 101, 1);
      var item = items[i];
      tabBarWidgets.add(
        <Widget>[
          // 图片
          if (item.iconType == 'image')
            IconWidget.image(
              // 选中的时候选择选中图标，若没有的话就选用默认图标
              (i == currentIndex) ? (item.activeIcon ?? item.icon) : item.icon,
              size: item.label == null ? 25 : 20,
              badgeString: item.count > 0 ? item.count.toString() : null,
            ).paddingBottom(2),
          // svg
          if (item.iconType == 'svg')
            IconWidget.svg(
              // 选中的时候选择选中图标，若没有的话就选用默认图标
              (i == currentIndex) ? (item.activeIcon ?? item.icon) : item.icon,
              size: item.label == null ? 25 : 25,
              color: color,
              badgeString: item.count > 0 ? item.count.toString() : null,
            ).paddingBottom(2),
          // url
          if (item.iconType == 'url')
            IconWidget.url(
              // 选中的时候选择选中图标，若没有的话就选用默认图标
              (i == currentIndex) ? (item.activeIcon ?? item.icon) : item.icon,
              size: item.label == null ? 25 : 20,
              badgeString: item.count > 0 ? item.count.toString() : null,
            ).paddingBottom(0),
          // if (item.iconType == 'lottie')
          //   Lottie.asset(
          //     // 选中的时候选择选中图标，若没有的话就选用默认图标
          //     (i == currentIndex) ? (item.activeIcon ?? item.icon) : item.icon,
          //     width: item.label == null ? 25 : 20,
          //     height: item.label == null ? 25 : 20,
          //   ),
          // 文字
          TextWidget.body2(
            item.label == null ? "" : item.label!.tr,
            color: color,
          ),
        ]
            .toColumn(
              mainAxisSize: MainAxisSize.min,
            )
            .onTap(() => onTap(i)),
      );
    }
    return BottomAppBar(
      color: AppColors.surface,
      elevation: 0,
      child: tabBarWidgets
          .toRow(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
          )
          .height(kBottomNavigationBarHeight),
    );
  }
}
