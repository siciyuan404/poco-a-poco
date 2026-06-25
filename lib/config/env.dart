import 'package:flutter_dotenv/flutter_dotenv.dart';

/// 环境变量统一访问入口
/// 使用前需先调用 [Env.load] 加载 .env 文件。
class Env {
  Env._();

  /// 加载 .env 文件(在 main 中 runApp 之前调用)
  static Future<void> load() async {
    await dotenv.load(fileName: '.env');
  }

  /// 读取字符串,缺失时返回 [fallback]
  static String get(String key, {String fallback = ''}) {
    return dotenv.env[key] ?? fallback;
  }

  /// 判断某个 key 是否存在
  static bool has(String key) => dotenv.env.containsKey(key);
}
