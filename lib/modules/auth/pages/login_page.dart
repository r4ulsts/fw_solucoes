import 'package:flutter/material.dart';
import '../../../../../core/theme/app_theme.dart';  // Importando o AppTheme

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/logo_fw.png', // Sua logo aqui
                  width: size.width * 0.45,
                ),
                const SizedBox(height: 32),

                // Título
                Text(
                  'Bem-vindo à FW Soluções',
                  style: Theme.of(context).textTheme.headlineLarge, // Usando o estilo de título do tema
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // E-mail
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: const Icon(Icons.email),
                    labelStyle: Theme.of(context).textTheme.bodyLarge, // Usando o estilo do tema para o rótulo
                    border: const OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),

                // Senha com botão de visibilidade
                TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),

                // Botão de login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação ao logar (por enquanto, nada)
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login simulado!')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor, // Usando a cor primária do tema
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    ),
                    child: const Text('Entrar'),
                  ),
                ),
                const SizedBox(height: 16),

                // Esqueci a senha
                TextButton(
                  onPressed: () {
                    // Ação ao clicar (futuramente ir para recuperação)
                  },
                  child: Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor, // Usando a cor primária para o link
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
