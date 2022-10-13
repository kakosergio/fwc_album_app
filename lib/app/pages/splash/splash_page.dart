import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';

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
            Button(
              style: context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'Salvar',
              onPressed: () {},
            ),
            Button.primary(
              label: 'Coiso',
              onPressed: () {},
              width: MediaQuery.of(context).size.width * .9,
            ),
            RoundedButton(icon: Icons.add, onPressed: (){}),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
