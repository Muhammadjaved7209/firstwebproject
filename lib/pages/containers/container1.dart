import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterwebfirstproject/utils/colors.dart';
import 'package:flutterwebfirstproject/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) {
        return desktopContainer1();
      },
      mobile: (BuildContext context) {
        return desktopContainer1();
      },
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track your \nExpenses to \nSave Money",
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Helps you to organize your income and expense",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.primary)),
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down),
                            label: const Text("Try free Demo")),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "- Web ,Ios and Android",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(illustration1))),
          ))
        ],
      ),
    );
  }

  Widget mobileContainer1() {
    return Container(
      //  margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track your \nExpenses to \nSave Money",
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Helps you to organize your income and expense",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.primary)),
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down),
                            label: const Text("Try free Demo")),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "- Web ,Ios and Android",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(illustration1))),
          ))
        ],
      ),
    );
  }
}
