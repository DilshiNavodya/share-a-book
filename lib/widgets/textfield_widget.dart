import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String? hintText;
  final double? borderRadius;
  final int? maxLines;
  const TextFieldWidget(
      {Key? key,
      required this.textController,
      this.hintText,
      this.borderRadius = 40,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 20, offset: Offset(1, 1))]),
      child: TextField(
        maxLines: maxLines,
        controller: textController,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textHolder,
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ))),
      ),
    );
  }
}
