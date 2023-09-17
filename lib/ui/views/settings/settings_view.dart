import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
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
                            viewModel.goBack();
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Settings",
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Container(
                            height: 610,
                            child: ListView(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFFFFFFF')),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.notifications,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Notifications",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Switch(
                                          onChanged:
                                              viewModel.toggleNotifications,
                                          value: viewModel.notifications,
                                          activeColor: Colors.blue,
                                          activeTrackColor: Colors.yellow,
                                          inactiveThumbColor: Colors.redAccent,
                                          inactiveTrackColor: Colors.orange,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: ElevatedButton(
                                    onPressed: () {
                                      viewModel.goToPasswordManager();
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFFFFFFF')),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Password Manager",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Implement the login logic
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(int.parse('0xFFFFFFFF')),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.delete,
                                              color: Color(0xFFFF0000),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Delete Account",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
