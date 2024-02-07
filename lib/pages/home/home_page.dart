import 'package:amazon_clone/pages/home/widgets/app_bar.dart';
import 'package:amazon_clone/pages/home/widgets/header.dart';
import 'package:amazon_clone/pages/home/widgets/icons_list.dart';
import 'package:amazon_clone/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconsList(),
          ],
        ),
      ),
    );
  }
}
