import 'package:flutter/material.dart';
import 'package:news_web/common/widgets/responsive.dart';
import 'package:news_web/utils/extensions/context_ext.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, this.onPressed, this.name});

  final VoidCallback? onPressed;
  final String? name;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  void onHovered(_) {
    setState(() {
      _isHovered = !_isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return InkWell(
      onTap: widget.onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: onHovered,
        onExit: onHovered,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            // color: theme.primaryColor.withOpacity(_isHovered ? 1 : 0.3),
            // borderRadius: BorderRadius.circular(20),
            color: theme.colorScheme.primary,
            border: Border.all(
              color: theme.primaryColor,
            ),
          ),
          child: Text(
            widget.name ?? "",
            style: theme.textTheme.bodyMedium?.copyWith(
              // color: _isHovered
              //     ? theme.colorScheme.onPrimary
              //     : theme.colorScheme.onSurface,
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
