import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/route_names.dart';
import 'package:tiktok_clone/login/view/login_screen.dart';

import '../../components/button.dart';
import '../../components/text_field.dart';
import '../../components/text_scale_factor.dart';
import '../../constants/color_cnstants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const routeName = signUpScreenRouteName;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _userNameController = TextEditingController();

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
          Stack(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundColor: buttonColor,
              ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextinputField(
              prefixWidget: Icons.person,
              hintText: 'User Name',
              textInputType: TextInputType.text,
              isObscured: false,
              textEditingController: _userNameController,
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
              isObscured: true,
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
              buttonText: 'REGISTER',
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
                'Already have an account? ',
                style: const TextStyle(
                  fontSize: 15,
                ),
                textScaler: gettextScaler(context),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                  );
                },
                child: Text(
                  'Login',
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
