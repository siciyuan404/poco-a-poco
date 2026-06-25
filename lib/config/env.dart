import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// 环境变量统一访问入口
/// 使用前需先调用 [Env.load] 加载 .env 文件。
/// 当 .env 文件不存在时(CI 等环境)优雅降级,不抛异常。
class Env {
  Env._();

  static bool _loaded = false;

  /// 加载 .env 文件(在 main 中 runApp 之前调用)
  /// 文件不存在时静默跳过,所有 get() 调用返回 fallback。
  static Future<void> load() async {
    const fileName = '.env';
    final file = File(fileName);
    if (!file.existsSync()) {
      _loaded = false;
      if (kDebugMode) {
        debugPrint('[Env] .env 文件不存在,使用默认值。');
      }
      return;
    }
    await dotenv.load(fileName: fileName);
    _loaded = true;
  }

  /// 是否已成功加载 .env
  static bool get isLoaded => _loaded;

  /// 读取字符串,缺失时返回 [fallback]
  static String get(String key, {String fallback = ''}) {
    return dotenv.env[key] ?? fallback;
  }

  /// 判断某个 key 是否存在
  static bool has(String key) => dotenv.env.containsKey(key);
}
