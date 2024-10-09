import 'package:bwa_cozy/models/navbar.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  //const BottomNavbarItem({super.key});

  final Navbar navbar;

  const BottomNavbarItem(this.navbar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          navbar.imageUrl,
          width: 26,
        ),
        Spacer(),
        navbar.isAcyive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container()
      ],
    );
  }
}
