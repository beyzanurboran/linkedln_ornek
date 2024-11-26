import 'package:flutter/material.dart';
import 'post_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? con;

  @override
  void initState() {
    con = TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Kullanıcı fotoğrafı.
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ara',
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: TabBar(
          controller: con,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          tabs: const [
            Tab(icon: Icon(Icons.home_outlined), text: 'Ana Sayfa'),
            Tab(icon: Icon(Icons.network_cell), text: 'Ağım'),
            Tab(icon: Icon(Icons.post_add), text: 'Gönder'),
            Tab(icon: Icon(Icons.notifications), text: 'Bildirimler'),
            Tab(icon: Icon(Icons.settings), text: 'İş İlanları'),

          ],
        ),
      ),
      body: TabBarView(
        controller: con,
        physics: const NeverScrollableScrollPhysics(), // Kullanıcının yatay kaydırmasını engeller
        children: <Widget>[
          PostScreen(),                     // Ana Sayfa (1. sekme) PostScreen içeriğini gösterir.
          Center(child: Text('Ağım')),
          Center(child: Text('Gönder')),
          Center(child: Text('Bildirimler')),
          Center(child: Text('İş İlanları')),

        ],
      ),
    );
  }
}
