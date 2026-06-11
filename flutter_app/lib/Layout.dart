import 'package:flutter/material.dart';
import 'DemoStatefulWidget.dart';
import 'DemoStatelessWidget.dart';
import 'chat_screen.dart';
import 'ListSanpham.dart';

class Layout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Trangthai_Layout();
  }
}

class Trangthai_Layout extends State<Layout> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    ListSanpham(),
    DemoStatefulWidget(),
    ChatScreen()
  ];

  void ChonTrang(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
              "assets/images/Ten-truong-do-1000x159.png"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffed10a2),
          onTap: ChonTrang,
        ),
        body: _pages[_selectedIndex]);
  }
}
