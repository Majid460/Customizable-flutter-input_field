import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.widget,
    required this.onTap,
    this.padding = EdgeInsets.zero,
    this.radius = BorderRadius.zero,
    required this.size,
    this.bgColor,
  });

  final Widget? widget;
  final Function onTap;
  final EdgeInsets padding;
  final BorderRadius radius;
  final Size size;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? context.theme.colorScheme.primary,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        overlayColor: RippleOverlayColor(context.theme.primaryColor),
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: Padding(padding: padding, child: widget)),
        onTap: () => onTap.call(),
      ),
    );
  }
}

@immutable
class RippleOverlayColor extends WidgetStateProperty<Color?> {
  RippleOverlayColor(this.primary);

  final Color primary;

  @override
  Color? resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.hovered)) {
      return primary.withOpacity(0.04);
    }
    if (states.contains(WidgetState.focused) ||
        states.contains(WidgetState.pressed)) {
      return primary.withOpacity(0.12);
    }
    return null;
  }

  @override
  String toString() {
    return '{hovered: ${primary.withOpacity(0.04)}, focused,pressed: ${primary.withOpacity(0.12)}, otherwise: null}';
  }
}
