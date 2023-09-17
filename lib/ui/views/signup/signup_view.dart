import 'package:flutter/material.dart';
import 'package:social_services/ui/components/inputWithIcon.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  height: 400, // Adjust the height as needed
                  child: Column(
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Outfit',
                          fontSize: 2.5 * 16.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Expanded(
                        child: Stepper(
                          elevation: 0,
                          controlsBuilder: controlBuilders,
                          type: StepperType.horizontal,
                          physics: const ScrollPhysics(),
                          onStepTapped: (value) {
                            viewModel.goToStep(value);
                          },
                          onStepContinue: () {
                            viewModel.goToNextStep();
                          },
                          onStepCancel: () {
                            viewModel.goToPreviousStep();
                          },
                          currentStep: viewModel.currentStep,
                          steps: [
                            Step(
                              title: const Text(''),
                              content: Column(
                                children: [
                                  Text(
                                    "Personal Information",
                                    style: TextStyle(
                                      color: Color(0xFF6B5E5E),
                                      fontFamily: 'Outfit',
                                      fontSize: 2.5 * 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'First Name',
                                    icon: Icons.person,
                                    obscureText: false,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Last Name',
                                    icon: Icons.person,
                                    obscureText: false,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'National ID',
                                    icon: Icons.credit_card,
                                    obscureText: false,
                                  ),
                                ],
                              ),
                              isActive: viewModel.currentStep == 0,
                            ),
                            Step(
                              title: const Text(''),
                              content: Column(
                                children: [
                                  const Text(
                                    "Credentials and Email",
                                    style: TextStyle(
                                      color: Color(0xFF6B5E5E),
                                      fontFamily: 'Outfit',
                                      fontSize: 2.5 * 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Email',
                                    icon: Icons.mail,
                                    obscureText: false,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Password',
                                    icon: Icons.lock,
                                    obscureText: true,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Confirm Password',
                                    icon: Icons.lock,
                                    obscureText: true,
                                  ),
                                ],
                              ),
                              isActive: viewModel.currentStep == 1,
                            ),
                            Step(
                              title: const Text(''),
                              content: Column(
                                children: [
                                  const Text(
                                    "Additional Information",
                                    style: TextStyle(
                                      color: Color(0xFF6B5E5E),
                                      fontFamily: 'Outfit',
                                      fontSize: 2.5 * 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Telephone',
                                    icon: Icons.phone,
                                    obscureText: false,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Address',
                                    icon: Icons.location_on,
                                    obscureText: false,
                                  ),
                                  CustomButtonWithIcon(
                                    onPressed: () {},
                                    labelText: 'Gender',
                                    icon: Icons.person_outline,
                                    obscureText: false,
                                  ),
                                ],
                              ),
                              isActive: viewModel.currentStep == 2,
                            ),
                            Step(
                              title: const Text(''),
                              content: Column(
                                children: [
                                  const Text(
                                    "Profile",
                                    style: TextStyle(
                                      color: Color(0xFF6B5E5E),
                                      fontFamily: 'Outfit',
                                      fontSize: 2.5 * 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      height: 1.0,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Implement the logic for photo input
                                    },
                                    child: Text('Upload Photo'),
                                  ),
                                ],
                              ),
                              isActive: viewModel.currentStep == 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}
