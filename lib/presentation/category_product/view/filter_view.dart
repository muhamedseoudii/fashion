import 'package:fashion/presentation/category_product/widget/order_review/review_tile_widget.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../resources/assets_manager.dart';
import '../../resources/styles_manager.dart';
import '../widget/filter/selectable_brands_list.dart';
import '../widget/filter/selectable_gender_list.dart';
import '../widget/filter/selectable_sortby_list.dart';
import '../widget/order_review/scrollable_bottomsheet_widget.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => FilterViewState();
}

class FilterViewState extends State<FilterView> {
  SfRangeValues values = SfRangeValues(40, 80);
  String selectedAddress = "1";
  List reviews = [
    {"title": "4.5 and above"},
    {"title": "4.0 - 4.5"},
    {"title": "3.5 - 4.0"},
    {"title": "3.0 - 3.5"},
    {"title": "2.5 - 3.0 "},
    {"title": "1.5 - 2.0 "},
    {"title": "0 - 1 "},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SvgPicture.asset(
                  IconAssets.arrowBackCircleIcon,
                  fit: BoxFit.scaleDown,
                ),
              )),
          title: Text(
            "Filter",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Brands", style: AppTextStyles.largeTitle18),
              SizedBox(height: 12),
              const SelectableBrandsList(),
              SizedBox(height: 24),
              Text("Gender", style: AppTextStyles.largeTitle18),
              SizedBox(height: 12),
              SelectableGenderList(),
              SizedBox(height: 24),
              Text("Sort by", style: AppTextStyles.largeTitle18),
              SizedBox(height: 12),
              SelectableSortByList(),
              SizedBox(height: 24),
              Text("Pricing Range", style: AppTextStyles.largeTitle18),
              SizedBox(height: 12),
              SfRangeSlider(
                min: 0.0,
                max: 100.0,
                values: values,
                activeColor: ColorManager.primary,
                showDividers: true,
                interval: 20,
                showTicks: false,
                showLabels: true,
                enableTooltip: false,
                dragMode: SliderDragMode.onThumb,
                onChanged: (SfRangeValues newValues) {
                  setState(() {
                    values = newValues; // Corrected here
                  });
                  // print("The new Rangers is $newValues");
                },
              ),

              SizedBox(height: 24),
              Text("Reviews", style: AppTextStyles.largeTitle18),
              // SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReviewTileWidget(title: reviews[index]["title"]),
                        Transform.scale(
                          scale: 1.4,
                          child: Radio<String>(
                            activeColor: ColorManager.primary,
                            value: reviews[index]["title"],
                            groupValue: selectedAddress,
                            onChanged: (newValues) {
                              setState(() {
                                selectedAddress = newValues!;
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                ),
              )
            ],
          ),
        ),
        bottomSheet: DraggableScrollableSheet(
          expand: false,
          snap: true,
          snapSizes: [0.13, 0.14],
          initialChildSize: 0.13,
          minChildSize: 0.13,
          // maxChildSize: 0.3,
          builder: (context, scrollController) {
            return ScrollableBottomSheetWidget(
              leftText: "Reset Filter",
              rightText: "Apply",
              onSubmit: () {},
              onCancel: () {
                Navigator.pop(context);
              },
            );
          },
        ));
  }
}
