import 'package:flutter/material.dart';
import 'package:tiktok_clone/components/button.dart';
import 'package:tiktok_clone/components/text_field.dart';
import 'package:tiktok_clone/constants/color_cnstants.dart';
import 'package:tiktok_clone/constants/route_names.dart';
import 'package:tiktok_clone/signup/view/signup_screen.dart';

import '../../components/text_scale_factor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = loginScreenRouteName;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TikTok',
            style: TextStyle(
              fontSize: 35,
              color: buttonColor,
              fontWeight: FontWeight.w900,
            ),
            textScaler: gettextScaler(context),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextinputField(
              prefixWidget: Icons.email,
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              isObscured: false,
              textEditingController: _emailController,
              validator: null,
              suffixWidget: null,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextinputField(
              prefixWidget: Icons.lock,
              hintText: 'Password',
              textInputType: TextInputType.text,
              isObscured: isPasswordVisible,
              textEditingController: _pwdController,
              validator: null,
              suffixWidget: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(
                  (!isPasswordVisible)
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            height: 70,
            child: Button(
              buttonText: 'LOGIN',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account? ',
                style: const TextStyle(
                  fontSize: 15,
                ),
                textScaler: gettextScaler(context),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SignUpScreen.routeName,
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                    color: buttonColor,
                  ),
                  textScaler: gettextScaler(context),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
