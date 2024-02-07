import 'package:amazon_clone/constants.dart';
import 'package:amazon_clone/models/icon_model.dart';
import 'package:flutter/material.dart';

final List<IconModel> headerImages = IconModel.icons;

Widget buildIconsList() => Padding(
      padding: EdgeInsets.only(bottom: Constants.kPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            headerImages.length,
            (index) => SizedBox(
              width: 100,
              child: Column(
                children: [
                  Image.asset(headerImages[index].icon),
                  Text(
                    headerImages[index].title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
