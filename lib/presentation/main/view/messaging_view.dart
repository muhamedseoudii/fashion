import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class MessagingView extends StatefulWidget {
  const MessagingView({super.key});

  @override
  State<MessagingView> createState() => _MessagingViewState();
}

class _MessagingViewState extends State<MessagingView> {
  // Separate lists for Today and Yesterday notifications
  List<Map<String, dynamic>> todayNotifications = [
    {
      "title": "Order Shipped",
      "time": "1h",
      "description": "Your order has been shipped and is on the way!",
      "read": false, // Unread
    },
    {
      "title": "Flash Sale Alert",
      "time": "2h",
      "description": "Limited time offer! Don't miss out on our flash sale!",
      "read": false, // Unread
    },
    {
      "title": "Product Review Request",
      "time": "3h",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "read": false, // Unread
    },
  ];

  List<Map<String, dynamic>> yesterdayNotifications = [
    {
      "title": " New Paypal Added",
      "time": "22h",
      "description": "We'd love to hear your thoughts on your recent purchase.",
      "read": false, // Unread
    },
    {
      "title": "Discount Code Expired",
      "time": "1d",
      "description": "Your discount code has expired. Check back for future offers!",
      "read": false, // Unread
    },
    {
      "title": "Product Review Request",
      "time": "1d",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "read": false, // Unread
    },

  ];

  // Function to mark all notifications as read in a specific category
  void markAllAsRead(List<Map<String, dynamic>> notifications) {
    setState(() {
      for (var notification in notifications) {
        notification["read"] = true;
      }
    });
  }

  // Function to mark a single notification as read
  void markAsRead(List<Map<String, dynamic>> notifications, int index) {
    setState(() {
      notifications[index]["read"] = true;
    });
  }

  // Widget to build the notification list for a specific category
  Widget buildNotificationList(
      String categoryTitle, List<Map<String, dynamic>> notifications) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(categoryTitle, style: AppTextStyles.mediumTitleGrey14),
              GestureDetector(
                onTap: () => markAllAsRead(notifications),
                child: Text(
                  "Mark all as read",
                  style: AppTextStyles.mediumTitleBrown14,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          itemCount: notifications.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return InkWell(
              onTap: () => markAsRead(notifications, index),
              child: Container(
                height: 102,
                padding: EdgeInsets.symmetric(horizontal: 24),
                margin: EdgeInsets.only(bottom: 8),
                color:
                notification["read"] ? ColorManager.white : ColorManager.grey,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: notification["read"]
                          ? ColorManager.grey
                          : ColorManager.white,
                      radius: 25,
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(notification["title"],
                                  style: AppTextStyles.largeTitle16),
                              Text(notification["time"],
                                  style: AppTextStyles.smallTitleGrey12),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            notification["description"],
                            style: AppTextStyles.smallTitleGrey12,
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification".tr(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: ColorManager.primary,
              ),
              child: Text(
                "${todayNotifications.where((n) => !n["read"]).length + yesterdayNotifications.where((n) => !n["read"]).length} NEW",
                style: AppTextStyles.smallTitleWhite12,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildNotificationList("TODAY", todayNotifications),
            SizedBox(height: 20),
            buildNotificationList("YESTERDAY", yesterdayNotifications),
          ],
        ),
      ),
    );
  }
}
