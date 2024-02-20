import 'package:flutter/material.dart';

import '../../response/search_teacher/search_teacher_filter_result.dart';

class SearchTeacherFilterParams {
  SearchTeacherFilterParams({
    required this.dates,
    this.startTime,
    this.endTime,
    this.course,
  });

  final List<SearchTeacherFilterDate> dates;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  String? course;
}
