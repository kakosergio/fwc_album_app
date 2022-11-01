import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/sizes/context_sizes.dart';

class StickerStatusFilter extends StatelessWidget {
    final String filterSelected;

  const StickerStatusFilter({
    Key? key,
    required this.filterSelected,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(width: context.width,);
  }
}
