import 'package:balance/models/combined_model.dart';
import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  final CombinedModel combinedModel;

  const CommentBox({super.key, required this.combinedModel});

  @override
  Widget build(BuildContext context) {
    String _text = '';
    _text = combinedModel.comment;

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
            initialValue: _text,
            cursorColor: Colors.green,
            keyboardType: TextInputType.text,
            maxLength: 17,
            decoration: InputDecoration(
              hintText: "Agrega un comentario (opcional)",
              hintStyle: const TextStyle(fontSize: 12),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(27)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: const BorderSide(color: Colors.green)),
              prefix: const Text("  "),
            ),
            onChanged: (texto) {
              combinedModel.comment = texto;
            },
          ))
        ],
      ),
    );
  }
}
