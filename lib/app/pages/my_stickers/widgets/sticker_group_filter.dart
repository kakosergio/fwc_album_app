import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

class StickerGroupFilter extends StatefulWidget {
  const StickerGroupFilter({super.key});

  @override
  State<StickerGroupFilter> createState() => _StickerGroupFilterState();
}

class _StickerGroupFilterState extends State<StickerGroupFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SmartSelect.multiple(
        tileBuilder: (context, state) => _StickerGroupTile(
          label: state.selected.title?.join(', ') ?? 'Filtro',
          onPressed: state.showModal,
        ),
        title: 'Filtro',
        onChange: (value) {},
        choiceItems: S2Choice.listFrom(
          source: [
            {'value': 'BRA', 'title': 'Brasil'},
            {'value': 'FWC', 'title': 'Fifa World Cup'},
          ],
          value: (_, item) => item['value'] ?? '',
          title: (_, item) => item['title'] ?? '',
        ),
        choiceType: S2ChoiceType.switches,
        modalType: S2ModalType.bottomSheet,
        choiceGrouped: true,
        modalFilter: false,
        placeholder: '',
      ),
    );
  }
}

class _StickerGroupTile extends StatelessWidget {
  
  final String label;
  final VoidCallback onPressed;

  const _StickerGroupTile({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.grey,
            padding: const EdgeInsets.all(10),
            backgroundColor: const Color(0XFFF0F0F0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        child: Row(
          children: [
            const Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              label,
              style: context.textStyles.textSecondaryFontRegular
                  .copyWith(fontSize: 11, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
