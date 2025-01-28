import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/routes_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);
    final TextEditingController promoController = TextEditingController();
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
            "My Cart".tr(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: cart.isEmpty
              ? Center(
                  child: Text("Your cart is empty",
                      style: AppTextStyles.largeTitle22),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: Key(cart[index]["name"] ?? ''),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              ref.read(cartProvider.notifier).removeItem(index);

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text('Successful',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text('You deleted your item',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  backgroundColor: Colors.red,
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                            background: Container(
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffE84B51).withOpacity(0.22),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white),
                              // color: Colors.primaries[
                              //     Random().nextInt(Colors.primaries.length - 1)],
                              child: ListTile(
                                  leading: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    alignment: Alignment.topRight,
                                    height: 100,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: ColorManager.grey1,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  title: Text(
                                    cart[index]["name"] ?? '',
                                    style: AppTextStyles.mediumTitle14,
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Size: ${cart[index]["size"]}",
                                        style: AppTextStyles.smallTitleGrey12,
                                      ),
                                      Text(
                                        "${cart[index]["price"]}",
                                        style: AppTextStyles.mediumTitle14,
                                      ),
                                    ],
                                  ),
                                  trailing: Consumer(
                                    builder: (context, ref, child) {
                                      final counter =
                                          ref.watch(counterProvider(index));
                                      return Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          InkWell(
                                            onTap: () => ref
                                                .read(counterProvider(index)
                                                    .notifier)
                                                .decrement(),
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: ColorManager.grey1),
                                              child: Icon(
                                                Icons.remove,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            '$counter',
                                            style: AppTextStyles.mediumTitle14,
                                          ),
                                          SizedBox(width: 8),
                                          InkWell(
                                            onTap: () => ref
                                                .read(counterProvider(index)
                                                    .notifier)
                                                .increment(),
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: ColorManager.primary),
                                              child: Icon(
                                                Icons.add,
                                                size: 16,
                                                color: ColorManager.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  )),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
        ),
        bottomSheet: DraggableScrollableSheet(
          expand: false,
          snap: true,
          snapSizes: [0.3, 0.5, 0.6],
          initialChildSize: 0.5,
          minChildSize: 0.1,
          maxChildSize: 0.6,
          builder: (context, scrollController) {
            // final HomeMapCubit homeMapCubit = HomeMapCubit();
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: ColorManager.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: TextFieldCustomEdit(
                          radius: 78,
                          fillColor: Colors.grey[200],
                          controller: promoController,
                          hintText: "Promo Code",
                          validatorText: "validatorText",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Container(
                                alignment: Alignment.center,
                                width: 76,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: ColorManager.primary),
                                child: Text(
                                  "Apply",
                                  style: AppTextStyles.largeTitleWhite16,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub-Total",
                            style: AppTextStyles.mediumTitleGrey14,
                          ),
                          Text(
                            "\$407.94",
                            style: AppTextStyles.mediumTitle14,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Fee",
                            style: AppTextStyles.mediumTitleGrey14,
                          ),
                          Text(
                            "\$25.00",
                            style: AppTextStyles.mediumTitle14,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount",
                            style: AppTextStyles.mediumTitleGrey14,
                          ),
                          Text(
                            "-\$35.00",
                            style: AppTextStyles.mediumTitle14,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Cost",
                            style: AppTextStyles.mediumTitleGrey14,
                          ),
                          Text(
                            "\$397.94",
                            style: AppTextStyles.mediumTitle14,
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      FilledButtonEdit(
                        text: "Proceed to Checkout".tr(),
                        textSize: 16,
                        textColor: ColorManager.white,
                        buttonColor: ColorManager.primary,
                        onClick: () {
                          Navigator.pushNamed(context, Routes.checkoutRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

// Cart StateNotifier
class CartNotifier extends StateNotifier<List<Map<String, String>>> {
  CartNotifier()
      : super([
          {
            "image": "",
            "name": "Brown Jacket",
            "size": "XL",
            "price": "\$88",
          },
          {
            "image": "",
            "name": "Black Jacket",
            "size": "L",
            "price": "\$80",
          },
          {
            "image": "",
            "name": "Blue Jacket",
            "size": "XL",
            "price": "\$84",
          },
          {
            "image": "",
            "name": "Red Jacket",
            "size": "XL",
            "price": "\$90",
          },
          {
            "image": "",
            "name": "Yellow Jacket",
            "size": "XL",
            "price": "\$89",
          },
        ]);

  void removeItem(int index) {
    state = [
      ...state.sublist(0, index),
      ...state.sublist(index + 1),
    ];
  }

  void addItem(Map<String, String> item) {
    state = [...state, item];
  }
}

final cartProvider =
    StateNotifierProvider<CartNotifier, List<Map<String, String>>>(
  (ref) => CartNotifier(),
);

// Counter StateNotifier
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(1);

  void increment() => state++;

  void decrement() {
    if (state > 1) state--; // Prevent counter from going below 1
  }
}

final counterProvider = StateNotifierProvider.family<CounterNotifier, int, int>(
  (ref, index) => CounterNotifier(),
);

// List<Map<String, String>> cart = [
//   {
//     "image": "",
//     "name": "Brown Jacket",
//     "size": "XL",
//     "price": "\$88",
//   },
//   {
//     "image": "",
//     "name": "Black Jacket",
//     "size": "L",
//     "price": "\$80",
//   },
//   {
//     "image": "",
//     "name": "Blue Jacket",
//     "size": "XL",
//     "price": "\$84",
//   },
//   {
//     "image": "",
//     "name": "Red Jacket",
//     "size": "XL",
//     "price": "\$90",
//   },
//   {
//     "image": "",
//     "name": "Yellow Jacket",
//     "size": "XL",
//     "price": "\$89",
//   },
// ];
