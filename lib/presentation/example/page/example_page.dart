import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/utils/enum/snackbar_mode.dart';
import '../../../app/utils/helper/snack_bar.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/dialog/custom_alert_dialog.dart';
import '../../../app/widget/loader/overlay_loader.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final OverlayLoader _overlayLoader = OverlayLoader();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Example Page'),
        onBackPressed: () {
          context.pop();
        },
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            runSpacing: 24.0,
            children: <Widget>[
              PrimaryButton(
                text: const Text('Show Loader'),
                onPressed: _showOverlayLoader,
              ),
              PrimaryButton(
                text: const Text('Show Error Dialog'),
                onPressed: _showErrorDialog,
              ),
              PrimaryButton(
                text: const Text('Show Error Snack-bar'),
                onPressed: _showErrorSnackBar,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOverlayLoader() async {
    _overlayLoader.show(context);

    await Future<void>.delayed(const Duration(seconds: 5));

    _overlayLoader.hide();
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog.error(
          title: const Text('An Error Occurred!'),
          message: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet mollis libero.'),
          onPrimaryAction: () {},
        );
      },
    );
  }

  void _showErrorSnackBar() {
    showCustomSnackBar(
      context,
      mode: SnackBarMode.error,
      message: 'An error occurred!',
    );
  }
}
