import 'package:amazon_clone/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildDescription() => [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(
            Constants.kPadding,
          ),
          child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum id est vel posuere. Vestibulum sit amet turpis in orci luctus cursus feugiat ut lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed fringilla, mi sagittis tristique elementum, sapien lacus tincidunt leo, sit amet bibendum urna risus non ex. Donec sollicitudin nunc at varius cursus. Curabitur a dui vel risus sodales convallis sed sit amet tellus. Etiam pellentesque sapien id commodo lobortis. Nunc et ligula libero. Maecenas feugiat, lacus at consectetur consequat, nisi nunc lacinia erat, id vulputate dolor nisl et neque. Integer elit orci, consectetur sed tempor sit amet, consectetur sed est.",
            textAlign: TextAlign.justify,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Share"),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: Constants.kPadding,
                ),
                minimumSize: const Size(5, 5),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("One Click Purchase"),
            ),
          ],
        ),
      ),
    ];
