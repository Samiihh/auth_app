import 'package:auth_app/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  void dispose() {
    // liberar os recursos quando a tela deixar de existir
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _mostrarAviso() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Login será implementado na proxima aula')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AuthApp - Login', // titulo do app
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthTextField(controller: _emailController, label: 'E-mail'),

            const SizedBox(height: 12),

            AuthTextField(
              controller: _senhaController,
              label: 'Senha',
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
