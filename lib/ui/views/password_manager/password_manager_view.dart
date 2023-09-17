import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'password_manager_viewmodel.dart';

class PasswordManagerView extends StackedView<PasswordManagerViewModel> {
  const PasswordManagerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PasswordManagerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
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
                      "Password Manager",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: "Outfit",
                        fontSize: 24.0,
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
                              Text("Name",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Jane Doer"),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Email",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("janedoer@gmial.com"),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Phone Number",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "Outfit",
                                    fontSize:
                                        20.0, // 1.25rem equivalent in Flutter
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0,
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("07777777777"),
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
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
                                        Color(int.parse('0xFF466FE6')),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text("Change Password",
                                          style: TextStyle(
                                            color: Color(0xFFFFFFFFF),
                                            fontFamily: "Outfit",
                                            fontSize:
                                                20.0, // 1.25rem equivalent in Flutter
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            height: 1.0,
                                          )),
                                    )),
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
        )));
  }

  @override
  PasswordManagerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PasswordManagerViewModel();
}
