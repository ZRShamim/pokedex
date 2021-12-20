import 'package:flutter/material.dart';
import 'package:pokedex/constant/colors.dart';
import 'package:pokedex/view/pages/home_page/widgets/grid_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      backgroundColor: white,
      body: Column(
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pokedex',
                style: TextStyle(fontSize: 30),
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridLayout()
          ),
        ],
      ),
    );
  }
}
