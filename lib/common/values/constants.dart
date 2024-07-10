/// 常量
class Constants {
  // 服务 api
  static const baseUrl = "http://47.92.194.92"; // 测试环境

  static get jwApiBaseUrl {
    return baseUrl;
  }

  static const isVersionDetect = 'is_version_detect'; // 是否检查版本更新
  static const storageToken = 'token'; // token
  static const storageProfile = 'profile'; // 用户信息
}
