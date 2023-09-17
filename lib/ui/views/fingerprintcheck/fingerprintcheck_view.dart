import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'fingerprintcheck_viewmodel.dart';

class FingerprintcheckView extends StackedView<FingerprintcheckViewModel> {
  const FingerprintcheckView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FingerprintcheckViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  FingerprintcheckViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FingerprintcheckViewModel();
}
