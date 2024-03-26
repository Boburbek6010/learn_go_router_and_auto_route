import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router_and_auto_route/pages/second_page.dart';
import 'package:learn_go_router_and_auto_route/pages/third_page.dart';

import 'first_page.dart';

class MainPage extends StatefulWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;
  PageController controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("ShellRoute"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          if(index == 1){
            context.go("/second_page");
          }else if(index == 2){
            context.go("/third_page");
          }else{
            context.go("/first_page");
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: "First",
            icon: Icon(Icons.confirmation_num_sharp),
          ),
          BottomNavigationBarItem(
            label: "Second",
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            label: "Third",
            icon: Icon(Icons.ac_unit),
          ),
        ],
      ),
    );
  }
}
