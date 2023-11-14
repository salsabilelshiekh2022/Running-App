import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatefulWidget {
  const PinCode({super.key, this.phoneNumber});
  final String? phoneNumber;
  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  StreamController<ErrorAnimationType>? errorController;
  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 30,
        ),
        child: PinCodeTextField(
          appContext: context,
          //backgroundColor: Color(0xFF2F3C50),
          pastedTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          length: 4,

          animationType: AnimationType.fade,
          // validator: (v) {
          //   if (v!.length < 4) {
          //     return "I'm from validator";
          //   } else {
          //     return null;
          //   }
          // },
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12),
            fieldHeight: 64,
            fieldWidth: 64,
            activeFillColor: const Color(0xFF2F3C50),
            inactiveColor: const Color(0xFF2F3C50),
            disabledColor: const Color(0xFF2F3C50),
            activeColor: const Color(0xFF2F3C50),
            selectedColor: const Color(0xFF2F3C50),
            inactiveFillColor: const Color(0xFF2F3C50),
            selectedFillColor: const Color(0xFF2F3C50),
            errorBorderColor: Colors.white,
            borderWidth: 1.5,
            activeBoxShadow: [
              const BoxShadow(
                color: Color(0x0C1C252C),
                blurRadius: 12,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          cursorColor: Colors.grey,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          errorAnimationController: errorController,
          controller: textEditingController,

          keyboardType: TextInputType.number,

          boxShadows: const [
            BoxShadow(
              offset: Offset(0, 1),
              color: Colors.white,
              blurRadius: 10,
            )
          ],
          onCompleted: (v) {
            debugPrint("Completed");
          },
          // onTap: () {
          //   print("Pressed");
          // },
          onChanged: (value) {
            debugPrint(value);
            setState(() {
              currentText = value;
            });
          },
          beforeTextPaste: (text) {
            debugPrint("Allowing to paste $text");
            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
            //but you can show anything you want here, like your pop up saying wrong paste format or etc
            return true;
          },
        ),
      ),
    );
  }
}
