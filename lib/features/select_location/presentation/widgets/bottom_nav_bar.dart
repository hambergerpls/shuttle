import 'package:flutter/material.dart';
import 'package:shuttle/features/select_location/presentation/pages/map_screen.dart';
import 'package:shuttle/features/select_location/presentation/pages/profile_screen.dart';
import 'package:shuttle/features/select_location/presentation/pages/wallet_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screen = [MapScreen(), WalletScreen(), ProfileScreen()];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Color.fromARGB(255, 198, 215, 161),
        // backgroundColor: Color.fromARGB(255, 179, 196, 149),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_bus_outlined,
              color: _selectedIndex == 0
                  ? Color.fromARGB(255, 198, 215, 161)
                  : Colors.black,
            ),
            label: 'Transport',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on_outlined,
              color: _selectedIndex == 1
                  ? Color.fromARGB(255, 198, 215, 161)
                  : Colors.black,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: _selectedIndex == 2
                  ? Color.fromARGB(255, 198, 215, 161)
                  : Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



// // ignore: camel_case_types
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.directions_bus),
//             label: 'Bus',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.wallet),
//             label: 'Wallet',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle_outlined),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         // ignore: prefer_const_constructors
//         selectedItemColor: Color.fromARGB(255, 198, 215, 161),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
