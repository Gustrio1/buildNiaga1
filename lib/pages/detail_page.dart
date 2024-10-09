//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element

    Future<void> _launchUrl(BuildContext context, String urlString) async {
      final Uri url = Uri.parse(urlString);

      // Cek apakah URL valid dan bisa diluncurkan
      if (!await canLaunchUrl(url)) {
        try {
          // Coba untuk meluncurkan URL
          await launchUrl(
            url,
            //mode:
            //LaunchMode.externalApplication, // Membuka di browser eksternal
          );
        } catch (e) {
          // Jika gagal meluncurkan, arahkan ke halaman ErrorPage
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ErrorPage()));
        }
      } else {
        // Jika URL tidak valid atau tidak bisa diluncurkan, arahkan ke ErrorPage
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                "assets/thumbnail.png",
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        //NOTE: TITLE
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kuretakeso Hott",
                                    style:
                                        blackTextStyle.copyWith(fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(TextSpan(
                                      text: "\$ 52",
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text: " / month",
                                            style: greyTextStyle.copyWith(
                                                fontSize: 16))
                                      ])),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 20,
                                    color: Color(0xff989BA1),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //NOTE: FACILITIES
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            "Main Facilities",
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                nama: 'kitchen',
                                imageUrl: 'assets/icon_kitchen.png',
                                total: 2,
                              ),
                              FacilityItem(
                                nama: 'bedroom',
                                imageUrl: 'assets/icon_bedroom.png',
                                total: 3,
                              ),
                              FacilityItem(
                                nama: 'Big Lemari',
                                imageUrl: 'assets/icon_cupboard.png',
                                total: 2,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE: PHOTO
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            "Photos",
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                            height: 88,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(
                                  width: edge,
                                ),
                                Image.asset(
                                  'assets/photo1.png',
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Image.asset(
                                  'assets/photo2.png',
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Image.asset(
                                  'assets/photo3.png',
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: edge,
                                )
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE : LOCATION
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            "Location",
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jln. Kappan Sukses No. 20\n Palembang",
                                style: greyTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  // _launchUrl((context),
                                  //     "https://www.google.com/maps/place/Universitas+Muhammadiyah+Gorontalo/@0.6204849,123.015714,17z/data=!3m1!4b1!4m6!3m5!1s0x32792d93ebacdc03:0x8ad908e900f0b927!8m2!3d0.6204849!4d123.015714!16s%2Fg%2F120qd3kq?entry=ttu&g_ep=EgoyMDI0MTAwMi4xIKXMDSoASAFQAw%3D%3D");
                                  _launchUrl(context, "urlString");
                                },
                                child: Image.asset(
                                  'assets/btn_map.png',
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: edge),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: purpleColor),
                            onPressed: () {
                              _launchUrl(context, "tel://+6285256010043");
                            },
                            child: Text(
                              "Book Now",
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        // print('Back button tapped');

                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
