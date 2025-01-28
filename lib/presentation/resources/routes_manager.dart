import 'package:fashion/presentation/auth/view/create_account_view.dart';
import 'package:fashion/presentation/auth/view/login_view.dart';
import 'package:fashion/presentation/auth/view/new_password_view.dart';
import 'package:fashion/presentation/auth/view/otp_view.dart';
import 'package:fashion/presentation/category_product/view/add_card_view.dart';
import 'package:fashion/presentation/category_product/view/category_product_view.dart';
import 'package:fashion/presentation/category_product/view/checkout_payment_view.dart';
import 'package:fashion/presentation/category_product/view/checkout_view.dart';
import 'package:fashion/presentation/category_product/view/choosing_shipping_view.dart';
import 'package:fashion/presentation/category_product/view/coupons_view.dart';
import 'package:fashion/presentation/category_product/view/order_review_view.dart';
import 'package:fashion/presentation/category_product/view/payment_success_view.dart';
import 'package:fashion/presentation/category_product/view/shipping_address_view.dart';
import 'package:fashion/presentation/category_product/view/track_order_view.dart';
import 'package:fashion/presentation/intro/onboarding/view/onboarding_view.dart';
import 'package:fashion/presentation/intro/welcome/welcome_view.dart';
import 'package:fashion/presentation/location/veiw/location_view.dart';
import 'package:fashion/presentation/location/veiw/manual_location_view.dart';
import 'package:fashion/presentation/main/screen/main_screen_view.dart';
import 'package:fashion/presentation/profile_ui/view/edit_profile_view.dart';
import 'package:fashion/presentation/profile_ui/view/help_center_view.dart';
import 'package:fashion/presentation/profile_ui/view/invite_friends_view.dart';
import 'package:fashion/presentation/profile_ui/view/my_orders_view.dart';
import 'package:fashion/presentation/profile_ui/view/password_manager_view.dart';
import 'package:fashion/presentation/profile_ui/view/payment_method_view.dart';
import 'package:fashion/presentation/profile_ui/view/privacy_view.dart';
import 'package:fashion/presentation/profile_ui/view/settings_view.dart';
import 'package:fashion/presentation/search/view/search_view.dart';
import 'package:flutter/material.dart';

import '../../presentation/main/view/home_view.dart';
import '../../presentation/spalsh/splash_view.dart';
import 'string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String welcomeRoute = "/welcome";
  static const String onboardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String signUpRoute = "/signUp";
  static const String otpRoute = "/otp";
  static const String newPassRoute = "/newPass";
  static const String homeRoute = "/home";
  static const String locationRoute = "/location";
  static const String manualLocationRoute = "/manualLocation";
  static const String mainScreenRoute = "/mainScreen";
  static const String settingsRoute = "/settings";
  static const String paymentRoute = "/paymentMethod";
  static const String passwordManagerRoute = "/passwordManager";
  static const String privacyRoute = "/privacy";
  static const String inviteFriendsRoute = "/inviteFriends";
  static const String helpCenterRoute = "/helpCenter";
  static const String orderRoute = "/order";
  static const String editProfileRoute = "/editProfile";
  static const String categoryProductRoute = "/categoryProduct";
  static const String searchRoute = "/search";
  static const String checkoutRoute = "/checkout";
  static const String shippingAddressRoute = "/shippingAddress";
  static const String chooseShippingRoute = "/chooseShipping";
  static const String checkoutPaymentRoute = "/CheckoutPayment";
  static const String addCardRoute = "/addCard";
  static const String paymentSuccessRoute = "/paymentSuccess";
  static const String couponsRoute = "/coupons";
  static const String trackOrderRoute = "/trackOrder";
  static const String leaveReviewRoute = "/leaveReview";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeView());
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const CreateAccountView());
      case Routes.otpRoute:
        return MaterialPageRoute(builder: (_) => const OtpView());
      case Routes.newPassRoute:
        return MaterialPageRoute(builder: (_) => const NewPasswordView());
      case Routes.locationRoute:
        return MaterialPageRoute(builder: (_) => const LocationView());
      case Routes.manualLocationRoute:
        return MaterialPageRoute(builder: (_) => const ManualLocationView());
      case Routes.mainScreenRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsView());
      case Routes.paymentRoute:
        return MaterialPageRoute(builder: (_) => const PaymentMethodView());
      case Routes.passwordManagerRoute:
        return MaterialPageRoute(builder: (_) => const PasswordManagerView());
      case Routes.privacyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacyView());
      case Routes.inviteFriendsRoute:
        return MaterialPageRoute(builder: (_) => const InviteFriendsView());
      case Routes.helpCenterRoute:
        return MaterialPageRoute(builder: (_) => const HelpCenterView());
      case Routes.orderRoute:
        return MaterialPageRoute(builder: (_) => const MyOrdersView());
      case Routes.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case Routes.categoryProductRoute:
        return MaterialPageRoute(builder: (_) => const CategoryProductView());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case Routes.checkoutRoute:
        return MaterialPageRoute(builder: (_) => const CheckoutView());
      case Routes.shippingAddressRoute:
        return MaterialPageRoute(builder: (_) => const ShippingAddressView());
      case Routes.chooseShippingRoute:
        return MaterialPageRoute(builder: (_) => const ChoosingShippingView());
      case Routes.checkoutPaymentRoute:
        return MaterialPageRoute(builder: (_) => const CheckoutPaymentView());
      case Routes.addCardRoute:
        return MaterialPageRoute(builder: (_) => const AddCardView());
      case Routes.paymentSuccessRoute:
        return MaterialPageRoute(builder: (_) => const PaymentSuccessView());
      case Routes.couponsRoute:
        return MaterialPageRoute(builder: (_) => const CouponsView());
      case Routes.trackOrderRoute:
        return MaterialPageRoute(builder: (_) => const TrackOrderView());
      case Routes.leaveReviewRoute:
        return MaterialPageRoute(builder: (_) => const OrderReviewView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body: const Center(child: Text(AppStrings.noRouteFound)),
        );
      },
    );
  }
}
