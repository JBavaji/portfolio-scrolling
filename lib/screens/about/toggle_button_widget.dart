import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onButtonClick;

  const ToggleButtonWidget({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onButtonClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int flex = 1;
    Color color = Colors.white;
    Color? textColor;
    if (isSelected) {
      color = Colors.green;
      textColor = Colors.white;
      flex = 2;
    }
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: onButtonClick,
        child: Container(
          alignment: Alignment.center,
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontWeight: FontWeight.w500, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
