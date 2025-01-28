import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/routes_manager.dart';
import '../widget/home/grid_items_wigdet.dart';
import '../widget/wishlist/selectable_wishlist_widget.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          children: [
            SelectableWishlistWidget(),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                      icon: CupertinoIcons.heart_fill
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
