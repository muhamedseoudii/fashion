import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/main/view/cart_view.dart';
import 'package:fashion/presentation/main/view/home_view.dart';
import 'package:fashion/presentation/main/view/messaging_view.dart';
import 'package:fashion/presentation/main/view/profile_view.dart';
import 'package:fashion/presentation/main/view/wishlist_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const CartView(),
    const WishlistView(),
    const MessagingView(),
    const ProfileView(),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: ResponsiveNavigationBar(
        activeIconColor: ColorManager.primary,
        showActiveButtonText: false,
        backgroundGradient:
            LinearGradient(colors: [ColorManager.navy, ColorManager.navy]),
        fontSize: 25,
        inactiveIconColor: ColorManager.grey,
        selectedIndex: currentIndex,
        onTabChange: onItemTapped,
        navigationBarButtons: const <NavigationBarButton>[
          NavigationBarButton(
            icon: CupertinoIcons.house_alt_fill,
            text: 'Home',
            backgroundColor: Colors.white,
          ),
          NavigationBarButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
            backgroundColor: Colors.white,
          ),
          NavigationBarButton(
            icon: CupertinoIcons.heart_fill,
            text: 'Likes',
            backgroundColor: Colors.white,
          ),
          NavigationBarButton(
            icon: CupertinoIcons.chat_bubble_text_fill,
            text: 'Messages',
            backgroundColor: Colors.white,
          ),
          NavigationBarButton(
            icon: CupertinoIcons.profile_circled,
            text: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
