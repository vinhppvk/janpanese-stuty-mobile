part of '../../page/teacher_detail_page.dart';

class _MainHeader extends StatelessWidget {
  const _MainHeader({required this.data});

  final TeacherDetailMainHeaderInformation data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 72.0,
          height: 72.0,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: TColor.grey50,
            shape: BoxShape.circle,
          ),
          child: CustomNetworkImage(
            imageUrl: data.imagePhoto,
            indicatorWidgetSize: 32.0,
            errorWidgetSize: 32.0,
          ),
        ),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data.userName,
              style: TTextStyle.getHeadingH5(),
            ),
            const SizedBox(height: 4.0),
            DefaultTextStyle(
              style: TTextStyle.getBodyMedium(
                fontWeight: TFontWeight.medium,
                color: context.colorScheme.surfaceTint,
              ),
              child: Row(
                children: <Widget>[
                  Text('${data.age} year old'),
                  const SizedBox(width: 8.0),
                  const SizedBox(
                    height: 16.0,
                    child: VerticalDivider(),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 4.0,
                        color: context.colorScheme.surfaceTint.withOpacity(.25),
                      ),
                    ]),
                    child: Flag.fromString(
                      data.flagCode,
                      width: 32.0,
                      height: 24.0,
                      borderRadius: 4.0,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Text(data.nationality),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              data.email,
              style: TTextStyle.getBodyMedium(color: TColor.grey500),
            ),
          ],
        ),
      ],
    );
  }
}
