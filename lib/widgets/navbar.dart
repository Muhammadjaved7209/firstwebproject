import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterwebfirstproject/utils/colors.dart';
import 'package:flutterwebfirstproject/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return mobileNavBar();
      },
      desktop: (BuildContext context) {
        return desktopNavBar();
      },
      tablet: null,
      watch: null,
    );
  }


     //======Mobile======
  Widget mobileNavBar() {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(Icons.menu),
        navLogo(),
      ]),
    );
  }
   
   //======Desktop======
  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        navLogo(),
        Row(
          children: [
            navButton("Features"),
            navButton("About us"),
            navButton("Pricing"),
            navButton("FeedBack"),
          ],
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton(
            style: borderedButtonStyle,
            onPressed: () {},
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        )
      ]),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Image.asset(
      "assets/images/logo.png",
      height: 100,
    );
  }
}
