import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/models/group_stickers.dart';
import 'package:fwc_album_app/app/pages/my_stickers/my_stickers_page.dart';

import './my_stickers_view.dart';

abstract class MyStickersViewImpl extends State<MyStickersPage>
    with Loader<MyStickersPage>, Messages<MyStickersPage>
    implements MyStickersView {
  var album = <GroupStickers>[];
  var statusFilter = 'all';

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showLoader();
      widget.presenter.getMyAlbum();
    });
    super.initState();
  }

  @override
  void error(String message) => showError(message);

  @override
  void loadedPage(List<GroupStickers> album) {
    hideLoader();
    setState(() {
      this.album = album;
    });
  }

  @override
  void updateStatusFilter(status) {
    setState(() {
      statusFilter = status;
    });
  }
}
