import 'package:flutter/material.dart';
import './dashboard.dart';

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
  String pageActive = 'Dashboard';

  _pageView() {
    switch (pageActive) {
      case 'Dashboard':
        return const HomePage();
      case 'Pesanan':
        return Container();
      case 'Antrian':
        return Container();
      case 'Login Akun':
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
      backgroundColor: Colors.white,
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
              padding: const EdgeInsets.only(
                right: 12,
                left: 32,
                top: 18,
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
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
        const SizedBox(height: 16),
        Expanded(
          child: ListView(
            children: [
              _itemMenu(
                menu: 'Dashboard',
                imagePath: 'assets/fonts/images/shop.png',
              ),
              _itemMenu(
                menu: 'Pesanan',
                imagePath: 'assets/fonts/images/cart.png',
              ),
              _itemMenu(
                menu: 'Antrian',
                imagePath: 'assets/fonts/images/stack.png',
              ),
              _itemMenu(
                menu: 'Login Akun',
                imagePath: 'assets/fonts/images/admin.png',
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
          Transform.scale(
            scale: 3.0,
            child: Image.asset('assets/fonts/images/logo.png'),
          ),
        ],
      ),
    );
  }

  Widget _itemMenu({
    required String menu,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
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
                child: Transform.scale(
                  scale: 0.9,
                  child: Image.asset(
                    imagePath,
                    color: pageActive == menu ? Color(0xFFFFA825) : Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(top: 2),
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
