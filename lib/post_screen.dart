import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      "user": "Ali Yılmaz",
      "profilePic": "https://via.placeholder.com/150",
      "content":
      "Yapay zeka günümüzde hızlı bir şekilde ilerliyor. ChatGPT gibi modeller doğal dil işleme konusunda büyük bir devrim yaptı. Derin öğrenme algoritmaları daha da güçleniyor. Makine öğrenimi, veri analitiğinde çığır açıyor. Teknolojiyi doğru kullanırsak inanılmaz fırsatlar yaratabiliriz. Ancak etik sorulara da dikkat etmeliyiz."
    },
    {
      "user": "Ayşe Demir",
      "profilePic": "https://via.placeholder.com/150",
      "content":
      "Blockchain teknolojisi yalnızca kripto para ile sınırlı değil. Sağlık, lojistik ve finans sektörlerinde devrim yaratabilir. Akıllı kontratlar, işlemleri daha güvenilir ve hızlı hale getiriyor. Merkeziyetsizlik, güveni artıran bir faktör. Ancak enerji tüketimi halen önemli bir sorun. Çevre dostu çözümler geliştirmek şart."
    },
    {
      "user": "Mehmet Çelik",
      "profilePic": "https://via.placeholder.com/150",
      "content":
      "Mobil uygulama geliştirme dünyası her geçen gün değişiyor. Flutter ve React Native, çapraz platform geliştirme için popüler hale geldi. Performans, kullanıcı deneyimi açısından önemli bir unsur. Yerel uygulamalar halen güçlü bir alternatif. Kullanıcı dostu tasarımlar rekabette fark yaratıyor. Teknolojik yenilikleri takip etmek kritik."
    },
    {
      "user": "Elif Kaya",
      "profilePic": "https://via.placeholder.com/150",
      "content":
      "Bulut bilişim, verilerin depolanması ve işlenmesi için en uygun yöntemlerden biri. AWS, Google Cloud ve Azure, lider platformlar arasında. Bulut teknolojileri sayesinde işletmeler daha hızlı büyüyebiliyor. Ancak veri güvenliği her zaman ön planda olmalı. Hibrit bulut çözümleri giderek daha yaygın hale geliyor. Gelecekte daha fazlasını göreceğiz."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: posts.length,
      itemBuilder: (context, index) {
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
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
