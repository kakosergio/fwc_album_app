import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/sticker_detail_page.dart';

import '../../../core/ui/helpers/loader.dart';
import './sticker_detail_view.dart';

abstract class StickerDetailViewImpl extends State<StickerDetailPage>
    with Loader<StickerDetailPage>, Messages<StickerDetailPage>
    implements StickerDetailView {
  
  bool hasSticker = false;
  String countryCode = '';
  String stickerNumber = '';
  String countryName = '';
  int amount = 0;
  
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }
}
