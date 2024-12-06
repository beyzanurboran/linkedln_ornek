import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> posts = [
      {
        "user": "Ali Yılmaz",
        "profilePic": "https://via.placeholder.com/150",
        "content":
        "Yapay zeka günümüzde hızlı bir şekilde ilerliyor. ChatGPT gibi modeller doğal dil işleme konusunda büyük bir devrim yaptı."
      },
      {
        "user": "Ayşe Demir",
        "profilePic": "https://via.placeholder.com/150",
        "content":
        "Blockchain teknolojisi yalnızca kripto para ile sınırlı değil. Sağlık, lojistik ve finans sektörlerinde devrim yaratabilir."
      },
      {
        "user": "Mehmet Çelik",
        "profilePic": "https://via.placeholder.com/150",
        "content":
        "Mobil uygulama geliştirme dünyası her geçen gün değişiyor. Flutter ve React Native, çapraz platform geliştirme için popüler hale geldi."
      },
      {
        "user": "Elif Kaya",
        "profilePic": "https://via.placeholder.com/150",
        "content":
        "Bulut bilişim, verilerin depolanması ve işlenmesi için en uygun yöntemlerden biri. AWS, Google Cloud ve Azure lider platformlar arasında."
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        final post = posts[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(post["profilePic"]!),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      post["user"]!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  post["content"]!,
                  style:
                  const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
