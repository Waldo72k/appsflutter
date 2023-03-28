import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(17.2),
      child: Row(
        children: [
          const Icon(
            Icons.sticky_note_2,
            size: 27,
          ),
          const SizedBox(
            width: 7,
          ),
          Expanded(
              child: TextFormField(
                  cursorColor: Colors.green,
                  keyboardType: TextInputType.text,
                  maxLength: 17,
                  decoration: InputDecoration(
                    hintText: "Agrega un comentario (opcional)",
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27),
                        borderSide: const BorderSide(color: Colors.green)),
                    prefix: const Text("  "),
                  )))
        ],
      ),
    );
  }
}
