import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:fwc_album_app/app/pages/auth/register/view/register_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/widgets/button.dart';

class RegisterPage extends StatefulWidget {
  final RegisterPresenter presenter;
  const RegisterPage({super.key, required this.presenter});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends RegisterViewImpl {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final passwordConfirmationEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    passwordConfirmationEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bola.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text('Cadastrar usuário', style: context.textStyles.titleBlack),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: Validatorless.required('Obrigatório'),
                      controller: nameEC,
                      decoration: const InputDecoration(
                        label: Text('Nome Completo *'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: Validatorless.multiple([
                        Validatorless.required('E-mail obrigatório'),
                        Validatorless.email('E-mail inválido'),
                      ]),
                      controller: emailEC,
                      decoration: const InputDecoration(
                        label: Text('E-mail *'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.min(
                            6, 'Senha deve ter pelo menos 6 caracteres'),
                      ]),
                      obscureText: true,
                      controller: passwordEC,
                      decoration: const InputDecoration(
                        label: Text('Senha *'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.min(
                            6, 'Senha deve ter pelo menos 6 caracteres'),
                        Validatorless.compare(
                            passwordEC, 'Senha diferente de Confirma senha')
                      ]),
                      obscureText: true,
                      controller: passwordConfirmationEC,
                      decoration: const InputDecoration(
                        label: Text('Confirma Senha *'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button.primary(
                      label: 'Cadastrar',
                      onPressed: () {
                        var formValid =
                            formKey.currentState?.validate() ?? false;
                        if (formValid) {
                          showLoader();
                          widget.presenter.register(
                              name: nameEC.text,
                              email: emailEC.text,
                              password: passwordEC.text,
                              passwordConfirmation:
                                  passwordConfirmationEC.text);
                        }
                      },
                      width: MediaQuery.of(context).size.width * .9,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
