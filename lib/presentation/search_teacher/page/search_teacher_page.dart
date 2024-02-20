
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/asset/image_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/constant/app_url.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/card/outline_card.dart';
import '../../../app/widget/custom_network_image.dart';
import '../../../app/widget/empty_view.dart';
import '../../../data/model/entity/request/search_teacher/search_teacher_filter_params.dart';
import '../../../data/model/entity/response/search_teacher/search_teacher_filter_result.dart';
import '../widget/outline_tonal_chip.dart';
import 'search_teacher_filter_bottom_sheet.dart';

part '../widget/search_teacher/appbar_bottom_view.dart';

part '../widget/search_teacher/list_tile.dart';

part '../widget/search_teacher/list_tile_header.dart';

part '../widget/search_teacher/scaffold.dart';

class SearchTeacherPage extends StatefulWidget {
  const SearchTeacherPage({super.key});

  @override
  State<SearchTeacherPage> createState() => _SearchTeacherPageState();
}

class _SearchTeacherPageState extends State<SearchTeacherPage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  late List<String> _teacherList;
  late SearchTeacherFilterResult _filterDataSource;
  late SearchTeacherFilterParams _filterParams;

  @override
  void initState() {
    _teacherList = List<String>.generate(20, (int index) => index.toString());
    _filterDataSource = SearchTeacherFilterResult.mockData;
    _filterParams = SearchTeacherFilterParams(
        dates: List<SearchTeacherFilterDate>.empty(growable: true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      scaffoldKey: _scaffoldState,
      appBar: CustomAppBar(
        title: const Text('Available Teacher'),
        onBackPressed: () => context.pop(),
        bottom: _AppbarBottomView(
          listCount: _teacherList.length,
          enableFilter: false,
          onFilterPressed: () => _showFilterBottomSheet(context),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_teacherList.isEmpty) {
      return const Center(
        child: EmptyView(
          assetImage: ImageAsset.notFoundIllustration,
          message: Text('No results found'),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(24.0),
      itemCount: _teacherList.length,
      itemBuilder: (BuildContext context, int index) {
        return OutlinedBorderCard(
          onTap: () => _onTeacherCardTap(context),
          child: const _ListTile(),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 24.0),
    );
  }

  void _onTeacherCardTap(BuildContext context) {}

  Future<void> _showFilterBottomSheet(BuildContext context) async {
    final SearchTeacherFilterParams? filterParams =
        await showModalBottomSheet<SearchTeacherFilterParams>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (BuildContext context) {
        return SearchTeacherFilterBottomSheet(
          dataSource: _filterDataSource,
          filterParams: _filterParams,
        );
      },
    );

    if (filterParams != null) {
      _filterParams = filterParams;
    }
  }
}
