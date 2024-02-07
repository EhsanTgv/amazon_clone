import 'package:amazon_clone/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: const Text(
          "Bookshelf",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: const Text(
          "Welcome our dear user",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    ];
