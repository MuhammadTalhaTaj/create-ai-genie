import 'package:create_ai_genie/ui/common_widgets/round_button.dart';
import 'package:create_ai_genie/utils/extensions/text_style_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import '../../utils/constants/app_spacer_constants.dart';
import '../../utils/constants/scale_factor.dart';
import 'login.dart';

class SignUpUser extends StatefulWidget {
  SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  bool showProgress = false;
  bool visible = false;

  final _formkey = GlobalKey<FormState>();

  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController mobileController = new TextEditingController();
  final TextEditingController height = new TextEditingController();
  final TextEditingController weight = new TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},

          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xffB219F0),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                        ),
                        Text(
                          'Creat AI Genie',
                          style: context.displayMedium,
                          textScaler: TextScaler.linear(
                            ScaleSize.textScaleFactor(context),
                          ),
                          maxLines: 1,
                        ),
                        AppSpacer.p10(),
                        Text(
                          'Please fill in the details ! ',
                          style: context.displayLarge,
                        ),
                        Stack(
                          children: [
                            SizedBox(
                                height: 90,
                                child: Image.asset(
                                    'assets/icons/sign_person.png')),
                            Positioned(
                                right: 0,
                                bottom: -1,
                                child:
                                    Image.asset('assets/icons/sign_add.png')),
                          ],
                        ),
                        Form(
                          key: _formkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Full Name',
                                    style: context.displaySmall!
                                        .copyWith(color: Color(0xff666666)),
                                  ),
                                  TextFormField(
                                    controller: name,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your Name',
                                      hintStyle:
                                          TextStyle(color: Color(0xffBABABA)),
                                      enabled: true,
                                      contentPadding: const EdgeInsets.only(
                                          left: 14.0, bottom: 8.0, top: 8.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xffCBD2E0)),
                                        borderRadius:
                                            new BorderRadius.circular(8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Color(0xffCBD2E0)),
                                        borderRadius:
                                            new BorderRadius.circular(8),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.length == 0) {
                                        return "Name cannot be empty";
                                      }
                                      if (!RegExp(r'^[a-zA-Z]+$')
                                          .hasMatch(value)) {
                                        return ("Please enter a valid Name only Alphabets");
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (value) {},
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email Id',
                                    style: context.displaySmall!
                                        .copyWith(color: Color(0xff666666)),
                                  ),
                                  TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email id',
                                      enabled: true,
                                    ),
                                    validator: (value) {
                                      if (value!.length == 0) {
                                        return "Email cannot be empty";
                                      }
                                      if (!RegExp(
                                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                          .hasMatch(value)) {
                                        return ("Please enter a valid email");
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (value) {},
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Phone Number',
                                    style: context.displaySmall!
                                        .copyWith(color: Color(0xff666666)),
                                  ),
                                  TextFormField(
                                    controller: mobileController,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your phone number',
                                    ),
                                    validator: (value) {
                                      if (value!.length == 0) {
                                        return "Number cannot be empty";
                                      }
                                      if (!RegExp(r'^[0-9]+$')
                                          .hasMatch(value)) {
                                        return ("Please enter a valid number only numeric");
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (value) {},
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Password',
                                    style: context.displaySmall!
                                        .copyWith(color: Color(0xff666666)),
                                  ),
                                  TextFormField(
                                    obscureText: _isObscure,
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
                                      hintText: 'Enter a strong password',
                                    ),
                                    validator: (value) {
                                      RegExp regex = new RegExp(r'^.{6,}$');
                                      if (value!.isEmpty) {
                                        return "Password cannot be empty";
                                      }
                                      if (!regex.hasMatch(value)) {
                                        return ("please enter valid password min. 6 character");
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        RoundButton(
                            text: 'Sign Up',
                            voidCallBack: () {
                              if (_formkey.currentState!.validate()) {

                              }
                            }),
                        AppSpacer.p10(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account ?',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    height: 1.25,
                                    // Corresponds to line height of 17.5px (17.5px / 14px)
                                    letterSpacing: -0.01,
                                    // -1% of 14px
                                    color: Colors.black,
                                  ),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));

                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(color: Color(0xffB219F0)),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
