import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/todos/todos_repository_provider.dart';

part 'find_todos_use_case.g.dart';

@riverpod
Future<List<Todo>> findTodosUseCase(FindTodosUseCaseRef ref) async {
  return ref.read(todosRepositoryProvider).findAll();
}