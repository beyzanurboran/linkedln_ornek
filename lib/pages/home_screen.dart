import 'package:flutter/material.dart';
import 'package:linkedln_ornek/pages/Home%20Pages/Post_screen_1.dart';
import 'package:linkedln_ornek/pages/Home%20Pages/network_page.dart';
import 'post_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
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
              child:
              Image.asset("images/profil.jpeg"),
              radius: 20, // Kullanıcı fotoğrafı
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
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                // Mesaj Kutusu İşlemi
              },
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
          controller: _tabController,
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
        controller: _tabController,
        children: const [
          PostScreen(), // Kaydırma bu ekranda sağlanır.
          NetworkPage(),
          PostScreen1(),
          Center(child: Text('Bildirimler')),
          Center(child: Text('İş İlanları')),
        ],
      ),
    );
  }
}
