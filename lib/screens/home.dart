import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sut_cepte_mobile_app/data/yem_api.dart';
import 'package:sut_cepte_mobile_app/screens/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final YemApi yemApi = YemApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      drawer: Drawer(
        child: DrawerMe(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo),
        backgroundColor: Colors.white,
        title: Text(
          "Ana Sayfa",
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      yemApi.getData(), // silinecek
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Mail",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              "Gönder",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "** Şifre gönderme işlemi 10-15 dakika sürebilmektedir. Lütfen mail hesabınızda gelen kutunuzu kontrol ediniz.",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
