import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 241, 241, 241), // Atur warna latar belakang halaman
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 20,
            child: Column(
              children: [
                _topMenu(
                  title: 'Selamat Datang di Warmindo48',
                  subTitle: 'Silahkan pilih menu sesuai dengan seleramu',
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  color: Color.fromARGB(255, 241, 241,
                      241), // Atur warna latar belakang container
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _itemTab(
                        imagePath: 'assets/fonts/images/food.png',
                        title: 'Semua',
                        isActive: true,
                      ),
                      _itemTab(
                        imagePath: 'assets/fonts/images/food.png',
                        title: 'Makanan',
                        isActive: false,
                      ),
                      _itemTab(
                        imagePath: 'assets/fonts/images/food.png',
                        title: 'Camilan',
                        isActive: false,
                      ),
                      _itemTab(
                        imagePath: 'assets/fonts/images/food.png',
                        title: 'Minuman',
                        isActive: false,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 5,
                    childAspectRatio: (1 / 1.2),
                    children: [
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String title,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 18, 18, 18),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Color.fromARGB(255, 160, 158, 158),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              _Pesanan(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 101, 196, 102),
              padding: const EdgeInsets.symmetric(horizontal: 80),
              alignment: Alignment.center,
            ),
            child: Text(
              "Pesan",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemTab(
      {required String imagePath,
      required String title,
      required bool isActive}) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 26),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive
            ? Color.fromARGB(255, 255, 81, 92)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(
                right: 8), // Sesuaikan jarak sesuai kebutuhan
            child: Image.asset(
              imagePath,
              color: isActive
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Color.fromARGB(255, 18, 18, 18),
              height: 20,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: isActive
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Color.fromARGB(255, 18, 18, 18),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _topMenu({
    required String title,
    required String subTitle,
  }) {
    return Container(
      color: Color.fromARGB(
          255, 241, 241, 241), // Atur warna latar belakang container
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color.fromARGB(
                      255, 3, 61, 158), // Ubah warna teks sesuai kebutuhan
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FontGitaluevo',
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Color.fromARGB(
                      255, 18, 18, 18), // Ubah warna teks sesuai kebutuhan
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Expanded(flex: 1, child: Container(width: double.infinity)),
        ],
      ),
    );
  }

  void _Pesanan(context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Tambah Pengguna",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Nama Lengkap",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: new TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: new InputDecoration(
                  hintText: "Input nama lengkap",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(3.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Kontak",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                style: new TextStyle(
                    fontSize: 14.0, height: 1.0, color: Colors.black),
                decoration: new InputDecoration(
                  hintText: "Input kontak",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(3.0)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: MaterialButton(
                color: Colors.blue,
                child: Text(
                  "SIMPAN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        );
      },
    );
  }
}
