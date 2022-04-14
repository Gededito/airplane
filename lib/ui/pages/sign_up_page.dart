import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget inputSection(){
      // Sebuah Widget Name Input
      Widget nameInput(){
        return CustomTextFormField(
            title: 'Full Name',
            hintText: 'Your full name',
        );
      }
      // Sebuah Widget Email Input
      Widget emailInput(){
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
        );
      }
      // Sebuah Widget Password Input
      Widget passwordInput(){
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obscureText: true,
        );
      }
      // Sebuah Widget Name Hobby
      Widget hobbyInput(){
        return CustomTextFormField(
            title: 'Hobby',
            hintText: 'Your hobby',
        );
      }

      // Sebuah Button
      Widget submitButton(){
        return CustomButton(
            title: 'Get Started',
            onPressed: (){
              Navigator.pushNamed(context, '/bonus');
            },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
              defaultRadius
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    // Button TacButton
    Widget tacButton(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}