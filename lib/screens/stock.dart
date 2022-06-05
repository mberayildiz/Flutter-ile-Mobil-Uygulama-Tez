import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sut_cepte_mobile_app/screens/drawer.dart';
import 'package:sut_cepte_mobile_app/screens/stockcard.dart';

class Stock extends StatefulWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  List<String> imgUrl = [
    "https://w7.pngwing.com/pngs/762/162/png-transparent-straw-straw-bales-isolated-agriculture-harvest-field-straw-role-thumbnail.png",
    "https://cdn.dsmcdn.com/ty69/product/media/images/20210216/14/63315627/71786884/1/1_org_zoom.jpg",
    "https://w7.pngwing.com/pngs/380/930/png-transparent-leaf-border-leaf-leaves-beach-food-branch.png",
    "https://w7.pngwing.com/pngs/380/930/png-transparent-leaf-border-leaf-leaves-beach-food-branch.png",
    "https://cdn.dsmcdn.com/ty69/product/media/images/20210216/14/63315627/71786884/1/1_org_zoom.jpg",
    "https://cdn.dsmcdn.com/ty69/product/media/images/20210216/14/63315627/71786884/1/1_org_zoom.jpg",
  ];
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
          "Yemler",
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
              "Stok Yönetimi",
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
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Ara... ",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                  stockCard(imgUrl[0], "Saman", "33"),
                  stockCard(imgUrl[1], "Kuru Yonca", "14"),
                  stockCard(imgUrl[2], "Mısır Silajı", "22"),
                  stockCard(imgUrl[3], "Yaprak", "411"),
                  stockCard(imgUrl[4], "Yem", "110.4"),
                  stockCard(imgUrl[5], "Yem", "9924.2"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
