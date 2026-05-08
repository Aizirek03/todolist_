import 'package:flutter/material.dart';
import 'package:todolist_/add/add_page.dart';
import 'package:todolist_/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> todos = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        elevation: 0,

        backgroundColor: const Color(0xFFF2F2F7),

        centerTitle: true,

        title: const Text(
          "Мои задачи",

          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: Padding(

        padding: const EdgeInsets.all(16),

        child: ListView.builder(

          itemCount: todos.length,

          itemBuilder: (context, index) {

            return TodoItem(
              title: todos[index],
            );
          },
        ),
      ),

      bottomNavigationBar: Padding(

        padding: const EdgeInsets.all(16),

        child: SizedBox(

          height: 55,

          child: ElevatedButton(

            style: ElevatedButton.styleFrom(

              backgroundColor: const Color(0xFF007AFF),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),

            onPressed: _navigateToAddPage,

            child: const Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.add, color: Colors.white),

                SizedBox(width: 8),

                Text(
                  "Добавить задачу",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToAddPage() async {

    final result = await Navigator.push(

      context,

      MaterialPageRoute(
        builder: (_) => const AddPage(),
      ),
    );

    if (result != null && result.toString().trim().isNotEmpty) {

      setState(() {

        todos.insert(0, result);
      });
    }
  }
}