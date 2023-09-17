import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'your_account_viewmodel.dart';

class YourAccountView extends StackedView<YourAccountViewModel> {
  const YourAccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourAccountViewModel viewModel,
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
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Account",
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
                          Column(
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
                              Text(
                                "Jane Doer",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: "Outfit",
                                  fontSize:
                                      18.0, // 1.25rem equivalent in Flutter
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  height: 1.0,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Name",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: "Outfit",
                                fontSize: 20.0, // 1.25rem equivalent in Flutter
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              )),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                              width:
                                  double.infinity, // Make the button width 100%
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(10.0)),
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
                                fontSize: 20.0, // 1.25rem equivalent in Flutter
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              )),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                              width:
                                  double.infinity, // Make the button width 100%
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(10.0)),
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
                                fontSize: 20.0, // 1.25rem equivalent in Flutter
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              )),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                              width:
                                  double.infinity, // Make the button width 100%
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("07777777777"),
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width:
                                double.infinity, // Make the button width 100%
                            child: ElevatedButton(
                              onPressed: () {
                                viewModel.goToFamily();
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
                                        "Family Contacts",
                                        style: TextStyle(color: Colors.black),
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
                  ),
                  Spacer(),
                ],
              )
            ],
          ),
        )));
  }

  @override
  YourAccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourAccountViewModel();
}
