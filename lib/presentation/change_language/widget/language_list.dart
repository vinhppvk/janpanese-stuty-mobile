part of '../page/change_language_page.dart';

class _LanguageList extends StatelessWidget {
  const _LanguageList({
    super.key,
    required this.selectedLanguage,
    required this.languageList,
    required this.onSelectItem,
  });

  final AppLanguage selectedLanguage;
  final List<AppLanguage> languageList;
  final Function(AppLanguage) onSelectItem;
 
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: languageList.length,
      separatorBuilder: (BuildContext context, int index) =>
      const SizedBox(height: 24.0),
      itemBuilder: (BuildContext context, int index) {
        final AppLanguage appLanguage = languageList[index];
        return _LanguageTile(
          appLanguage: appLanguage,
          selected: appLanguage == selectedLanguage,
          onTap: onSelectItem,
        );
      },
    );
  }
}