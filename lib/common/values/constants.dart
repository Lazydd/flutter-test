import 'dart:convert';

import 'package:flutter_application_3/common/index.dart';

class Constants {
  // 服务 api
  static const baseUrl = ""; // 测试环境

  static get jwApiBaseUrl {
    if (Storage().getString(Constants.storageIPConfig).isNotEmpty) {
      var ipMap = jsonDecode(Storage().getString(Constants.storageIPConfig));
      return ipMap["protocol"] + "://" + ipMap["ipAddress"];
    } else {
      return baseUrl;
    }
  }

  static const isVersionDetect = 'is_version_detect'; // 是否检查版本更新
  static const storageToken = 'token'; // token
  static const storageProfile = 'profile'; // 用户信息
  static const storageAccount = 'account'; // 登录账号保存
  static const storagePassword = 'password'; // 登录密码保存
  static const storageIPConfig = 'ip_config'; // 存储 IP 配置
}
