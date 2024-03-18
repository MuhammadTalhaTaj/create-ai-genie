import 'package:create_ai_genie/ui/auth/sign_up_creator.dart';
import 'package:create_ai_genie/ui/auth/sign_up_enterprise.dart';
import 'package:create_ai_genie/ui/auth/sign_up_user.dart';
import 'package:create_ai_genie/utils/constants/responive.dart';
import 'package:create_ai_genie/utils/extensions/screen_util_extension.dart';
import 'package:create_ai_genie/utils/extensions/text_style_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants/app_spacer_constants.dart';
import '../../utils/constants/scale_factor.dart';
import '../common_widgets/round_button.dart';


class UserSelection extends StatefulWidget {

   UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xffB219F0),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity,),
                Text(
                  'Creat AI Genie',
                  style: context.displayMedium,
                  textScaler: TextScaler.linear(
                    ScaleSize.textScaleFactor(context),
                  ),
                  maxLines: 1,
                ),
                AppSpacer.p10(),
                Text('What describes you best?',style: GoogleFonts.lora(
                  textStyle:context.displayLarge,

                ),
                  textScaler: TextScaler.linear(
                    ScaleSize.textScaleFactor(context),
                  ),),
                Image.asset('assets/images/personSelection.png',height: context.height*0.25,width: context.width*0.8,fit: BoxFit.fitHeight,),

                AppSpacer.p8(),
                SizedBox(width: double.infinity,),
                SizedBox(
                  width: 250,
                  child: RadioListTile(
                    hoverColor: Color(0xffB219F0),
                    fillColor:MaterialStatePropertyAll<Color>(Color(0xffB219F0),) ,
                    title: Text('Personal User',style: context.displaySmall!.copyWith(color: Colors.black),),
                    value: 'Option 1',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value as String?;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 250,

                  child: RadioListTile(
                    hoverColor: Color(0xffB219F0),
                    fillColor:MaterialStatePropertyAll<Color>(Color(0xffB219F0),) ,
                     title: Text('Creator',style:context.displaySmall!.copyWith(color: Colors.black),),
                    value: 'Option 2',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value as String?;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 250,

                  child: RadioListTile(
                    hoverColor: Color(0xffB219F0),
                    fillColor:MaterialStatePropertyAll<Color>(Color(0xffB219F0),) ,
                    title: Text('Enterprise',style: context.displaySmall!.copyWith(color: Colors.black),),
                    value: 'Option 3',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value as String?;
                      });
                    },
                  ),
                ),


              ],
            ),
            Column(
              children: [
                RoundButton(text: 'Continue', voidCallBack: (){
                  if(selectedOption=='Option 1'){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpUser(),));

                  }
                  else if(selectedOption=='Option 2'){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpCreator(),));

                  }
                  else if(selectedOption=='Option 3'){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpEnterprise(),));

                  }
                }),
                AppSpacer.p10(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?',style:GoogleFonts.poppins(textStyle: TextStyle(  fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      height: 1.25, // Corresponds to line height of 17.5px (17.5px / 14px)
                      letterSpacing: -0.01, // -1% of 14px
                      color: Colors.black,),)),
                    TextButton(onPressed: (){

                    }, child: Text('Log In',style: TextStyle(color: Color(0xffB219F0)),)),
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}


