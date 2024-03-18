import 'package:amazon_clone/constants.dart';
import 'package:amazon_clone/models/book_model.dart';
import 'package:flutter/material.dart';

List<Widget> buildBookDisplay({required BookModel book}) => [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            book.secondImage,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Text(
          book.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    ];
