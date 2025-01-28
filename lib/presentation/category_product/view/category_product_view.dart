import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class CategoryProductView extends StatelessWidget {
//   const CategoryProductView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 10,
//         automaticallyImplyLeading: false,
//         backgroundColor: ColorManager.secandary,
//       ),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   alignment: Alignment.topCenter,
//                   height: 389,
//                   color: ColorManager.secandary,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 24),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         InkWell(
//                           splashColor: Colors.transparent,
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: const CircleAvatar(
//                             radius: 20,
//                             backgroundColor: Colors.white,
//                             child: Icon(Icons.keyboard_backspace_outlined),
//                           ),
//                         ),
//                         Text(
//                           "Product details".tr(),
//                           style: AppTextStyles.largeTitle16,
//                         ),
//                         InkWell(
//                           splashColor: Colors.transparent,
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: const CircleAvatar(
//                             radius: 20,
//                             backgroundColor: Colors.white,
//                             child: Icon(CupertinoIcons.heart),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text("Female’s Style",
//                               style: AppTextStyles.mediumGreyTitle14),
//                           Row(
//                             children: [
//                               SvgPicture.asset(IconAssets.starIcon),
//                               const SizedBox(width: 5),
//                               const Text("4.5",
//                                   style: AppTextStyles.mediumGreyTitle14),
//                             ],
//                           )
//                         ],
//                       ),
//                       const SizedBox(height: 8),
//                       const Text("Light Brown Jacket",
//                           style: AppTextStyles.largeTitle18),
//                       const SizedBox(height: 24),
//                       const Text("Product Details",
//                           style: AppTextStyles.largeTitle16),
//                       const SizedBox(height: 8),
//                       const Text(
//                           "Utility jacket in cotton denim with a washed look featuring a corduroy collar. Zip down the front, a yoke at the back and adjustable press-studs at the cuffs and sides of the hem.",
//                           style: AppTextStyles.mediumGreyTitle14),
//                       const SizedBox(height: 8),
//                       const Divider(),
//                       const SizedBox(height: 8),
//                       const Text("Select Size",
//                           style: AppTextStyles.largeTitle16),
//                       const SizedBox(height: 8),
//                       const SelectableSizeWidget(),
//                       const SizedBox(height: 8),
//                       ColorSelectionWidget(),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 91,
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(16),
//                           topRight: Radius.circular(16)),  color: ColorManager.offWhite,),
//
//                   child:  Row(
//                     children: [
//                       Column(
//                         children: [
//                           const Text("Total Price",
//                               style: AppTextStyles.mediumGreyTitle14),
//                           const SizedBox(height: 4),
//                           const Text("\$83.97",
//                               style: AppTextStyles.largeTitle16),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CategoryProductView extends StatefulWidget {
  const CategoryProductView({super.key});

  @override
  State<CategoryProductView> createState() => _CategoryProductViewState();
}

class _CategoryProductViewState extends State<CategoryProductView> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.secondary,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // Scrollable Content in the Center
            Positioned.fill(
              top: 389, // Height of the top container
              bottom: 91, // Height of the bottom container
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Female’s Style",
                              style: AppTextStyles.mediumGreyTitle14),
                          Row(
                            children: [
                              SvgPicture.asset(IconAssets.starIcon),
                              const SizedBox(width: 5),
                              const Text("4.5",
                                  style: AppTextStyles.mediumGreyTitle14),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text("Light Brown Jacket",
                          style: AppTextStyles.largeTitle18),
                      const SizedBox(height: 24),
                      const Text("Product Details",
                          style: AppTextStyles.largeTitle16),
                      const SizedBox(height: 8),
                      const Text(
                          "Utility jacket in cotton denim with a washed look featuring a corduroy collar. Zip down the front, a yoke at the back and adjustable press-studs at the cuffs and sides of the hem.",
                          style: AppTextStyles.mediumGreyTitle14),
                      const SizedBox(height: 8),
                      const Divider(),
                      const SizedBox(height: 8),
                      const Text("Select Size",
                          style: AppTextStyles.largeTitle16),
                      const SizedBox(height: 8),
                      const SelectableSizeWidget(),
                      const SizedBox(height: 8),
                      ColorSelectionWidget(),
                    ],
                  ),
                ),
              ),
            ),
            // Top Fixed Container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.topCenter,
                height: 389,
                color: ColorManager.secondary,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.keyboard_backspace_outlined),
                        ),
                      ),
                      Text(
                        "Product details".tr(),
                        style: AppTextStyles.largeTitle16,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            isSelected == true
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom Fixed Container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 91,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: ColorManager.offWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Shadow color
                      blurRadius: 8, // How soft the shadow is
                      spreadRadius: 1, // How wide the shadow spreads
                      offset: Offset(0,
                          -4), // Offset to position shadow above the top border
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Total Price",
                            style: AppTextStyles.mediumGreyTitle14),
                        const SizedBox(height: 4),
                        const Text("\$83.97",
                            style: AppTextStyles.largeTitle16),
                      ],
                    ),
                    FilledButtonWithIconEdit(
                        text: "Add to Cart",
                        buttonColor: ColorManager.primary,
                        textSize: 16,
                        textColor: ColorManager.white,
                        onClick: () {},
                        width: 213,
                        height: 48,
                        widget: Icon(Icons.shopping_bag)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectableSizeWidget extends StatefulWidget {
  const SelectableSizeWidget({super.key});

  @override
  State<SelectableSizeWidget> createState() => _SelectableSizeWidget();
}

class _SelectableSizeWidget extends State<SelectableSizeWidget> {
  List name = [
    {"title": "S".tr()},
    {"title": "M".tr()},
    {"title": "L".tr()},
    {"title": "XL".tr()},
    {"title": "XXL".tr()},
    {"title": "XXXL".tr()},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ColorManager.primary
                    : ColorManager.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: selectedIndex == index
                      ? ColorManager.primary
                      : ColorManager.white300,
                  width: 1,
                ),
              ),
              child: Text(
                name[index]["title"],
                style: selectedIndex == index
                    ? AppTextStyles.smallTitleWhite12
                    : AppTextStyles.smallTitle12,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 18,
        ),
      ),
    );
  }
}

class ColorSelectionWidget extends StatefulWidget {
  const ColorSelectionWidget({super.key});

  @override
  ColorSelectionWidgetState createState() => ColorSelectionWidgetState();
}

class ColorSelectionWidgetState extends State<ColorSelectionWidget> {
  // List of available colors
  final Map<Color, String> colors = {
    Colors.red: 'Red',
    Colors.green: 'Green',
    Colors.blue: 'Blue',
    Colors.orange: 'Orange',
    Colors.purple: 'Purple',
    Colors.yellow: 'Yellow',
  };

  // List of selected colors
  // List<Color> selectedColors = [];
  Color? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Selected colors displayed
        Row(
          children: [
            const Text("Select Color: ", style: AppTextStyles.largeTitle16),
            Text(
              '${selectedColor != null ? colors[selectedColor] : 'None'}',
              style: AppTextStyles.largeTitleGrey16,
            ),
          ],
        ),
        const SizedBox(height: 5),
        // Wrap(
        //   spacing: 10,
        //   runSpacing: 10,
        //   children: selectedColors.map((color) {
        //     return CircleAvatar(
        //       radius: 18,
        //       backgroundColor: color,
        //     );
        //   }).toList(),
        // ),

        // Horizontal ListView
        SizedBox(
          height: 40, // Limit height for horizontal ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final color = colors.keys.elementAt(index);
              final isSelected = selectedColor == color;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = color;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: color,
                    child: isSelected
                        ? CircleAvatar(
                            radius: 7,
                            backgroundColor: ColorManager.white,
                          )
                        : null,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
