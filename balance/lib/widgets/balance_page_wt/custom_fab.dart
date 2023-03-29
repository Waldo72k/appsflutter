import 'package:balance/pages/add_expenses.dart';
import 'package:balance/widgets/balance_page_wt/custom_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    List<SpeedDialChild> botones = [];

    //boton para agregar gasto
    botones.add(SpeedDialChild(
      backgroundColor: Colors.red,
      child: const Icon(Icons.remove),
      label: "Gasto",
      onTap: () {
        Navigator.push(
            context,
            CustomAnimation(
              page: AddExpenses(),
              duration: const Duration(milliseconds: 720),
              curve: Curves.easeOutBack,
            ));
        // PageRouteBuilder(
        //     transitionDuration: const Duration(milliseconds: 500),
        //     transitionsBuilder: (
        //       //puedes hoverear el mouse encima de las propiedades para ver lo que necesita
        //       BuildContext context,
        //       Animation<double> animation,
        //       Animation<double> secAnimation,
        //       Widget child,
        //     ) {
        //       animation = CurvedAnimation(
        //           parent: animation, curve: Curves.easeOutBack);
        //       return ScaleTransition(
        //         alignment: const Alignment(0.7, 1),
        //         scale: animation,
        //         child: child,
        //       );
        //     },
        //     pageBuilder: (
        //       BuildContext context,
        //       Animation<double> animation,
        //       Animation<double> secAnimation,
        //     ) {
        //       return const AddExpenses();
        //     })); //hay que hacerlo con un pagebuilder
      },
    ));

    //boton para agregar ingreso
    botones.add(SpeedDialChild(
      labelStyle: const TextStyle(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.green,
      child: const Icon(Icons.add),
      label: "Ingreso",
      onTap: () {
        Navigator.pushNamed(context, 'addEntries');
      },
    ));

    return SpeedDial(
      icon: Icons.add,
      activeIcon: Icons.close,
      children: botones,
      childMargin: const EdgeInsets.symmetric(horizontal: 7),
      childrenButtonSize: const Size(62, 62),
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    );
  }
}
