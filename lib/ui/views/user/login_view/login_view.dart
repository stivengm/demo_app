import 'package:flutter/material.dart';

import 'package:demo_app/ui/widgets/primary_button.dart';
import 'package:demo_app/ui/app_style.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: media.height * 1,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          // validator: (email) => email != null && !EmailValidator.validate(email) ? 'Ingrese un email válido' : null,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              color: primaryColor
                            ),
                            filled: true,
                            fillColor: whiteColor,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: whiteColor
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        TextFormField(
                          obscureText: _passwordVisible,
                          controller: passwordController,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          // validator: (pass) => pass != null && pass.length < 6 ? 'Ingrese mínimo 6 caracteres' : null,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: const TextStyle(
                              color: primaryColor
                            ),
                            filled: true,
                            fillColor: whiteColor,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: whiteColor
                              ),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            )
                          )
                        ),
                        const SizedBox(height: 30.0),
                        SizedBox(
                          width: media.width * .7,
                          child: PrimaryButton(text: 'Iniciar sesión', onPressed: () => login()),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() {
    Navigator.pushNamed(context, 'home');
  }

}