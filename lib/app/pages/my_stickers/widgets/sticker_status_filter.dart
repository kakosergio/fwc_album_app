import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/ui/sizes/context_sizes.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/pages/my_stickers/presenter/my_stickers_presenter.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({
    Key? key,
    required this.filterSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.get<MyStickersPresenter>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: context.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
              width: context.width * .3,
              onPressed: () {
                presenter.statusFilter('all');
              },
              style: filterSelected == 'all'
                  ? context.buttonStyles.yellowButton
                  : context.buttonStyles.primaryButton,
              labelStyle: filterSelected == 'all'
                  ? context.textStyles.textSecondaryFontMedium
                      .copyWith(color: context.colors.primary)
                  : context.textStyles.textSecondaryFontMedium,
              label: 'Todas'),
          Button(
              width: context.width * .3,
              onPressed: () {
                presenter.statusFilter('missing');
              },
              style: filterSelected == 'missing'
                  ? context.buttonStyles.yellowButton
                  : context.buttonStyles.primaryButton,
              labelStyle: filterSelected == 'missing'
                  ? context.textStyles.textSecondaryFontMedium
                      .copyWith(color: context.colors.primary)
                  : context.textStyles.textSecondaryFontMedium,
              label: 'Faltando'),
          Button(
              width: context.width * .3,
              onPressed: () {
                presenter.statusFilter('duplicates');
              },
              style: filterSelected == 'duplicates'
                  ? context.buttonStyles.yellowButton
                  : context.buttonStyles.primaryButton,
              labelStyle: filterSelected == 'duplicates'
                  ? context.textStyles.textSecondaryFontMedium
                      .copyWith(color: context.colors.primary)
                  : context.textStyles.textSecondaryFontMedium,
              label: 'Repetidas'),
        ],
      ),
    );
  }
}
