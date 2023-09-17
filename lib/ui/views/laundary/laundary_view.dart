import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'laundary_viewmodel.dart';

class LaundaryView extends StackedView<LaundaryViewModel> {
  const LaundaryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LaundaryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            print("Being Clicked");
                            viewModel.goBack();
                            print("action finished");
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Loundary",
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(int.parse('0xFFD9D9D9')),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Color(int.parse('0xFFD9D9D9')),
                          ),
                          child: IconButton(
                            onPressed: () {
                              viewModel.gotoProfile();
                            },
                            icon: Icon(Icons.person),
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'List of Loundary Dealers',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Outfit',
                        fontSize: 24.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  LaundaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LaundaryViewModel();
}
