import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/styles/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowButton,
              child: const Text('Salvar'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.i.primaryButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowOutlinedButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.primaryOutlinedButton,
              child: const Text('Salvar'),
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
