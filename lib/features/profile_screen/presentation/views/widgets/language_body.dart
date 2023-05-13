import 'package:flutter/material.dart';

class LanguageBody extends StatefulWidget {
  const LanguageBody({Key? key}) : super(key: key);

  @override
  State<LanguageBody> createState() => _LanguageBodyState();
}

class _LanguageBodyState extends State<LanguageBody> {
  final List<String> language =['Arabic','English','Spanish','French'];

  int _value =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: language.length,
          itemBuilder: (context, index) {
            return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        language[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Radio(
                      value: index,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Theme.of(context).colorScheme.primary;
                        },
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
