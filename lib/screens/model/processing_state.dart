import 'package:flutter/material.dart';

enum ProcessingState { initial, processing, success, error }

extension ProcessingResultMessage on ProcessingState {
  void showMessage({
    required ProcessingState result,
    String? name,
    required BuildContext context,
  }) {
    SnackBar snackBar = SnackBar(
      content: Text(
        result == ProcessingState.success
            ? 'Thank you $name for reaching out. We will get back to you soon.'
            : 'Oops, Something went wrong. Please try again later.',
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.white),
      ),
      backgroundColor:
          result == ProcessingState.success ? Colors.green : Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
