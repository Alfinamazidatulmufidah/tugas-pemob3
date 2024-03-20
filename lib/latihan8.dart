import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tuiterr'),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/162/2024/01/20/UPN-Jatim-1325604470.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 140.0,
                    child: ClipOval(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/id/thumb/1/12/Logo_UPN_Veteran_Jawa_Timur.png/300px-Logo_UPN_Veteran_Jawa_Timur.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    right: 20.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Follow'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UPN "Veteran" Jawa Timur',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(height: 4.0), // Decreased the gap between name and username
                  Text(
                    '@upnjatim',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(height: 10.0),
                  Text(
                    'The National Development University "Veteran" of East Java is a public university located in Surabaya, East Java, Indonesia which was established on July 5, 1959.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
