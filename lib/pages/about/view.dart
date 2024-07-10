part of about;

class AboutPage extends GetView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("AboutPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      init: AboutController(),
      id: "about",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("about")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
