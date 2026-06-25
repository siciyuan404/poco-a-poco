# Poco a Poco 🇪🇸

> **Poco a Poco** —— 循序渐进学西语的移动应用。
> 「Poco a poco」在西班牙语中意为「一点一点地 / 循序渐进」,正是语言学习最有效的节奏。

[![Flutter](https://img.shields.io/badge/Flutter-3.44.4-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.12-0175C2?logo=dart)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-blue)](#)

---

## 📖 项目简介

Poco a Poco 是一款用 Flutter 打造的西班牙语学习 App,致力于让用户在碎片时间里「一点一点」地积累西语能力。项目以开源方式维护,欢迎社区参与共建。

## ✨ 功能特性(规划中)

- **分级课程**:从 A1 入门到 B2 进阶,循序渐进。
- **词汇卡片**:基于间隔重复(Spaced Repetition)的记忆训练。
- **情景对话**:覆盖旅行、点餐、问路等真实场景。
- **听力练习**:原生发音,磨耳朵练语感。
- **学习进度**:可视化追踪每日学习数据与连续打卡。
- **离线可用**:核心内容本地缓存,随时随地学。

## 🛠 技术栈

| 类别 | 选型 |
| --- | --- |
| 框架 | Flutter 3.44.x (stable) |
| 语言 | Dart 3.12 |
| 状态管理 | Riverpod / Provider(待定) |
| 本地存储 | Hive / SharedPreferences |
| 测试 | flutter_test, flutter_lints |

## 🔧 环境要求

- Flutter **3.44.x** 及以上(`flutter --version` 查看)
- Dart **3.12** 及以上
- Android Studio / Xcode(用于构建移动端)
- Git

## 🚀 快速开始

```bash
# 1. 克隆仓库
git clone https://github.com/<your-username>/poco_a_poco.git
cd poco_a_poco

# 2. 安装依赖
flutter pub get

# 3. 运行(连接设备或模拟器)
flutter run
```

> 国内网络环境下,可设置镜像加速依赖下载:
> ```bash
> export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
> export PUB_HOSTED_URL=https://pub.flutter-io.cn
> ```

## 📁 项目结构

```
poco_a_poco/
├── lib/                # Dart 源码
│   └── main.dart       # 应用入口
├── android/            # Android 原生工程
├── ios/                # iOS 原生工程
├── web/                # Web 工程
├── linux/              # Linux 桌面工程
├── macos/              # macOS 桌面工程
├── windows/            # Windows 桌面工程
├── test/               # 单元与 Widget 测试
├── pubspec.yaml        # 依赖与资源配置
└── LICENSE             # MIT 开源协议
```

## 🧪 测试

```bash
flutter test
```

## 🗺 路线图

- [x] 项目初始化与开源仓库搭建
- [ ] 基础页面框架与导航
- [ ] 词汇卡片模块
- [ ] 分级课程内容
- [ ] 学习数据统计
- [ ] 离线缓存

## 🤝 贡献

欢迎提交 Issue 与 Pull Request!请遵循:

1. Fork 本仓库
2. 创建特性分支(`git checkout -b feature/amazing-feature`)
3. 提交改动(`git commit -m 'Add amazing feature'`)
4. 推送分支(`git push origin feature/amazing-feature`)
5. 发起 Pull Request

## 📄 开源协议

本项目基于 [MIT License](LICENSE) 开源,可自由使用、修改与分发。
