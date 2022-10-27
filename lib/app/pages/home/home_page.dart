import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/pages/home/presenter/home_presenter.dart';
import 'package:fwc_album_app/app/pages/home/view/home_view.dart';
import 'package:fwc_album_app/app/pages/home/view/home_view_impl.dart';
import 'package:fwc_album_app/app/pages/home/widgets/status_tile.dart';
import 'package:fwc_album_app/app/pages/home/widgets/sticker_percent.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;

  const HomePage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomeViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              )),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/bola.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const StickerPercent(percent: 45),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '45 figurinhas',
                      style: context.textStyles.titleWhite,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StatusTile(
                      icon: Image.asset('assets/images/all_icon.png'),
                      label: 'Todas',
                      value: 34,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StatusTile(
                      icon: Image.asset('assets/images/missing_icon.png'),
                      label: 'Faltando',
                      value: 500,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StatusTile(
                      icon: Image.asset('assets/images/repeated_icon.png'),
                      label: 'Repetidas',
                      value: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                        outline: true,
                        width: MediaQuery.of(context).size.width * .9,
                        onPressed: () {},
                        style: context.buttonStyles.yellowOutlinedButton,
                        labelStyle: context
                            .textStyles.textSecondaryFontExtraBold
                            .copyWith(color: context.colors.yellow),
                        label: 'Minhas Figurinhas')
                  ],
                ),
              )),
            );
          },
        ),
      ),
    );
  }
}
