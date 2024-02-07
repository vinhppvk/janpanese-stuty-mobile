import 'package:flag/flag.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/utils/extension/number.dart';
import '../../../app/utils/extension/spacing_extension.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/custom_network_image.dart';
import '../../../app/widget/tabbar/custom_tabbar.dart';
import '../../../data/model/entity/response/teacher_detail/teacher_detail_header_info.dart';
import '../../../data/model/entity/response/teacher_detail/teacher_detail_result.dart';
import '../util/enum/footer_state.dart';
import 'sub_views/about_me_view.dart';
import 'sub_views/courses_view.dart';
import 'sub_views/history_view.dart';
import 'sub_views/reviews_page.dart';

part '../widget/teacher_detail/scaffold.dart';

part '../widget/teacher_detail/section_header.dart';

part '../widget/teacher_detail/footer.dart';

part '../widget/teacher_detail/main_header.dart';

part '../widget/teacher_detail/sub_header.dart';

part '../widget/teacher_detail/lesson_credit_chip.dart';

class TeacherDetailPage extends StatefulWidget {
  const TeacherDetailPage({super.key});

  @override
  State<TeacherDetailPage> createState() => _TeacherDetailPageState();
}

class _TeacherDetailPageState extends State<TeacherDetailPage>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = <String>[
    'About Me',
    'Courses',
    'History',
    'Reviews',
  ];

  int _tabIndex = 0;
  late TeacherDetailResult _result;
  late TabController _tabController;
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    _result = TeacherDetailResult.mockData;
    _tabController = TabController(length: _tabs.length, vsync: this);
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(_result.videoUrl) ?? '',
      flags: const YoutubePlayerFlags(autoPlay: false, enableCaption: false),
    );

    super.initState();
  }

  @override
  void deactivate() {
    _youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: context.colorScheme.primary,
        progressColors: ProgressBarColors(
          playedColor: context.colorScheme.primary,
          handleColor: context.colorScheme.primary,
        ),
      ),
      builder: (BuildContext context, Widget player) {
        return _Scaffold(
          appBar: CustomAppBar(
            padding: const EdgeInsets.only(right: 12.0),
            title: const Text('Teacher Detail'),
            onBackPressed: () => context.pop(),
            trailing: const _LessonCreditChip(amount: '99'),
          ),
          videoPlayer: player,
          sectionHeader: _SectionHeader(
            tabController: _tabController,
            tabs: _tabs,
            mainHeaderInformation: _result.headerInformation,
            subHeaderInformation: _result.subHeaderInformation,
            onTabChanged: (int index) {
              setState(() {
                _tabIndex = index;
              });
            },
          ),
          sliverTabView: _buildBody(context),
          bottomFooter:
              _buildFooter(context, TeacherDetailFooterState.allowBooking),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return switch (_tabIndex) {
      0 => TeacherDetailAboutMeView(dataList: _result.aboutMeList),
      1 => TeacherDetailCoursesView(dataList: _result.courseList),
      2 => TeacherDetailHistoryView(dataList: _result.historyList),
      3 => TeacherDetailReviewsView(data: _result.reviewData),
      _ => throw UnimplementedError(),
    };
  }

  Widget _buildFooter(BuildContext context, TeacherDetailFooterState state) {
    final TextStyle highlightTextStyle = TTextStyle.getBodySmall(
      fontWeight: TFontWeight.bold,
      color: context.colorScheme.primary,
      decoration: TextDecoration.underline,
    );

    switch (state) {
      case TeacherDetailFooterState.allowBooking:
        return _Footer(onButtonPressed: () => _onCreateBookingPressed(context));
      case TeacherDetailFooterState.upgradeToPremium:
        return _Footer(
          titleTextSpans: <InlineSpan>[
            const TextSpan(
              text: 'You’ve learned or reserved 1 free trial lesson, please\n',
            ),
            TextSpan(
              text: 'Upgrade To Premium',
              style: highlightTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => _onUpgradeToPremiumTapped(context),
            ),
            const TextSpan(text: ' to continue learning.'),
          ],
        );
      case TeacherDetailFooterState.upgradePlan:
        return _Footer(
          titleTextSpans: <InlineSpan>[
            const TextSpan(
              text: '''You've used all your lesson credits, please\n''',
            ),
            TextSpan(
              text: 'Upgrade Your Plan',
              style: highlightTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => _onUpgradePlanTapped(context),
            ),
            const TextSpan(
                text:
                    ' to continue learning or wait for your Lesson Credit to refresh.'),
          ],
        );
    }
  }

  void _onCreateBookingPressed(BuildContext context) {}

  void _onUpgradeToPremiumTapped(BuildContext context) {}

  void _onUpgradePlanTapped(BuildContext context) {}
}
