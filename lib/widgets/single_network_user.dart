import 'package:flutter/material.dart';
import 'package:linkedln_ornek/data/network_entity.dart';

import 'constants.dart';


class SingleNetworkUser extends StatefulWidget {
  const SingleNetworkUser({super.key});

  @override
  State<SingleNetworkUser> createState() => _SingleNetworkUserState();
}

class _SingleNetworkUserState extends State<SingleNetworkUser> {
  @override
  Widget build(BuildContext context) {
    return
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
      );
  }
}
