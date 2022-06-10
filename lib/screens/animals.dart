import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sut_cepte_mobile_app/screens/animalcard.dart';
import 'package:sut_cepte_mobile_app/screens/drawer.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  State<Animals> createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  List<String> imgUrl = [
    "https://e7.pngegg.com/pngimages/351/993/png-clipart-cow-cow.png",
    "https://e7.pngegg.com/pngimages/351/883/png-clipart-cow-cow.png",
    "https://w7.pngwing.com/pngs/445/56/png-transparent-dairy-cattle-calf-ox-bull-animal-oil-cow-goat-family-snout-ox.png",
    "https://w7.pngwing.com/pngs/208/719/png-transparent-sheep-goat-sheep-image-file-formats-animals-cow-goat-family-thumbnail.png",
    "https://w7.pngwing.com/pngs/1005/629/png-transparent-sheep-rove-goat-sheep-animals-cow-goat-family-sheep.png",
    "https://w7.pngwing.com/pngs/862/145/png-transparent-chicken-as-food-broiler-poultry-hen-chicken.png",
  ];
  List<String> animAd = ["Sığır", "İnek", "Buzağı", "Koyun", "Keçi", "Tavuk"];
  List<int> animAdet = [0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerMe(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo),
        backgroundColor: Colors.white,
        title: Text(
          "Hayvanlar",
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hayvan Yönetimi",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: [
                  animalCard(imgUrl[0], animAd[0], animAdet[0], context),
                  animalCard(imgUrl[1], animAd[1], animAdet[1], context),
                  animalCard(imgUrl[2], animAd[2], animAdet[2], context),
                  animalCard(imgUrl[3], animAd[3], animAdet[3], context),
                  animalCard(imgUrl[4], animAd[4], animAdet[4], context),
                  animalCard(imgUrl[5], animAd[5], animAdet[5], context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
