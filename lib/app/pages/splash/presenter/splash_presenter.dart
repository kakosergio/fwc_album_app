import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';

import '../view/splash_view.dart';

abstract class SplashPresenter extends FwcPresenter<SplashView> {
  Future<void> checkLogin();
}
