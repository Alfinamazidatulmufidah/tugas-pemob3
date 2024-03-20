import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab - Tab'),
            backgroundColor: Colors.blue, // Menambahkan warna pada navigasi bar
            bottom: const TabBar(
              labelColor: Colors.white,
              tabs: [Tab(text: "For You"), Tab(text: "Following")],
            ),
          ),
          body: const TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  const ForYouTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 6, // Ganti dengan jumlah item yang sesuai
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                child: FlutterLogo(size: 35,), // Menggunakan FlutterLogo sebagai icon default
              ),
              title: Text('Data ke $index'),
            ),
          );
        },
      ),
    );
  }
}

class FollowingTab extends StatelessWidget {
  const FollowingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildItem(
                itemName: "    Sertifikat",
                imageUrl: 'img/sertif.png',
              ),
              _buildItem(
                itemName: "Hasil Tes",
                imageUrl: 'img/tes.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildItem(
                itemName: "EHAC",
                imageUrl: 'img/ehac.png',
              ),
              _buildItem(
                itemName: "Lainnya",
                imageUrl: 'img/other.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItem({required String itemName, required String imageUrl}) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            itemName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
