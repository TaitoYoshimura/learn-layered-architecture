import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'domain/todos/todos_repository_provider.dart';
import 'user_interfaces/todos/todos_page.dart';

import 'domain/todos/mock_todos_repository.dart';
import 'domain/todos/shared_preferences_todos_repository.dart';

void main() {
  runApp(
    ProviderScope(
      // 依存性の注入
      overrides: [
        todosRepositoryProvider
            .overrideWithValue(SharedPreferencesTodosRepository()),
        // todosRepositoryProvider.overrideWithValue(MockTodosRepository()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TodosPage(),
    );
  }
}