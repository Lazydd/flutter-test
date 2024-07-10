part of message;

class MessagePage extends GetView<MessageController> {
  const MessagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("MessagePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(
      init: MessageController(),
      id: "message",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("message")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
