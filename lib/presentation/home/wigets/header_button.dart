import 'package:flutter/material.dart';
import 'package:news_web/utils/extensions/context_ext.dart';

class HeaderButton extends StatefulWidget {
  const HeaderButton({
    super.key,
    this.onPressed,
    this.icon,
    this.name,
    this.showIcon,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final String? name;
  final bool? showIcon;

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
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
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: widget.onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: onHovered,
          onExit: onHovered,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.showIcon ?? false)
                Icon(
                  widget.icon,
                  size: 20,
                  color: _isHovered ? Colors.red : Colors.black,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  widget.name ?? "",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _isHovered ? Colors.red : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
