import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';

import '../view/register_view.dart';

abstract class RegisterPresenter extends FwcPresenter<RegisterView> {
  Future<void> register(
      {required String name,
      required String email,
      required password,
      required passwordConfirmation});
}
