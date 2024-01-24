import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warmindo48',
      theme: ThemeData(
        fontFamily: 'FontPoppins',
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String pageActive = 'Home';

  _pageView() {
    switch (pageActive) {
      case 'Home':
        return const HomePage();
      case 'Menu':
        return Container();
      case 'History':
        return Container();
      case 'Promos':
        return Container();
      case 'Settings':
        return Container();
      default:
        return const HomePage();
    }
  }

  _setPage(String page, {bool initial = false}) {
    setState(() {
      pageActive = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      body: Row(
        children: [
          Container(
            width: 70,
            padding: const EdgeInsets.only(top: 24, right: 12, left: 12),
            height: MediaQuery.of(context).size.height,
            child: _sideMenu(),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 24, right: 12),
              padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Color(0xff17181f),
              ),
              child: _pageView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sideMenu() {
    return Column(
      children: [
        _logo(),
        const SizedBox(height: 20),
        Expanded(
          child: ListView(
            children: [
              _itemMenu(
                menu: 'Dashboard',
                icon: Icons.home,
              ),
              _itemMenu(
                menu: 'Pesanan',
                icon: Icons.shopping_cart,
              ),
              _itemMenu(
                menu: 'Antrian',
                icon: Icons.stacked_bar_chart,
              ),
              _itemMenu(
                menu: 'Login Akun',
                icon: Icons.person,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _logo() {
    return Container(
      padding: const EdgeInsets.all(16), // Adjust padding as needed
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Align the column content in the center
        children: [
          Image.asset('assets/fonts/images/logo.png'),
        ],
      ),
    );
  }

  Widget _itemMenu({required String menu, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: GestureDetector(
        onTap: () => _setPage(menu),
        child: Container(
          constraints: BoxConstraints(maxHeight: 80),
          width: 38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: pageActive == menu
                      ? Color(0xFFFFD88D)
                      : Colors.transparent,
                ),
                child: Icon(
                  icon,
                  color: pageActive == menu ? Color(0xFFFFA825) : Colors.grey,
                  size: 27,
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  menu,
                  style: TextStyle(
                    color: pageActive == menu ? Color(0xFFFFA825) : Colors.grey,
                    fontSize: 7,
                    fontWeight: pageActive == menu
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
