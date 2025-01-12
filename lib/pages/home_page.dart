//import 'dart:ffi';
import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/navbar.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //var isPopuler = null;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              SizedBox(
                height: edge,
              ),
              //NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Explore Now",
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              //NOTE: POPULAR CITYES
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Mencari kosan yang cozy",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Mencari kosan yang cozy",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                        id: 1,
                        name: "Jakarta",
                        imageUrl: 'assets/city1.png',
                        isPopuler: false)),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 2,
                        name: "Bandung",
                        imageUrl: 'assets/city2.png',
                        isPopuler: true)),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 3,
                        name: "Surabaya",
                        imageUrl: 'assets/city3.png',
                        isPopuler: false)),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //NOTE: REKOMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Rekomended Space",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Column(
                    children: [
                      SpaceCard(Space(
                          id: 1,
                          name: "Kuretakeso Hott",
                          imageUrl: 'assets/space1.png',
                          price: 52,
                          city: "Bandung",
                          country: "Germany",
                          rating: 4)),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(Space(
                          id: 2,
                          name: "Roemah Nenek",
                          imageUrl: 'assets/space2.png',
                          price: 11,
                          city: "Seattle",
                          country: "Bogor",
                          rating: 5)),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(Space(
                          id: 3,
                          name: "Darrling How",
                          imageUrl: 'assets/space3.png',
                          price: 20,
                          city: "Jakarta",
                          country: "Indonesia",
                          rating: 3))
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              //NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Tips & Guidance",
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        title: "City Guidelines",
                        imageUrl: "assets/tips1.png",
                        updatedAt: "20 Apr")),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(Tips(
                        id: 2,
                        title: "Jakarta Fairship",
                        imageUrl: "assets/tips2.png",
                        updatedAt: "11 Dec"))
                  ],
                ),
              ),
              SizedBox(
                height: 50 + edge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
                Navbar(imageUrl: 'assets/icon_home.png', isAcyive: true)),
            BottomNavbarItem(
                Navbar(imageUrl: 'assets/icon_email.png', isAcyive: false)),
            BottomNavbarItem(
                Navbar(imageUrl: 'assets/icon_card.png', isAcyive: false)),
            BottomNavbarItem(
                Navbar(imageUrl: 'assets/icon_love.png', isAcyive: false))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
