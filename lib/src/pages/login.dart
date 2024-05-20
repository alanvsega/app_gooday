import 'package:app_gooday/src/components/color_style.dart';
import 'package:app_gooday/src/components/my_button.dart';
import 'package:app_gooday/src/components/my_text_from_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.backgroundPage,
      appBar: AppBar(
        backgroundColor: ColorStyle.backgroundPage,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: ColorStyle.primary,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acesse',
              style: TextStyle(
                color: ColorStyle.textNeutrals,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'com E-mail e Senha',
              style: TextStyle(
                color: ColorStyle.textNeutrals,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'E-mail',
                style: TextStyle(
                  color: ColorStyle.textNeutrals,
                  fontSize: 10,
                ),
              ),
            ),
            MyTextFormField(
              controller:
                  TextEditingController.fromValue(TextEditingValue.empty),
              fillColor: ColorStyle.backgroundField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              hintText: 'Digite seu e-mail',
              isPassword: false,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                'Senha',
                style: TextStyle(
                  color: ColorStyle.textNeutrals,
                  fontSize: 10,
                ),
              ),
            ),
            MyTextFormField(
              controller:
                  TextEditingController.fromValue(TextEditingValue.empty),
              fillColor: ColorStyle.backgroundField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              hintText: 'Digite sua senha',
              isPassword: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (value) {
                          setState(() {
                            _checkBoxValue = value!;
                          });
                        },
                        value: _checkBoxValue,
                        side: const BorderSide(color: ColorStyle.primary),
                        activeColor: ColorStyle.primary,
                      ),
                      const Text(
                        'Lembrar senha',
                        style: TextStyle(
                          color: ColorStyle.textNeutrals,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: ColorStyle.textNeutrals,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  buttonProportion: 0.4,
                  marginSize: 0,
                  label: 'Acessar',
                  isPrimary: true,
                  onPressedButton: () {
                    Navigator.pushNamed(context, '/introduction');
                  },
                ),
                MyButton(
                  buttonProportion: 0.4,
                  marginSize: 0,
                  label: 'Cadastrar',
                  isPrimary: false,
                  onPressedButton: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 56, left: 24, right: 24),
              child: Row(
                children: [
                  Expanded(child: Divider()),
                  Text(
                    ' Ou continue com ',
                    style: TextStyle(
                      color: ColorStyle.textNeutrals,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 60, right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/256/2875/2875404.png',
                    width: 56,
                    height: 56,
                  ),
                  Image.network(
                    'https://cdn.iconscout.com/icon/free/png-256/free-facebook-2038471-1718509.png',
                    width: 56,
                    height: 56,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
