import 'package:amazon_clone/constants.dart';
import 'package:amazon_clone/models/book_model.dart';
import 'package:amazon_clone/pages/book/book_page.dart';
import 'package:flutter/material.dart';

final List<BookModel> books = BookModel.books;

class BuildBookList extends StatelessWidget {
  const BuildBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Constants.kPadding,
              horizontal: Constants.kPadding * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Sellers",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: Constants.kPadding,
                    ),
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text("See all"),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: Constants.kPadding * 2,
                    right: Constants.kPadding,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookPage(
                            book: books[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              books[index].image,
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(books[index].title),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            books[index].subtitle,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.blueGrey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
