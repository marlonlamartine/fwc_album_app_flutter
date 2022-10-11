import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              showLoader();
              await Future.delayed(const Duration(seconds: 3));
              hideLoader();
            },
            style: ButtonStyles.i.yellowButton,
            child: const Text('salvar'),
          ),
          OutlinedButton(
            onPressed: () {
              showError('Erro no botão outline');
            },
            style: ButtonStyles.i.yellowOutlinedButton,
            child: const Text('salvar'),
          ),
          ElevatedButton(
            onPressed: () {
              showInfo('Info no botão salvar');
            },
            style: ButtonStyles.i.primaryButton,
            child: const Text('salvar'),
          ),
          OutlinedButton(
            onPressed: () {
              showSuccess('sucesso no salvar');
            },
            style: ButtonStyles.i.primaryOutlinedButton,
            child: const Text('salvar'),
          ),
          const TextField(),
        ],
      )),
    );
  }
}
