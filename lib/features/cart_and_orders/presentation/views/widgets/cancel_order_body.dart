import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/cart_and_orders/presentation/controllers/cancel_order_controller.dart';
import 'package:get/get.dart';

class CancelOrderBody extends StatefulWidget {
  const CancelOrderBody({Key? key}) : super(key: key);

  @override
  State<CancelOrderBody> createState() => _CancelOrderBodyState();
}

class _CancelOrderBodyState extends State<CancelOrderBody> {

  CancelController controller = Get.put(CancelController());

  int _value = 0;

  onClickSubmit() {
    controller.sentCancelReason(_value);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Theme.of(context).colorScheme.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ), //this right here
            child: SizedBox(
              height: 476,
              width: 340,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 165,
                      height: 165,
                      child: Center(
                          child: Image.asset('assets/images/sad_face.png')),
                    ).marginOnly(top: 16,bottom: 24),
                    Text(
                      'We are so sad about your cancellation',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ).marginSymmetric(horizontal: 24),
                    const SizedBox(height: 16),
                    Text(
                      'We will continue to improve our service & satisfy you on the next order',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ).marginSymmetric(horizontal: 16),
                    const SizedBox(height: 24),
                    AppButton(
                      buttonText: 'Ok',
                      onTap: (){
                        Get.close(2);
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 8,
          left: 8,
          top: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 100, top: 24),
            children: [
              Text(
                'Please select the reason fot cancellation : ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
              ).marginSymmetric(horizontal: 16),
              const Divider(thickness: 1)
                  .marginSymmetric(vertical: 8, horizontal: 16),
              for (int index = 0; index < controller.reasons.length; index++)
                Row(
                  children: [
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
                    ),
                    Text(
                      controller.reasons[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )
            ],
          ),
        ),
        Positioned(
            right: 16,
            left: 16,
            bottom: 0,
            child: AppButton(
              buttonText: 'Submit',
              onTap: onClickSubmit,
            ).marginOnly(bottom: 40)),
      ],
    );
  }
}
