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
            flex: 14,
            child: Column(
              children: [
                _topMenu(
                  title: 'Selamat Datang di Warmindo48',
                  subTitle: 'Silahkan pilih menu sesuai dengan seleramu',
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  color: Colors.white, // Atur warna latar belakang container
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _itemTab(
                        title: 'Burger',
                        isActive: true,
                      ),
                      _itemTab(
                        title: 'Noodles',
                        isActive: false,
                      ),
                      _itemTab(
                        title: 'Drinks',
                        isActive: false,
                      ),
                      _itemTab(
                        title: 'Desserts',
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
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Original Burger',
                        price: '\$5.99',
                        box: 'Pesan',
                      ),
                      _item(
                        title: 'Double Burger',
                        price: '\$10.99',
                        box: 'Pesan',
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
    required String box,
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
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Color.fromARGB(255, 204, 204, 204),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                box,
                style: const TextStyle(
                  color: Color.fromARGB(255, 204, 204, 204),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemTab({required String title, required bool isActive}) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 26),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive
            ? Color.fromARGB(255, 255, 81, 92)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
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
      color: Colors.white, // Atur warna latar belakang container
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
                  color: Colors.black, // Ubah warna teks sesuai kebutuhan
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Colors.black54, // Ubah warna teks sesuai kebutuhan
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Expanded(flex: 1, child: Container(width: double.infinity)),
        ],
      ),
    );
  }
}
