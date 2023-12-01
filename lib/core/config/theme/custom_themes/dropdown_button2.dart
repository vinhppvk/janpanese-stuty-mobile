import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';

class TDropDownButton2 {
  const TDropDownButton2._();

  static const InputDecoration inputDecoration = InputDecoration(
    /// No need to pad here
    contentPadding: EdgeInsets.zero,
  );

  static ButtonStyleData buttonStyleData = ButtonStyleData(
    /// Padding for trailing icon
    padding: const EdgeInsets.only(right: 12.0),
    height: 56.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  static DropdownStyleData dropDownStyleData = DropdownStyleData(
    padding: EdgeInsets.zero,
    maxHeight: 240.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  static const MenuItemStyleData menuItemStyleData = MenuItemStyleData(
    /// Padding for menu item
    padding: EdgeInsets.symmetric(horizontal: 16.0),
  );

  static IconStyleData iconStyleData = IconStyleData(
    icon: SvgPicture.asset(IconAsset.caretDown),
    openMenuIcon: SvgPicture.asset(IconAsset.caretUp),
  );
}
