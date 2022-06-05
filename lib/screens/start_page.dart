import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sut_cepte_mobile_app/screens/home.dart';
import 'package:sut_cepte_mobile_app/screens/login.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  final String _animaName = "assets/animationJson/milk.json";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animationController.forward();

    Future.delayed(Duration(seconds: 4)).then((value) {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Login(),
          ));
        } else {
          if (user.emailVerified) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Home(),
            ));
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.indigo,
                Colors.blue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                // Logo gelecek
                size: 90,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Süt Cepte',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Animasyon Gelecek
              Lottie.asset(_animaName,
                  controller: _animationController,
                  height: 220, onLoaded: (composed) {
                _animationController.duration = composed.duration;
              }),
            ],
          ),
        ),
      ),
    );
  }
}
