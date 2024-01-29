part of '../page/change_language_page.dart';

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    super.key,
    required this.appLanguage,
    required this.selected,
    required this.onTap,
  });

  final AppLanguage appLanguage;
  final bool selected;
  final Function(AppLanguage appLanguage) onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedBorderCard(
      onTap: () => onTap(appLanguage),
      borderColor: selected ? TColor.primary500 : null,
      backgroundColor: selected ? TColor.primary100 : null,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: TColor.grey900.withOpacity(.25),
                  offset: const Offset(0, 1),
                  blurRadius: 4.0,
                )
              ],
            ),
            child: Flag.fromCode(
              appLanguage.flagsCode,
              width: 48.0,
              height: 34.0,
              fit: BoxFit.cover,
              borderRadius: 4.0,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              appLanguage.countryName,
              style: TTextStyle.getBodyLarge(
                fontWeight: TFontWeight.bold,
                color: selected
                    ? context.colorScheme.primary
                    : context.colorScheme.surfaceTint,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          IgnorePointer(
            child: SizedBox.square(
              dimension: 24.0,
              child: Checkbox(
                value: selected,
                onChanged: (_) {},
                shape: const CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}