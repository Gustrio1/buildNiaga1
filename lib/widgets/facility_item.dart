import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  //  FacilityItem({super.key});

  final String nama;
  final String imageUrl;
  final int total;

  // ignore: prefer_const_constructors_in_immutables
  FacilityItem(
      {required this.nama,
      required this.imageUrl,
      required this.total,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: "$total",
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(text: nama, style: greyTextStyle.copyWith(fontSize: 14))
            ])),
      ],
    );
  }
}
