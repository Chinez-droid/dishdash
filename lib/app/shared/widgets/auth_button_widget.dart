import 'package:flutter/material.dart';
import 'package:dishdash/app/shared/shared.dart';

class AuthButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool showArrow;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isOutlined;

  const AuthButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.showArrow = false,
    this.backgroundColor,
    this.textColor,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color:
            isOutlined
                ? Colors.transparent
                : (backgroundColor ?? AppColors.primary100),
        borderRadius: BorderRadius.circular(12),
        border:
            isOutlined ? Border.all(color: AppColors.grey4, width: 1) : null,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                showArrow
                    ? Stack(
                      children: [
                        Center(
                          child: Text(
                            text,
                            style: textStylew600.copyWith(
                              fontSize: 16,
                              color: textColor ?? Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: Image.asset(
                              Images.arrowRight,
                              width: 20,
                              height: 20,
                              color: textColor ?? Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                    : Center(
                      child: Text(
                        text,
                        style: textStylew600.copyWith(
                          fontSize: 16,
                          color: textColor ?? Colors.white,
                        ),
                      ),
                    ),
          ),
        ),
      ),
    );
  }
}