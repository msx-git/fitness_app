import 'package:fitness_app/ui/auth/sign_up.dart';
import 'package:fitness_app/ui/auth/signed_in.dart';
import 'package:fitness_app/ui/auth/widgets/login_social_button.dart';
import 'package:fitness_app/ui/auth/widgets/remember.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../controllers/user_controller.dart';
import '../../generated/assets.dart';
import '/utils/extensions.dart';
import 'widgets/action_button.dart';
import 'widgets/custom_text_field.dart';
import 'widgets/page_indicator.dart';
import 'widgets/quote_item.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final controller = PageController();
  final userController = UserController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue500,
      body: Form(
        key: formKey,
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(
                width: 375.w,
                height: 278.h,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      Assets.imagesDottedBackground,
                      width: 375.w,
                      fit: BoxFit.fitWidth,
                    ),
                    PageView(
                      controller: controller,
                      children: const [
                        QuoteItem(
                          quote:
                              "“I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. Twenty-six times I’ve been trusted to take the game-winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.”",
                          name: 'Michael Jordan',
                          profession: "Basketball Player",
                          imageLink: Assets.imagesJordan,
                        ),
                        QuoteItem(
                          quote:
                              "\"I hated every minute of training, but I said, 'Don't quit. Suffer now and live the rest of your life as a champion.' The fight is won or lost far away from witnesses, behind the lines, in the gym, and out there on the road, long before I dance under those lights.\"",
                          name: "Muhammad Ali",
                          profession: "Professional Boxer and Activist",
                          imageLink: Assets.imagesMuhammadAli,
                        ),
                        QuoteItem(
                          quote:
                              "\"I really think a champion is defined not by their wins but by how they can recover when they fall. I've had to learn to fight all my life - got to learn to keep smiling. If you smile, things will work out. It's amazing how much energy a smile can generate.\"",
                          name: "Serena Williams",
                          profession: "Tennis Player",
                          imageLink: Assets.imagesSerena,
                        ),
                        QuoteItem(
                          quote:
                              "\"I didn't come this far to only come this far, so we've still got further to go. When you're one of the leaders of the team, there are no days off. You're committed every day to try to do things better and to try to improve. I think that's the commitment that everyone should have.\"",
                          name: "Tom Brady",
                          profession: "Football quarterback",
                          imageLink: Assets.imagesTom,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: PageIndicator(controller: controller, count: 4),
                    ),
                  ],
                ),
              ),
            ),
            18.height,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34.r),
                    topRight: Radius.circular(34.r),
                  ),
                ),
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyles.mainTextBold,
                    ),
                    10.height,
                    Text(
                      'Welcome back! Please enter your details.',
                      textAlign: TextAlign.center,
                      style: TextStyles.mainTextMedium,
                    ),
                    24.height,
                    AppTextField(
                      textController: emailController,
                      hint: 'Email address',
                      isEmail: true,
                    ),
                    26.height,
                    AppTextField(
                      textController: passwordController,
                      hint: 'Password',
                      isPassword: true,
                    ),
                    16.height,
                    const Remember(),
                    24.height,

                    /// Login button ----------------------------------------------
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          if (userController.emailPasswordMatches(
                              emailController.text.trim(),
                              passwordController.text.trim())) {
                            Navigator.of(context).pushAndRemoveUntil(
                              CupertinoPageRoute(
                                builder: (context) => SignedIn(),
                              ),
                              (Route<dynamic> route) => route is SignedIn,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Wrong password!'),
                              ),
                            );
                          }
                        }
                      },
                      child: const ActionButton(
                        text: 'Join now',
                        buttonColor: AppColors.blue500,
                        textColor: AppColors.white,
                      ),
                    ),
                    17.height,
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?',
                          style: TextStyles.buttonText),
                    ),
                    32.height,
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                                color: AppColors.grey200, thickness: 1.w)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Text('or', style: TextStyles.mainTextRegular),
                        ),
                        Expanded(
                            child: Divider(
                                color: AppColors.grey200, thickness: 1.w)),
                      ],
                    ),
                    24.height,
                    const LoginSocialButton(
                      text: 'Login with Google',
                      company: 'Google',
                    ),
                    20.height,
                    const LoginSocialButton(
                      text: 'Login with Facebook',
                      company: 'Facebook',
                    ),
                    20.height,
                    const LoginSocialButton(
                      text: 'Login with Apple',
                      company: 'Apple',
                    ),
                    24.height,
                    const Divider(color: AppColors.grey200),
                    24.height,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'First time here?',
                        style: TextStyles.mainTextRegular.copyWith(
                          color: AppColors.grey700,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign up for free',
                            style: TextStyles.buttonText,
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => Navigator.of(context).pushReplacement(
                                        CupertinoPageRoute(
                                            builder: (context) => SignUp()),
                                      ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
