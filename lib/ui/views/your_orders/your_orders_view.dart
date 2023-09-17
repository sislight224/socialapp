import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'your_orders_viewmodel.dart';

class YourOrdersView extends StackedView<YourOrdersViewModel> {
  const YourOrdersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourOrdersViewModel viewModel,
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
  YourOrdersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourOrdersViewModel();
}
