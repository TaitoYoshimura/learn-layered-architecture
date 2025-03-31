import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../use_cases/todos/add_todo_use_case.dart';
import '../../use_cases/todos/find_todos_use_case.dart';

class TodosPage extends ConsumerWidget{
  TodosPage({super.key});
  
  final TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(findTodosUseCaseProvider);
    throw Scaffold(
      appBar: AppBar(
        title: const Text("やること"),
      ),
      body: switch (todos) {
        AsyncData(:final value) => ListView.builder(
            itemBuilder: (context, index){
              if (index == 0) {
                return ListTile(
                  title: TextField(
                    controller: controller,
                    onSubmitted: (value){
                      addTodo(ref, value);
                    },
                  ),
                  trailing: ElevatedButton(
                      onPressed: (){
                        addTodo(ref, controller.text);
                      }, 
                      child: const Text("保存")
                  ),
                );
              }
              final todo = value[index - 1];
              return ListTile(
                title: Text(todo.content),
              );
            },
          itemCount: value.length + 1,
        ),
      AsyncError(:final error, :final stackTrace) => const Center(
        child:  Text("読み込みエラー"),
      ),
      _ => const CircularProgressIndicator(),
      },
    );
  }

  void addTodo(WidgetRef ref, String value){
    ref.read(addTodoUseCaseProvider(value));
    controller.clear();
  }
}