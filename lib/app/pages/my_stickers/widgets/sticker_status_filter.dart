import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/sizes/context_sizes.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({
    Key? key,
    required this.filterSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: context.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 5,
        children: [
          Button(
              width: context.width * .3,
              onPressed: () {},
              style: filterSelected == 'all' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textSecondaryFontMedium
                  .copyWith(color: context.colors.primary),
              label: 'Todas'),
          Button(
              width: context.width * .3,
              onPressed: () {},
              style: filterSelected == 'missing' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textSecondaryFontMedium,
              label: 'Faltando'),
          Button(
              width: context.width * .3,
              onPressed: () {},
              style: filterSelected == 'duplicates' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
              labelStyle: context.textStyles.textSecondaryFontMedium,
              label: 'Repetidas'),
        ],
      ),
    );
  }
}
