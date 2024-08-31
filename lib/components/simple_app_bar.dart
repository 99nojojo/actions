import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SimpleAppBar(
      {super.key,
      required this.center,
      this.isDarkTheme = true,
      this.backListener});

  final Widget center;
  final bool isDarkTheme;
  final VoidCallback? backListener;

  @override
  State<SimpleAppBar> createState() => _SimpleAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class _SimpleAppBarState extends State<SimpleAppBar> {
  SystemUiOverlayStyle styleForBrightness(Brightness brightness,
      [Color? backgroundColor]) {
    final SystemUiOverlayStyle style = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;
    // For backward compatibility, create an overlay style without system navigation bar settings.
    return SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
      statusBarBrightness: style.statusBarBrightness,
      statusBarIconBrightness: style.statusBarIconBrightness,
      systemStatusBarContrastEnforced: style.systemStatusBarContrastEnforced,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: styleForBrightness(
    //       widget.isDarkTheme ? Brightness.light : Brightness.dark),
    //   child: ,
    // );
    // var canBack = Navigator.of(context).canPop();
    return Row(
      children: [
        // 10.hGap,
        // canBack
        //     ?
        BackButton(
          onPressed: () {
            if (widget.backListener != null) {
              widget.backListener?.call();
            } else {
              Navigator.of(context).maybePop();
            }
          },
        )
        // : const SizedBox()
        ,
        Container(
          alignment: Alignment.center,
          child: widget.center,
        )
      ],
    );
  }
}
