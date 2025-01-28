import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../location/widget/search_form_field.dart';
import '../../resources/color_manager.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          children: [
            SearchTextField(
              fillColor: ColorManager.white,
              hintText: "search".tr(),
              controller: searchController,
              onClick: () {

              },
              onChange: (p0) {

              },
            ),
          ],
        ),
      ),
    );
  }
}
