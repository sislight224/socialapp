import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'become_provider_viewmodel.dart';

class BecomeProviderView extends StackedView<BecomeProviderViewModel> {
  const BecomeProviderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BecomeProviderViewModel viewModel,
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
  BecomeProviderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BecomeProviderViewModel();
}
