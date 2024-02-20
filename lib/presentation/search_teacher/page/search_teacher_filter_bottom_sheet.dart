import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/validator/support_validator.dart';
import '../../../app/utils/validator/validation_messages.dart';
import '../../../app/widget/app_bar/bottom_sheet_app_bar.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/buttons/secondary_button.dart';
import '../../../app/widget/dialog/bottom_sheet_scaffold.dart';
import '../../../app/widget/text_field/drop_down_text_field.dart';
import '../../../app/widget/text_field/normal_text_field.dart';
import '../../../app/widget/text_field/text_field_container.dart';
import '../../../data/model/entity/enum/booking_date.dart';
import '../../../data/model/entity/request/search_teacher/search_teacher_filter_params.dart';
import '../../../data/model/entity/response/search_teacher/search_teacher_filter_result.dart';
import '../utils/booking_date_color_extension.dart';
import '../widget/outline_tonal_chip.dart';

part '../widget/search_teacher_filter_bottom_sheet/bottom_navigation.dart';

part '../widget/search_teacher_filter_bottom_sheet/date_grid.dart';

part '../widget/search_teacher_filter_bottom_sheet/time_period_view.dart';

part '../widget/search_teacher_filter_bottom_sheet/scaffold.dart';

class SearchTeacherFilterBottomSheet extends StatefulWidget {
  const SearchTeacherFilterBottomSheet({
    super.key,
    required this.dataSource,
    required this.filterParams,
  });

  final SearchTeacherFilterResult dataSource;
  final SearchTeacherFilterParams filterParams;

  @override
  State<SearchTeacherFilterBottomSheet> createState() =>
      _SearchTeacherFilterBottomSheetState();
}

class _SearchTeacherFilterBottomSheetState
    extends State<SearchTeacherFilterBottomSheet> {
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();

  late SearchTeacherFilterParams _filterParams;
  String? _timePeriodErrorText;

  bool get _isValid => _timePeriodErrorText == null;

  @override
  void initState() {
    _filterParams = SearchTeacherFilterParams(
      dates: widget.filterParams.dates.toList(),
      startTime: widget.filterParams.startTime,
      endTime: widget.filterParams.endTime,
      course: widget.filterParams.course,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _startTimeController.text = _filterParams.startTime?.format(context) ?? '';
    _endTimeController.text = _filterParams.endTime?.format(context) ?? '';
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      appbar: BottomSheetAppBar(
        title: const Text('Filter'),
        onClosePressed: () => context.pop(),
      ),
      dateGridView: _DateGrid(
        dataSource: widget.dataSource.dates,
        selectedDates: _filterParams.dates,
        onTap: _onDateChipTapped,
      ),
      timePeriodView: _TimePeriodView(
        startTimeController: _startTimeController,
        endTimeController: _endTimeController,
        errorText: _timePeriodErrorText,
        onStartTimeTap: () => _selectTime(
          prevTime: _filterParams.startTime,
          onPicked: _setStartTime,
        ),
        onEndTimeTap: () => _selectTime(
          prevTime: _filterParams.endTime,
          onPicked: _setEndTime,
        ),
      ),
      courseDropDown: TextFieldContainer(
        title: const Text('Course'),
        child: DropDownTextField<String>(
          items: widget.dataSource.courses,
          selectedValue: _filterParams.course,
          hint: 'Select a course',
          onChanged: (String? course) {
            setState(() {
              _filterParams.course = course;
            });
          },
        ),
      ),
      bottomNavigation: _BottomNavigation(
        primaryAction: _onApplyFiltersPressed,
        secondaryAction: _onResetFiltersPressed,
      ),
    );
  }

  void _setStartTime(TimeOfDay? startTime) {
    _startTimeController.text = startTime?.format(context) ?? '';
    _filterParams.startTime = startTime;
  }

  void _setEndTime(TimeOfDay? endTime) {
    _endTimeController.text = endTime?.format(context) ?? '';
    _filterParams.endTime = endTime;
  }

  Future<void> _selectTime(
      {required TimeOfDay? prevTime,
      required Function(TimeOfDay) onPicked}) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: prevTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        onPicked(pickedTime);
      });
    }
  }

  void _onDateChipTapped(SearchTeacherFilterDate date, bool selected) {
    setState(() {
      selected
          ? _filterParams.dates.remove(date)
          : _filterParams.dates.add(date);
    });
  }

  void _onResetFiltersPressed() {
    setState(() {
      _filterParams.dates.clear();
      _setStartTime(null);
      _setEndTime(null);
      _filterParams.course = null;
      _timePeriodErrorText = null;
    });
  }

  void _onApplyFiltersPressed() {
    _validateTimePeriod();
    if (_isValid) {
      context.pop(_filterParams);
    }
  }

  void _validateTimePeriod() {
    setState(() {
      _timePeriodErrorText = SupportValidators.lessOrEqualTime(
        startTime: _filterParams.startTime,
        endTime: _filterParams.endTime,
        message: ValidationMessages.m013(
          'end time',
          'start time',
        ),
      ).call(null);
    });
  }
}
