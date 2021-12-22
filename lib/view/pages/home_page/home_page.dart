import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:pokedex/constant/colors.dart';
import 'package:pokedex/constant/theme/text_theme.dart';
import 'package:pokedex/constant/theme/theme.dart';
import 'package:pokedex/view/pages/home_page/widgets/grid_layout.dart';

class HomePage extends StatelessWidget {
  var darkTheme = 0.obs;
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Pokedex',
          // style: CustomTextThemes().title
          
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(Themes().lightTheme);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(Themes().darkTheme);
                          },
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.grey);
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: GridLayout(),
      ),
    );
  }
}
