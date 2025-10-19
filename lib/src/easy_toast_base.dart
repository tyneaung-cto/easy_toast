import 'package:flutter/material.dart';

/// A lightweight toast utility for Flutter.
/// Usage:
/// ```dart
/// EasyToast.show(context, 'Hello World!');
/// ```
class EasyToast {
  /// Show a toast message.
  static void show(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    double fontSize = 14.0,
    double borderRadius = 8.0,
    EdgeInsets padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 10,
    ),
    ToastGravity gravity = ToastGravity.bottom,
  }) {
    final overlay = Overlay.of(context);
    if (overlay == null) return;

    final overlayEntry = OverlayEntry(
      builder: (context) => _ToastWidget(
        message: message,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize,
        borderRadius: borderRadius,
        padding: padding,
        gravity: gravity,
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration, overlayEntry.remove);
  }
}

/// Toast position options.
enum ToastGravity { top, center, bottom }

/// Internal widget that renders the toast.
class _ToastWidget extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double borderRadius;
  final EdgeInsets padding;
  final ToastGravity gravity;

  const _ToastWidget({
    required this.message,
    required this.backgroundColor,
    required this.textColor,
    required this.fontSize,
    required this.borderRadius,
    required this.padding,
    required this.gravity,
  });

  @override
  Widget build(BuildContext context) {
    Alignment alignment;
    switch (gravity) {
      case ToastGravity.top:
        alignment = Alignment.topCenter;
        break;
      case ToastGravity.center:
        alignment = Alignment.center;
        break;
      case ToastGravity.bottom:
      default:
        alignment = Alignment.bottomCenter;
    }

    return Positioned.fill(
      child: IgnorePointer(
        child: Container(
          alignment: alignment,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: padding,
              decoration: BoxDecoration(
                color: backgroundColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Text(
                message,
                style: TextStyle(color: textColor, fontSize: fontSize),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
