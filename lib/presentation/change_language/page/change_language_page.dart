import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/enum/app_language.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/card/outline_card.dart';
import '../bloc/change_language_cubit.dart';

part '../widget/scaffold.dart';

part '../widget/header.dart';

part '../widget/language_list.dart';

part '../widget/language_tile.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({super.key});

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  List<AppLanguage> get _appLanguages => AppLanguage.values;

  @override
  void initState() {
    super.initState();
    context.read<ChangeLanguageCubit>().loadSavedLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
      builder: (BuildContext context, ChangeLanguageState state) {
        switch (state) {
          case ChangeLanguageStateInitial():
            return const SizedBox.shrink();
          case ChangeLanguageStateLoadedLocal(
              language: final AppLanguage? appLanguage
            ):
          case ChangeLanguageStateChanged(
              language: final AppLanguage? appLanguage
            ):
            return _Scaffold(
              header: const _Header(),
              languageList: _LanguageList(
                selectedLanguage: appLanguage ?? AppLanguage.defaultLanguage,
                languageList: _appLanguages,
                onSelectItem: _onLanguageItemSelected,
              ),
            );
        }
      },
    );
  }

  void _onLanguageItemSelected(AppLanguage appLanguage) {
    context.read<ChangeLanguageCubit>().setAppLanguage(appLanguage);
  }
}
