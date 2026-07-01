
import 'package:flutter/Material.dart';

import 'constant.dart';

class BottomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? ontap;
  BottomButton({required this.title,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(child: Text(title!,style: kLargeButtonTextStyle,)),
        decoration: BoxDecoration( color:Colors.pink
        ),
        height: kBottomHeight,
        width: double.infinity,
      ),
    );
  }
}