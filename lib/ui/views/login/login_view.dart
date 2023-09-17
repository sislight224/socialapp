import 'package:flutter/material.dart';
import 'package:social_services/ui/components/inputWithIcon.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Outfit',
                fontSize: 2.5 * 16.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                height: 1.0,
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Color(0xFF6B5E5E),
                  fontFamily: 'Outfit',
                  fontSize: 1.25 * 16.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'By signing in you are agreeing our ',
                  ),
                  TextSpan(
                    text: 'Term',
                    style: TextStyle(
                      color: Color(0xFF0386D0),
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                  ),
                  TextSpan(
                    text: 'privacy policy',
                    style: TextStyle(
                      color: Color(0xFF0386D0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            CustomButtonWithIcon(
              labelText: 'Email',
              icon: Icons.mail,
              obscureText: false,
              onPressed: () {},
            ),
            SizedBox(height: 20.0),
            CustomButtonWithIcon(
              labelText: 'Password',
              icon: Icons.lock,
              obscureText: true,
              onPressed: () {},
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (value) {
                    // Handle checkbox state change
                  },
                ),
                Text('Remember me'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Implement the logic for "Forgot Password"
                  },
                  child: Text('Forgot Password?'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity, // Make the button width 100%
              child: ElevatedButton(
                onPressed: () {
                  // Implement the login logic
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(int.parse('0xFF466FE6')),
                  ),
                ),
                child: Text('Login'),
              ),
            ),
            GestureDetector(
              onTap: () {
                viewModel.goToSignup();
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xFF6B5E5E),
                    fontFamily: 'Outfit',
                    fontSize: 1.25 * 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Not a member ?',
                    ),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Color(0xFF0386D0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Text("Login with touch id"),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(int.parse('0xFFD9D9D9')),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.fingerprint),
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
