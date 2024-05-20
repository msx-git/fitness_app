import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../controllers/user_controller.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.textController,
    required this.hint,
    this.isPassword = false,
    this.isNumber = false,
    this.isEmail = false,
    this.isFirstName = false,
    this.isLastName = false,
    this.isSingingUp = false,
  });

  final TextEditingController textController;
  final String hint;
  final bool isFirstName;
  final bool isLastName;
  final bool isPassword;
  final bool isEmail;
  final bool isNumber;
  final bool isSingingUp;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;
  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.trim().isEmpty) {
          if (widget.isEmail) {
            return "Enter your email!";
          } else if (widget.isNumber) {
            return "Enter your phone number!";
          } else if (widget.isPassword) {
            return "Enter your password!";
          } else if (widget.isFirstName) {
            return "Enter your firstname!";
          } else if (widget.isLastName) {
            return "Enter your lastname!";
          }
          return "Empty";
        } else if (widget.isEmail) {
          if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
              .hasMatch(value.trim())) {
            return "Please, enter valid email address!";
          } else if (widget.isSingingUp) {
            if (userController.checkForEmailExistence(value.trim())) {
              return "This email is already registered!";
            }
          } else if (!userController.checkForEmailExistence(value.trim())) {
            return "404. Email address not found!";
          }
        } else if (widget.isNumber) {
          if (userController.checkForNumberExistence(value.trim())) {
            return "This phone number is already registered!";
          }
        }
        return null;
      },
      controller: widget.textController,
      style: TextStyles.mainTextMedium.copyWith(
        color: AppColors.grey800,
      ),
      obscureText: !isVisible && widget.isPassword,
      keyboardType: widget.isNumber
          ? TextInputType.phone
          : widget.isEmail
              ? TextInputType.emailAddress
              : TextInputType.text,
      textInputAction:
          widget.isPassword ? TextInputAction.done : TextInputAction.next,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyles.mainTextRegular,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
          borderSide: const BorderSide(color: AppColors.grey200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
          borderSide: const BorderSide(color: AppColors.blue500),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        prefixIcon: Visibility(
          visible: widget.isNumber,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              14.width,
              Image.asset(Assets.iconsFlag),
              6.width,
              SvgPicture.asset(Assets.iconsArrowDown),
              8.width,
              Container(
                width: 1.w,
                height: 26.h,
                color: AppColors.grey200,
              ),
            ],
          ),
        ),
        prefixIconConstraints: BoxConstraints.tight(
          Size(widget.isNumber ? 68.w : 14.w, widget.isNumber ? 26.h : 14.w),
        ),
        suffix: Visibility(
          visible: widget.isPassword,
          child: GestureDetector(
            onTap: () => setState(() => isVisible = !isVisible),
            child: SvgPicture.asset(
                isVisible ? Assets.iconsEyeShow : Assets.iconsEyeHide),
          ),
        ),
        suffixIconConstraints: BoxConstraints.tight(
          Size(20.w, 20.h),
        ),
      ),
    );
  }
}
