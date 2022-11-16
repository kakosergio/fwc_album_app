import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/sizes/context_sizes.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/view/sticker_detail_view_impl.dart';

class StickerDetailPage extends StatefulWidget {
  final StickerDetailPresenter presenter;
  const StickerDetailPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends StickerDetailViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe da Figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(hasSticker
                  ? 'assets/images/sticker.png'
                  : 'assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '$countryCode $stickerNumber',
                      style: context.textStyles.textPrimaryFontBold
                          .copyWith(fontSize: 22),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(
                      icon: Icons.remove,
                      onPressed: widget.presenter.decrementAmount),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '$amount',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(
                      icon: Icons.add,
                      onPressed: widget.presenter.incrementAmount),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    countryName,
                    style: context.textStyles.textPrimaryFontRegular,
                  )),
              Button.primary(
                label: '${hasSticker ? 'Atualizar' : 'Adicionar'} figurinha',
                onPressed: widget.presenter.saveSticker,
                width: context.width * .9,
              ),
              Button(
                style: context.buttonStyles.primaryOutlinedButton,
                labelStyle:
                    context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
                label: 'Excluir Figurinha',
                outline: true,
                width: context.width * .9,
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title:
                          const Text('Deseja realmente excluir a figurinha?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              widget.presenter.deleteSticker();
                              Navigator.of(context).pop();
                            },
                            child: const Text('Sim')),
                        TextButton(
                            onPressed: Navigator.of(context).pop,
                            child: const Text('Não!'))
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
