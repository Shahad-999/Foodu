import 'package:flutter/material.dart';
import 'package:foodu/features/profile_screen/presentation/controllers/language_controller.dart';
import 'package:get/get.dart';

class LanguageBody extends StatelessWidget {
  LanguageBody({Key? key}) : super(key: key);

  final LanguageController _controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          itemCount: _controller.language.length,
          itemBuilder: (context, index) {
            return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _controller.language[index].name.capitalizeFirst!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Obx(() =>  Radio(
                        value: index,
                        groupValue: _controller.selectedLanguageIndex.value,
                        onChanged: (value) {
                          if(value is int){
                            _controller.onChangeLanguageSelected(value);
                          }
                        },
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Theme.of(context).colorScheme.primary;
                          },
                        ),
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
