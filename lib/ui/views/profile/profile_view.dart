import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
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
                        "Profile",
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
                                Center(
                                  child: Container(
                                    width:
                                        100, // Adjust the width of the circular image
                                    height:
                                        100, // Adjust the height of the circular image
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://googleflutter.com/sample_image.jpg'),
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.edit),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: ElevatedButton(
                                    onPressed: () {
                                      viewModel.goToYourAccount();
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Your Account",
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
                                              Icons.abc_outlined,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Your Orders",
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Become a service provider",
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
                                      viewModel.goToSettings();
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
                                              Icons.settings,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Settings",
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
                                      viewModel.goToBalancePayment();
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Balance & Payment",
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
                                              Icons.credit_card,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Plan & Membership",
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
                                      viewModel.goToPrivacyPolicy();
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Privacy Policy",
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Help center",
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
                                              Icons.person_2_rounded,
                                              color: Color(0xFF466FE6),
                                            ),
                                            SizedBox(
                                              width: 1.0,
                                            ),
                                            Text(
                                              "Logout",
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
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
