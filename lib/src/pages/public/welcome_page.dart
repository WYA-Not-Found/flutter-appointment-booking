import 'package:appointment_booking/src/colors.dart';
import 'package:appointment_booking/src/pages/public/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void onNavigateHomePage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [pColor.withOpacity(0.8), pColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            child: Image.asset('images/doctors.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Doctor Online',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Appoint Your Doctor',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 40),
          Material(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                onNavigateHomePage(context);
              },
              child: Container(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 40, right: 40),
                child: const Text("Let's go",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: pColor)),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Image.asset(
            'images/lined heart.png',
            color: wColor,
            height: 130,
          )
        ]),
      ),
    );
  }
}
