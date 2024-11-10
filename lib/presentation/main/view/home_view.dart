import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../widget/home/grid_items_wigdet.dart';
import '../widget/home/home_header_widget.dart';
import '../widget/home/page_view_widget.dart';
import '../widget/home/row_category_widget.dart';
import '../widget/home/search_bar_widget.dart';
import '../widget/home/selectable_container_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<bool> selectedItems = List.generate(4, (index) => false);
  @override
  Widget build(BuildContext context) {

    final List category = [
      {"icons": IconAssets.tshirtIcon, "title": "T-Shirt"},
      {"icons": IconAssets.pantIcon, "title": "Pants"},
      {"icons": IconAssets.dressIcon, "title": "Dress"},
      {"icons": IconAssets.jacketIcon, "title": "Jacket"},
    ];
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
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
                  const SizedBox(height: 24),
                  RowCategoryWidget(title: "Category", onPressed: () {}),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                  backgroundColor: ColorManager.secandary,
                                  radius: 35,
                                  child: SvgPicture.asset(
                                      category[index]["icons"])),
                              const SizedBox(height: 6),
                              Text(category[index]["title"],
                                  style: AppTextStyles.smallTitle12)
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 24,
                            ),
                        itemCount: category.length),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Flash Sale",
                          style: AppTextStyles.largeTitle18),
                      Row(
                        children: [
                          const Text("Closing in : ",
                              style: AppTextStyles.smallTitle12),
                          SlideCountdownSeparated(
                            style: AppTextStyles.smallTitleBrown12,
                            decoration: BoxDecoration(
                              color: ColorManager.secandary,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      4)), // Apply border radius separately
                            ),
                            duration: const Duration(days: 2),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const SelectableContainerList(),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 500,
                    child: GridView.builder(
                      itemCount: 4, // Set length of grid to 4 items
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // Number of columns in the grid
                        childAspectRatio: 0.75,
                        // Adjust the aspect ratio as needed
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        return GridItemsWidget(
                          type: "Brown Jacket",
                          price: "\$120.00",
                          rate: "4.9",
                          icon: selectedItems[index]
                              ? CupertinoIcons.heart_fill
                              : CupertinoIcons.heart,
                          onTapFavorite: () {
                            setState(() {
                              selectedItems[index] = !selectedItems[index];
                            });
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
