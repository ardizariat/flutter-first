// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:app_cozy/models/city.dart';
import 'package:app_cozy/models/space.dart';
import 'package:app_cozy/theme.dart';
import 'package:app_cozy/widgets/city_card.dart';
import 'package:app_cozy/widgets/space_card.dart';
import 'package:app_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: edge,
              ),
              child: ListView(
                // Title / Header
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: Text(
                      'Explore Now',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: Text(
                      'Mencari kostan yang murah',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Popular Cities
                  Padding(
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: Text(
                      'Popular Cities',
                      style: regularTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CityCard(
                          City(
                            id: 1,
                            name: 'Jakarta',
                            imageUrl: 'assets/images/city1.png',
                            isPopular: true,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CityCard(
                          City(
                            id: 2,
                            name: 'Bandung',
                            imageUrl: 'assets/images/city2.png',
                            isPopular: true,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CityCard(
                          City(
                            id: 3,
                            name: 'Surabaya',
                            imageUrl: 'assets/images/city3.png',
                            isPopular: false,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        CityCard(
                          City(
                            id: 4,
                            name: 'Surabaya',
                            imageUrl: 'assets/images/city1.png',
                            isPopular: false,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: Text(
                      'Recomended Space',
                      style: regularTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Column(
                      children: [
                        SpaceCard(
                          Space(
                            id: 1,
                            name: 'Cakung',
                            price: 1000,
                            imageUrl: 'assets/images/city1.png',
                            rating: 4,
                            city: 'Jakarta',
                            country: 'Indonesia',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          Space(
                            id: 2,
                            name: 'Lembang',
                            price: 900,
                            imageUrl: 'assets/images/city2.png',
                            rating: 4,
                            city: 'Bandung',
                            country: 'Indonesia',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          Space(
                            id: 3,
                            name: 'Harapan Indah',
                            price: 1500,
                            imageUrl: 'assets/images/city1.png',
                            rating: 2,
                            city: 'Bekasi',
                            country: 'Indonesia',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // Recomended space
                  Padding(
                    padding: EdgeInsets.only(
                      left: edge,
                    ),
                    child: Text(
                      'Tips & Guidance',
                      style: regularTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Column(
                      children: [
                        TipsCard(),
                        SizedBox(height: 30),
                        TipsCard(),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
