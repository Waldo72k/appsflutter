import 'dart:math';

import 'package:balance/widgets/balance_page_wt/back_sheet.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  final _scrollController = ScrollController();
  double _desplazamiento = 0;

  void _escucha() {
    setState(() {
      _desplazamiento = _scrollController.offset / 100;
      print(_max);
    });
  }

  double get _max => max(90 - _desplazamiento * 90, 0.0);

  @override
  void dispose() {
    _scrollController.removeListener(_escucha);
    _scrollController.dispose();
    super.dispose();
  }

  void initState() {
    _scrollController.addListener(_escucha);
    //El listener se encarga de escuchar variables, funciones, movimientos...
    _max;
    super.initState();
  }

  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$ 2,500.00',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Balance',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            // const SizedBox( //algo asi para mover el sliver en andorid hue
            //   height: 800,
            // )
            Stack(
              //Aqui ponemos una lista de Widgets
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const BackSheet(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _max),
                  child: Container(
                    height: 800,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ))
      ],
    );
  }
}
