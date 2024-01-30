part of '../../page/teacher_detail_page.dart';

class _Footer extends StatelessWidget {
  const _Footer({
    this.titleTextSpans,
    this.onButtonPressed,
  });

  final List<InlineSpan>? titleTextSpans;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: Border(
          top: BorderSide(
            width: 1.5,
            color: context.colorScheme.outline,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          if (titleTextSpans != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text.rich(
                style: TTextStyle.getBodySmall(),
                textAlign: TextAlign.center,
                TextSpan(
                  children: titleTextSpans,
                )
              ),
            ),
          PrimaryButton(
            size: const Size.fromHeight(48.0),
            onPressed: onButtonPressed,
            child: const Text('Book'),
          ),
        ],
      ),
    );
  }
}
