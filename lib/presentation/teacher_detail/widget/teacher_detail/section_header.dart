part of '../../page/teacher_detail_page.dart';

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required TabController tabController,
    required this.tabs,
    required this.mainHeaderInformation,
    required this.subHeaderInformation,
    this.onTabChanged,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<String> tabs;
  final Function(int)? onTabChanged;
  final TeacherDetailMainHeaderInformation mainHeaderInformation;
  final TeacherDetailSubHeaderInformation subHeaderInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            width: 1.5,
            color: context.colorScheme.outline,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          _MainHeader(data: mainHeaderInformation),
          const SizedBox(height: 16.0),
          _SubHeader(
            recordList: <({String title, int count})>[
              (
                title: 'Lesson Taught',
                count: subHeaderInformation.lessonsTaughtCount,
              ),
              (
                title: 'Courses',
                count: subHeaderInformation.courseCount,
              ),
              (
                title: 'Reservations',
                count: subHeaderInformation.reservationCount,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          CustomTabbar(
            controller: _tabController,
            onTap: onTabChanged,
            tabs: tabs
                .map(
                  (String tab) => Tab(text: tab),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
