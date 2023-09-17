import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'deposit_viewmodel.dart';

class DepositView extends StackedView<DepositViewModel> {
  const DepositView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DepositViewModel viewModel,
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
                          onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Deposit",
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
                                Text("Credit & Debit Card",
                                    style: TextStyle(
                                        color: Color(0xFF466FE6),
                                        fontFamily: "Outfit",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Color(0xFF466FE6),
                                    ),
                                    Text("Add a new card",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Outfit",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("More Payment Options",
                                    style: TextStyle(
                                        color: Color(0xFF466FE6),
                                        fontFamily: "Outfit",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.paypal_rounded,
                                          color: Color(0xFF466FE6),
                                        ),
                                        Text("Paypal",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Outfit",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w900)),
                                      ],
                                    ),
                                    Text("Link",
                                        style: TextStyle(
                                            color: Color(0xFF466FE6),
                                            fontFamily: "Outfit",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ],
                                ),
                                SizedBox(height: 10),
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
  DepositViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DepositViewModel();
}
