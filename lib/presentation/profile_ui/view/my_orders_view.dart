import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/color_manager.dart';
import '../../../data/resources/styles_manager.dart';
import '../widget/order/active_order_view.dart';
import '../widget/order/cancelled_order_view.dart';
import '../widget/order/completed_order_view.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "myOrders".tr(),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(children: [
            TabBar(
                splashBorderRadius: BorderRadius.circular(100),
                labelStyle: AppTextStyles.largeTitleBrown16,
                unselectedLabelStyle: AppTextStyles.largeTitleGrey16,
                indicatorColor: ColorManager.primary,
                dividerColor: ColorManager.grey1,
                indicator: UnderlineTabIndicator(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100)),
                  borderSide: BorderSide(color: ColorManager.primary, width: 4.0),
                ),
                tabs:  [
                  Tab(text: 'active'.tr()),
                  Tab(text: 'completed'.tr()),
                  Tab(text: 'cancelled'.tr()),
                ]),
            const Expanded(
              child: TabBarView(
                children: [
                  ActiveOrderView(),
                  CompletedOrderView(),
                  CancelledOrderView()
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
