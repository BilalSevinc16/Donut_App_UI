import 'package:donut_app_ui/tab/burger_tab.dart';
import 'package:donut_app_ui/tab/donut_tab.dart';
import 'package:donut_app_ui/tab/pancake_tab.dart';
import 'package:donut_app_ui/tab/pizza_tab.dart';
import 'package:donut_app_ui/tab/smoothie_tab.dart';
import 'package:donut_app_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'icons/donut.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'icons/burger.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'icons/smoothie.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'icons/pancakes.png',
    ),

    // pizza tab
    MyTab(
      iconPath: 'icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade800,
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to eat',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const Text(
                    ' EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  const BurgerTab(),

                  // smoothie page
                  const SmoothieTab(),

                  // pancake page
                  const PancakeTab(),

                  // pizza page
                  const PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
