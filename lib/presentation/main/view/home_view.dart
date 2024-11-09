import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widget/home/home_header_widget.dart';
import '../widget/home/page_view_widget.dart';
import '../widget/home/search_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const HomeHeaderWidget(),
              const SizedBox(height: 24),
              SearchBarWidget(
                searchController: searchController,
                onChange: (p0) {},
                onClickSearch: () {},
                onTapFilter: () {},
              ),
              const SizedBox(height: 24),
              const PageViewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
