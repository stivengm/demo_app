import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           TextFormField(
            textInputAction: TextInputAction.next,
            // controller: emailController,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // validator: (email) => email != null && !EmailValidator.validate(email) ? 'Ingrese un email válido' : null,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(
                // color: primaryColor
              ),
              filled: true,
              // fillColor: whiteColor,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: whiteColor
                ),
                borderRadius: BorderRadius.circular(10.0)
              )
            ),
          ),
          const SizedBox(height: 15.0),
          TextFormField(
            // obscureText: _passwordVisible,
            // controller: passwordController,
            autocorrect: false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (pass) => pass != null && pass.length < 6 ? 'Ingrese mínimo 6 caracteres' : null,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              labelStyle: const TextStyle(
                // color: primaryColor
              ),
              filled: true,
              // fillColor: whiteColor,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: whiteColor
                ),
                borderRadius: BorderRadius.circular(10.0)
              ),
              // suffixIcon: IconButton(
              //   icon: Icon(
              //     _passwordVisible
              //     ? Icons.visibility_outlined
              //     : Icons.visibility_off_outlined
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       _passwordVisible = !_passwordVisible;
              //     });
              //   },
              // )
            )
          )
        ],
      ),
    );
  }
}