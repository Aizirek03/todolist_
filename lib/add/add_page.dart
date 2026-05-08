import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        elevation: 0,

        backgroundColor: const Color(0xFFF2F2F7),

        title: const Text(
          "Новая задача",

          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          children: [

            TextField(

              controller: controller,

              decoration: InputDecoration(

                hintText: "введите название задачи",

                filled: true,

                fillColor: Colors.white,

                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),

                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),

            const Spacer(),

            SizedBox(

              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: const Color(0xFF007AFF),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                onPressed: _saveTodo,

                child: const Text(

                  "Сохранить",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveTodo() {

    Navigator.pop(
      context,
      controller.text,
    );
  }

  @override
  void dispose() {

    controller.dispose();

    super.dispose();
  }
}