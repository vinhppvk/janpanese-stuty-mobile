import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injector.dart';
import '../../../app/utils/enum/snackbar_mode.dart';
import '../../../app/utils/helper/snack_bar.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/loader/overlay_loader.dart';
import '../../../core/error/failure.dart';
import '../../../core/error_handler/error_handler.dart';
import '../../../data/local/local_data_source.dart';
import '../bloc/example_bloc.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final OverlayLoader _overlayLoader = OverlayLoader();
  final LocalDataSource _localDataSource = injector<LocalDataSource>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExampleBloc, ExampleState>(
      listener: (BuildContext context, ExampleState state) {
        _overlayLoader.hide();
        switch (state) {
          case ExampleStateInitial():
            break;
          case ExampleStateLoading():
            _overlayLoader.show(context);
          case ExampleStateLoaded():
            showCustomSnackBar(
              context,
              mode: SnackBarMode.success,
              message: 'Call Example Api Success!',
            );
          case ExampleStateError(failure: final Failure<void> failure):
            ErrorHandler.handleNetworkFailure(context, failure);
        }
      },
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Example Page'),
        onBackPressed: () {
          context.pop();
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          runSpacing: 24.0,
          children: <Widget>[
            PrimaryButton(
              onPressed: _showOverlayLoader,
              child: const Text('Show Loader'),
            ),
            PrimaryButton(
              onPressed: _showErrorDialog,
              child: const Text('Show Error Dialog'),
            ),
            PrimaryButton(
              onPressed: _showErrorSnackBar,
              child: const Text('Show Error Snack-bar'),
            ),
            PrimaryButton(
              onPressed: _callExampleApi,
              child: const Text('Call Json Placeholder Api'),
            ),
            PrimaryButton(
              onPressed: _printLocalData,
              child: const Text('Print Local Data'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showOverlayLoader() async {
    _overlayLoader.show(context);

    await Future<void>.delayed(const Duration(seconds: 5));

    _overlayLoader.hide();
  }

  void _showErrorDialog() {
    ErrorHandler.showErrorDialog(context, onPrimaryAction: () {});
  }

  void _showErrorSnackBar() {
    ErrorHandler.showErrorSnackBar(context, message: 'An error occurred!');
  }

  Future<void> _callExampleApi() async {
    context.read<ExampleBloc>().add(const ExampleEvent.started());
  }

  void _printLocalData() {
    final LocalDataSource localDataSource = injector<LocalDataSource>();
    debugPrint(localDataSource.getAccessToken());
    debugPrint(localDataSource.getRefreshToken());
    debugPrint(localDataSource.getLanguage().toString());
    debugPrint(localDataSource.getEmail());
    debugPrint(localDataSource.getNickName());
    debugPrint(localDataSource.getRememberMe().toString());
  }
}
