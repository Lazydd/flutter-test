part of mine;

class MinePage extends GetView<MineController> {
  const MinePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("MinePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MineController>(
      init: MineController(),
      id: "mine",
      builder: (_) {
        return Scaffold(
          persistentFooterAlignment: AlignmentDirectional.bottomEnd,
          appBar: AppBar(title: const Text("mine")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
