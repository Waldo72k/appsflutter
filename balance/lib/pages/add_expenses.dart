import 'package:balance/models/combined_model.dart';
import 'package:balance/utils/constants.dart';
import 'package:balance/widgets/add_expenses_wt/bs_num_keyboard.dart';
import 'package:balance/widgets/add_expenses_wt/comment_box.dart';
import 'package:flutter/material.dart';

class AddExpenses extends StatelessWidget {
  CombinedModel combinedModel = CombinedModel();
  // const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Gasto"),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(7),
                child: BSNumKeyboard(),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: Constants.sheetBoxDecoration(
                    Theme.of(context).primaryColorDark,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Fecha 22 de marzo de 2023"),
                      const Text("Seleccionar categoria"),
                      CommentBox(
                        combinedModel: combinedModel,
                      ),
                      Expanded(
                          child: Center(
                              child: GestureDetector(
                                  onTap: () {
                                    print(combinedModel.comment);
                                  },
                                  child: Text("Boton")))),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
