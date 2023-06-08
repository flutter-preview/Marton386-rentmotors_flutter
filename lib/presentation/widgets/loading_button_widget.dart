import '../../res/global.dart';
import 'package:flutter/material.dart';

class LoadingButtonWidget extends StatelessWidget {
  const LoadingButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(10.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(Global.buttonText),
        backgroundColor: MaterialStateProperty.all<Color>(Global.orange),
        foregroundColor: MaterialStateProperty.all<Color>(Global.backgroundLightTheme),
      ),
      child: const CircularProgressIndicator(
        strokeWidth: 2,
        color: Global.darkGreen,
      ),
    );
  }
}