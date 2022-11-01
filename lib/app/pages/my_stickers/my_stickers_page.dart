import 'package:flutter/material.dart';

import 'widgets/sticker_status_filter.dart';

class MyStickersPage extends StatelessWidget {


  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                //Status
                StickerStatusFilter(filterSelected: '',),
                //Filtro
              ],
            ),
          )
        ],
      ),
    );
  }
}
