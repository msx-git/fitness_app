import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/models/user.dart';
import 'package:fitness_app/ui/auth/sign_in.dart';
import 'package:fitness_app/ui/auth/widgets/action_button.dart';
import 'package:fitness_app/ui/auth/widgets/custom_text_field.dart';
import 'package:fitness_app/ui/auth/widgets/page_indicator.dart';
import 'package:fitness_app/ui/auth/widgets/quote_item.dart';
import 'package:fitness_app/ui/auth/widgets/term_and_conditions.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/user_controller.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final controller = PageController();

  final userController = UserController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
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
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyles.mainTextBold,
                    ),
                    10.height,
                    Text(
                      'Hello there! Let’s create your account.',
                      textAlign: TextAlign.center,
                      style: TextStyles.mainTextMedium,
                    ),
                    32.height,
                    AppTextField(
                      textController: firstNameController,
                      hint: 'First name',
                      isFirstName: true,
                    ),
                    26.height,
                    AppTextField(
                      textController: lastNameController,
                      hint: 'Last name',
                      isLastName: true,
                    ),
                    26.height,
                    AppTextField(
                      textController: emailController,
                      hint: 'Email address',
                      isEmail: true,
                      isSingingUp: true,
                    ),
                    26.height,
                    AppTextField(
                      textController: numberController,
                      hint: 'Phone Number',
                      isNumber: true,
                      isSingingUp: true,
                    ),
                    26.height,
                    AppTextField(
                        textController: passwordController,
                        hint: 'Password',
                        isPassword: true),
                    16.height,
                    const TermsAndConditions(),
                    32.height,

                    /// SignUp Button ----------------------------------
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          userController.signUp(
                            user: User(
                              firstName: firstNameController.text.trim(),
                              lastName: lastNameController.text.trim(),
                              email: emailController.text.trim(),
                              number: numberController.text.trim(),
                              password: passwordController.text.trim(),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>  SignIn(),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Registered successfully!'),
                            ),
                          );
                        }
                      },
                      child: const ActionButton(
                        text: 'Create account',
                        buttonColor: AppColors.blue500,
                        textColor: AppColors.white,
                      ),
                    ),
                    32.height,
                    const Divider(color: AppColors.grey200),
                    32.height,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Joined us before?',
                        style: TextStyles.mainTextRegular.copyWith(
                          color: AppColors.grey700,
                        ),
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: TextStyles.buttonText,
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => Navigator.of(context).pushReplacement(
                                        CupertinoPageRoute(
                                            builder: (context) => SignIn()),
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
