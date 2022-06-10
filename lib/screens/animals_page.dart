import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sut_cepte_mobile_app/screens/drawer.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: DrawerMe()),
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
      body: Column(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Form(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Hayvan Adı Giriniz",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Adet Giriniz",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Ekle'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
