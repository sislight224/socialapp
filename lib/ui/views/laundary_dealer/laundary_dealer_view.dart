import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'laundary_dealer_viewmodel.dart';

class LaundaryDealerView extends StackedView<LaundaryDealerViewModel> {
  const LaundaryDealerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LaundaryDealerViewModel viewModel,
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
  LaundaryDealerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LaundaryDealerViewModel();
}
