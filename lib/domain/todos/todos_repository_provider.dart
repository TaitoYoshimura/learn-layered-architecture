import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repository.dart';
import '../../domain/todos/todo.dart';

export 'todo.dart';

@riverpod
final todosRepositoryProvider =
Provider<Repository<Todo>>((_) => throw UnimplementedError());
