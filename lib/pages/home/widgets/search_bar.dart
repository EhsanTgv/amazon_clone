import 'package:amazon_clone/constants.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search a book",
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: Constants.kPadding,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
