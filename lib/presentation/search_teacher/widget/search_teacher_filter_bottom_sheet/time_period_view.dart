part of '../../page/search_teacher_filter_bottom_sheet.dart';

class _TimePeriodView extends StatelessWidget {
  const _TimePeriodView({
    required TextEditingController startTimeController,
    required TextEditingController endTimeController,
    required this.onStartTimeTap,
    required this.onEndTimeTap,
    this.errorText,
  })  : _startTimeController = startTimeController,
        _endTimeController = endTimeController;

  final TextEditingController _startTimeController;
  final TextEditingController _endTimeController;
  final VoidCallback? onStartTimeTap;
  final VoidCallback? onEndTimeTap;
  final String? errorText;
  
  bool get _forceError => errorText != null;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      title: const Text('Time Period'),
      errorText: errorText,
      child: Row(
        children: <Widget>[
          Expanded(
            child: NormalTextField(
              controller: _startTimeController,
              icon: SvgPicture.asset(IconAsset.clockClockwise),
              hintText: 'Start Time',
              readOnly: true,
              onTap: onStartTimeTap,
              forceError: _forceError,
              showErrorText: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '~',
              style: TTextStyle.getHeadingH5(color: TColor.grey900),
            ),
          ),
          Expanded(
            child: NormalTextField(
              controller: _endTimeController,
              icon: SvgPicture.asset(IconAsset.clockCounterClockwise),
              hintText: 'End Time',
              readOnly: true,
              onTap: onEndTimeTap,
              forceError: _forceError,
              showErrorText: false,
            ),
          ),
        ],
      ),
    );
  }
}