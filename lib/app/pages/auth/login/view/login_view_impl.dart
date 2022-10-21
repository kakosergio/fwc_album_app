import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/pages/auth/login/login_page.dart';

import '../../../../core/ui/helpers/messages.dart';
import './login_view.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Loader<LoginPage>, Messages<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void loginError(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void loginSucess() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
