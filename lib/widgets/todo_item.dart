import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {

  final String title;

  const TodoItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(bottom: 16),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(

        color: const Color(0xFF007AFF),

        borderRadius: BorderRadius.circular(14),
      ),

      child: Row(

        children: [

          Container(

            width: 28,
            height: 28,

            decoration: BoxDecoration(

              color: Colors.white,

              borderRadius: BorderRadius.circular(6),
            ),

            child: const Icon(
              Icons.check,
              size: 18,
              color: Colors.black,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(

            child: Text(

              title,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),

          const Icon(
            Icons.calendar_today,
            size: 14,
            color: Colors.white70,
          ),

          const SizedBox(width: 4),

          const Text(

            "14.09.26",

            style: TextStyle(
              color: Colors.white70,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}