import 'package:flutter/material.dart';

import 'config/env.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Env.load();
  runApp(const PocoAPocoApp());
}

/// Poco a Poco —— 循序渐进学西语
class PocoAPocoApp extends StatelessWidget {
  const PocoAPocoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poco a Poco',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC60B1E), // 西班牙红
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

/// 首页:欢迎语 + 课程列表
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lessons = <_Lesson>[
      _Lesson('A1', 'Saludos', '问候', '¡Hola! ¿Cómo estás?'),
      _Lesson('A1', 'Números', '数字', 'Uno, dos, tres...'),
      _Lesson('A2', 'La familia', '家庭', 'Mi familia es grande.'),
      _Lesson('A2', 'Comida y bebida', '饮食', 'Me gusta el café.'),
      _Lesson('B1', 'Viajes', '旅行', '¿Dónde está el hotel?'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Poco a Poco'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _GreetingCard(),
          const SizedBox(height: 16),
          Text(
            'Lecciones de hoy · 今日课程',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          ...lessons.map((l) => _LessonCard(lesson: l)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Lecciones',
          ),
          NavigationDestination(
            icon: Icon(Icons.style_outlined),
            selectedIcon: Icon(Icons.style),
            label: 'Tarjetas',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class _GreetingCard extends StatelessWidget {
  const _GreetingCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '¡Hola! 👋',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Bienvenido a Poco a Poco.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 4),
            Text(
              '一点一点地,学西语。坚持每天进步一点点!',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _Lesson {
  final String level;
  final String titleEs;
  final String titleZh;
  final String example;
  const _Lesson(this.level, this.titleEs, this.titleZh, this.example);
}

class _LessonCard extends StatelessWidget {
  final _Lesson lesson;
  const _LessonCard({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Text(lesson.level),
        ),
        title: Text(lesson.titleEs),
        subtitle: Text('${lesson.titleZh} · ${lesson.example}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Próximamente: ${lesson.titleEs}')),
          );
        },
      ),
    );
  }
}
