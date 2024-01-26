part of '../page/change_language_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.header,
    required this.languageList,
  });

  final Widget header;
  final Widget languageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Language'),
        onBackPressed: () => context.pop(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
        child: Column(
          children: <Widget>[
            header,
            const SizedBox(height: 40.0),
            languageList
          ],
        ),
      ),
    );
  }
}