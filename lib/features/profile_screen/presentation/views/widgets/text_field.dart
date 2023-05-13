import 'package:flutter/material.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField(
      {Key? key,
      required this.maxLength,
      required this.maxLine,
      this.onChange,
      this.textController,
      this.suffix,
      this.keyboardType})
      : super(key: key);

  final int maxLength;
  final int maxLine;
  final Function(String)? onChange;
  final TextEditingController? textController;
  final Widget? suffix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      maxLength: maxLength,
      maxLines: maxLine,
      minLines: 1,
      decoration: InputDecoration(
        filled: true,
        counterText: "",
        suffixIcon: suffix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        fillColor: Theme.of(context).colorScheme.secondary,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none),
      ),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
      onChanged: (value) {
        onChange!(value);
      },
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: keyboardType,
    );
  }
}
