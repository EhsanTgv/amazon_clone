import 'package:amazon_clone/constants.dart';
import 'package:amazon_clone/models/book_model.dart';
import 'package:amazon_clone/pages/book/widgets/book_display.dart';
import 'package:amazon_clone/pages/book/widgets/description.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  final BookModel book;

  const BookPage({
    required this.book,
    super.key,
  });

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(Constants.kPadding),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.book.favorite = !widget.book.favorite;
                });
              },
              icon: Icon(
                widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Constants.kPadding * 4),
            child: Column(
              children: [
                ...buildBookDisplay(book: widget.book),
                ...buildDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
