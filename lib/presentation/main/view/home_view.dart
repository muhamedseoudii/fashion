import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/routes_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
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
                    onClickSearch: () {
                      Navigator.pushNamed(context, Routes.searchRoute);
                    },
                    onTapFilter: () {},
                  ),
                  const SizedBox(height: 24),
                  const PageViewWidget(),
                  const SizedBox(height: 24),
                  RowCategoryWidget(title: "category".tr(), onPressed: () {}),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                  backgroundColor: ColorManager.secondary,
                                  radius: 30,
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
                      Text("flashSale".tr(), style: AppTextStyles.largeTitle18),
                      Row(
                        children: [
                          Text("closing".tr(),
                              style: AppTextStyles.smallTitle12),
                          SlideCountdownSeparated(
                            style: AppTextStyles.smallTitleBrown12,
                            decoration: BoxDecoration(
                              color: ColorManager.secondary,
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
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.categoryProductRoute);
                          },
                          child: GridItemsWidget(
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
                          ),
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
