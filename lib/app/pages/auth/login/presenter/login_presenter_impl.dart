import 'dart:developer';

import 'package:fwc_album_app/app/core/exceptions/unauthorized_exception.dart';
import 'package:fwc_album_app/app/pages/auth/login/view/login_view.dart';
import 'package:fwc_album_app/app/services/login/login_service.dart';

import './login_presenter.dart';

class LoginPresenterImpl implements LoginPresenter {
  late final LoginView _view;
  final LoginService loginService;

  LoginPresenterImpl({required this.loginService});

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.loginSucess();
    } on UnauthorizedException {
      _view.loginError('Usuário ou senha inválido');
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _view.loginError('Erro ao realizar login');
    }
  }

  @override
  set view(LoginView view) => _view = view;
}
