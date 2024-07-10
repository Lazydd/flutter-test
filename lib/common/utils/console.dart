import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// 打印美化
// ignore: camel_case_types
abstract class console {
  static final _log = Logger(
    // 过滤器，可以区分开发环境与生产环境
    filter: _LogFilter(),
    // 打印器，控制日志输出样式和堆栈信息等
    printer: PrefixPrinter(PrettyPrinter()),
  );

  /// debug Log【debug日志 - 土黄色】
  static void log(dynamic message) => _log.d(message);

  /// verbose Log【冗长的日志 - 灰色】
  static void verbose(dynamic message) => _log.t(message);

  /// info Log【信息日志 - 蓝色】
  static void info(dynamic message) => _log.i(message);

  /// warning Log【警告日志 - 橘色】
  static void warning(dynamic message) => _log.w(message);

  /// error Log【错误日志 - 红色】
  static void error(dynamic message) => _log.e(message);

  /// What a terrible failure Log【极其严重的错误日志 - 紫红色】
  static void wtf(dynamic message) => _log.f(message);
}

class _LogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => !kReleaseMode;
}
