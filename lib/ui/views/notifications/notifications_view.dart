import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'notifications_viewmodel.dart';

class NotificationsView extends StackedView<NotificationsViewModel> {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotificationsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Align widgets to the left
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back_ios)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Notifications",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: "Outfit",
                                fontSize: 32.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            )
                          ]),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align widgets to the left
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("All notifications"),
                          )
                        ],
                      )
                    ]))));
  }

  @override
  NotificationsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotificationsViewModel();
}
