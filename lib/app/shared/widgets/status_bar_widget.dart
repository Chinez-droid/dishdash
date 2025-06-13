import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarWidget extends StatelessWidget {
  final Widget child;
  final Color? statusBarColor;
  final Brightness? statusBarIconBrightness;
  final Brightness? statusBarBrightness;

  const StatusBarWidget({
    super.key,
    required this.child,
    this.statusBarColor = Colors.transparent,
    this.statusBarIconBrightness = Brightness.dark,
    this.statusBarBrightness = Brightness.light,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarBrightness: statusBarBrightness,
      ),
      child: child,
    );
  }
}
