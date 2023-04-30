import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'picker_button.dart';

class QuantityPickerView extends StatefulWidget {
  const QuantityPickerView({Key? key}) : super(key: key);

  @override
  State<QuantityPickerView> createState() => _QuantityPickerViewState();
}

class _QuantityPickerViewState extends State<QuantityPickerView> {
  int _quantity = 1;

  _increaseQuantity() {
    if (_quantity < 10) {
      setState(() {
        _quantity++;
      });
    }
  }

  _decreaseQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonPicker(
          icon: Icons.remove,
          onClick: _decreaseQuantity,
        ),
        SizedBox(
          width: 40.w,
        ),
        SizedBox(
          width: 30,
          child: Text(
            '$_quantity',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 32.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 40.w,
        ),
        ButtonPicker(
          icon: Icons.add_rounded,
          onClick: _increaseQuantity,
        ),
      ],
    );
  }
}
