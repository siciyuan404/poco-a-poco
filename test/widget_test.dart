// Poco a Poco 基础 Widget 测试
import 'package:flutter_test/flutter_test.dart';

import 'package:poco_a_poco/main.dart';

void main() {
  testWidgets('首页展示问候语与首个课程', (WidgetTester tester) async {
    await tester.pumpWidget(const PocoAPocoApp());

    // 应用标题
    expect(find.text('Poco a Poco'), findsWidgets);
    // 欢迎语
    expect(find.text('¡Hola! 👋'), findsOneWidget);
    // 首个课程(可见于默认视口)
    expect(find.text('Saludos'), findsOneWidget);
  });
}
