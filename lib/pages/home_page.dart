import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [

    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.blue[200],
                ),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             children: [
               // logo
               Image.asset(
                 'lib/images/logo.png',
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Divider(
                   color: Colors.blue[200],
                 ),
               ),

               // other pages
               Padding(
                 padding: const EdgeInsets.only(left: 25.0),
                 child: ListTile(
                   leading: Icon(
                     Icons.home,
                     color: Colors.blue[200],
                   ),
                   title: Text(
                     'Home',
                     style: TextStyle(color: Colors.blue[200],),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 25.0),
                 child: ListTile(
                   leading: Icon(
                     Icons.info,
                     color: Colors.blue[200],
                   ),
                   title: Text(
                     'About',
                     style: TextStyle(color: Colors.blue[200],),
                   ),
                 ),
               ),
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue[200],
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.blue[200],),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
