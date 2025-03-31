import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/todos/todos_repository_provider.dart';
import '../../use_cases/todos/find_todos_use_case.dart';

part 'add_todo_use_case.g.dart';

@riverpod
Future<void> addTodoUseCase(AddTodoUseCaseRef ref, String content) async {
  await ref.read(todosRepositoryProvider).add(Todo(content));
  ref.invalidate(findTodosUseCaseProvider);
}