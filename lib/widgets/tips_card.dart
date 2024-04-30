// ignore_for_file: prefer_const_constructors

import 'package:app_cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/tips1.png',
          width: 80,
        ),
        SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City Guidelines',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Updated 20 Apr',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            size: 24,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
