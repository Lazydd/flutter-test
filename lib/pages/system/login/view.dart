part of login;

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return SingleChildScrollView(
      child: <Widget>[
        Center(
          child: Image.network(
            '',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ).onTap(() => controller.onContinuousClicks()).paddingBottom(50.w),
        ),
        // 表单
        _buildForm(context).paddingHorizontal(AppSpace.page),
      ]
          .toColumn(crossAxisAlignment: CrossAxisAlignment.start)
          .center()
          .paddingHorizontal(AppSpace.page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
