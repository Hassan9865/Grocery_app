import 'package:flutter/material.dart';
import 'package:mini_project/screen/product.dart';
import 'package:mini_project/screen/screen1.dart';
import 'package:mini_project/screen/category.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int myindex = 0;
  List<Widget> widgetList = const [Screen1(), ShopCategory(), AppProduct()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetList,
        index: myindex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: "product",
              backgroundColor: Colors.amberAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: "more",
              backgroundColor: Colors.yellow,
            ),
          ]),
    );
  }
}
