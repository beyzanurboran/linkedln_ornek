import 'package:flutter/material.dart';
import 'package:linkedln_ornek/widgets/constants.dart';
import 'package:linkedln_ornek/widgets/single_network_user.dart';

import '../../data/network_entity.dart';



class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {

  List<NetworkEntity> networkData = NetworkEntity.networkData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ağımı yönet",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xFF666666),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: Color(0xFF666666),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Davetiyeler",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xFF666666),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 8,
            color: Color(0xFF666666),
          ),
          const SizedBox(
            height: 15,
          ),
        Card(
          elevation: 3,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: kPrimaryGreyColor,
                    ),
                    child: Image.asset("images/arka_plan.jpeg", fit: BoxFit.cover,),
                  ),
                  const SizedBox(height: 60,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Beyzanur Boran", maxLines: 1, overflow: TextOverflow.fade,),
                  ),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Flutter Full Stack Dev", maxLines: 1, overflow: TextOverflow.ellipsis, style:  TextStyle(color: kPrimaryGreyColor),),
                  ),
                  const SizedBox(height: 5,),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.group),
                          SizedBox(width: 10,),
                          Expanded(child: Text("5 ortak arkadaş", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: kPrimaryGreyColor),),
                          )
                        ],
                      )
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text("Bağlantı kur", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kPrimaryColor),),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                      color: kPrimaryGreyColor,
                      shape: BoxShape.circle
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(60), child: Image.asset("images/profil.jpeg", fit: BoxFit.cover,),),
                ),
              )
            ],
          ),
        )
          /*GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: networkData.length,
              gridDelegate: const SilverGridDelegateWithFixedAxisCount(
                crossAxisCount:2,
                mainAxisSpacing:6,
                crossAxisSpacing:6,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                final network = networkData[index];
                return SingleNetworkUser(network: network);
              }
              )*/
        ]

      ),
    );
  }
}
