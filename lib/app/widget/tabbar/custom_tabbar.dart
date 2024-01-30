import 'package:flutter/material.dart';

import '../../theme/style/color.dart';
import '../../theme/style/font_style.dart';

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({
    super.key,
    required this.tabs,
    required this.controller,
    this.onTap,
  });

  final List<Widget> tabs;
  final TabController controller;
  final Function(int)? onTap;

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  void initState() {
    widget.controller.addListener(_onControllerChanged);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: TColor.grey100,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TabBar(
          controller: widget.controller,
          tabs: _buildTabs(),
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          indicator: BoxDecoration(
            color: TColor.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          unselectedLabelStyle: TTextStyle.getBodySmall(
            color: TColor.grey500,
            fontWeight: TFontWeight.bold,
          ),
          labelStyle: TTextStyle.getBodySmall(
            fontWeight: TFontWeight.bold,
          ),
          indicatorWeight: 0.0,
          dividerHeight: 0.0,
          onTap: widget.onTap,
        ),
      ),
    );
  }

  void _onControllerChanged() {
    setState(() {});
  }

  bool _showRightBorder(int index) {
    final int maxIndex = widget.tabs.length - 1;
    final int selectedIndex = widget.controller.index;
    final int prevIndex = selectedIndex == 0 ? 0 : selectedIndex - 1;
    return index != selectedIndex && index != prevIndex && index != maxIndex;
  }

  List<Widget> _buildTabs() {
    final List<Widget> tabs = widget.tabs;
    return List<Widget>.generate(widget.tabs.length, (int index) {
      final Widget tab = tabs[index];
      return _showRightBorder(index) ? _buildTabWithBorder(tab) : tab;
    });
  }

  Widget _buildTabWithBorder(Widget child) {
    return Row(
      children: <Widget>[
        Expanded(
          child: child,
        ),
        const VerticalDivider(
          width: 2.0,
          thickness: 2.0,
          indent: 6.0,
          endIndent: 6.0,
        )
      ],
    );
  }
}
