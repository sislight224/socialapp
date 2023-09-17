import 'package:flutter/material.dart';
import 'package:social_services/ui/components/transaction.dart';
import 'package:stacked/stacked.dart';

import 'balance_payment_viewmodel.dart';

class BalancePaymentView extends StackedView<BalancePaymentViewModel> {
  const BalancePaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BalancePaymentViewModel viewModel,
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
                        "Balance & Profit",
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
                                Text("Current Balance",
                                    style: TextStyle(
                                        color: Colors.black,
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
                                    Text("Balance",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Outfit",
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.w900)),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Color(0xFF466FE6),
                                              width: 2)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 0),
                                        child: Text("200€",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Outfit",
                                                fontSize: 32.0,
                                                fontWeight: FontWeight.w900)),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Recent Transactions",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Outfit",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  height: 10,
                                ),
                                Transaction(
                                    from: "Your Account",
                                    to: "Jane Doe",
                                    image: "fsadfa",
                                    amount: "-200"),
                                SizedBox(height: 10),
                                Transaction(
                                    from: "Your Account",
                                    to: "Jane Doe",
                                    image: "fsadfa",
                                    amount: "-200"),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: double
                                      .infinity, // Make the button width 100%
                                  child: ElevatedButton(
                                    onPressed: () {
                                      viewModel.goToDeposit();
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
                                            Text(
                                              "Deposit",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Outfit",
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w700),
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
  BalancePaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BalancePaymentViewModel();
}
