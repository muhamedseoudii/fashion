import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/resources/assets_manager.dart';
import '../../../../data/resources/color_manager.dart';
import '../../../location/widget/search_form_field.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController searchController;
  final void Function()? onClickSearch, onTapFilter;
  final void Function(String)? onChange;

  const SearchBarWidget(
      {super.key,
      required this.searchController,
      this.onClickSearch,
      this.onChange,
      this.onTapFilter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 260,
          child: SearchTextField(
            fillColor: ColorManager.white,
            hintText: "search".tr(),
            controller: searchController,
            onClick: onClickSearch,
            onChange: onChange,
          ),
        ),
        InkWell(
          onTap: onTapFilter,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: ColorManager.primary,
            child: SvgPicture.asset(IconAssets.filterIcon),
          ),
        )
      ],
    );
  }
}
