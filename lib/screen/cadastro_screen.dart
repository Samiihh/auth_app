import 'package:auth_app/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmacaoController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    _confirmacaoController.dispose();
    super.dispose();
  }

  void _avisarCadastroFuturo() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Cadastro será realizado na proxima aula')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar conta')),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Campo email
            AuthTextField(controller: _emailController, label: 'E-mail'),
            const SizedBox(height: 12),
            // Campo senha
            AuthTextField(controller: _senhaController, label: 'Senha'),
            
            const SizedBox(height: 12),

            // Campo de confirmar senha
            AuthTextField(
              controller: _confirmacaoController,
              label: 'Confirmar Senha',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _avisarCadastroFuturo,
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
