import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Center(
          child: Text('Вход в приложение'),
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.login,
                size: 50,
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Пароль',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    icon: Icon(Icons.key)),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Вход...'),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                ),
                child: const Text(
                  'Войти',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Ещё нет аккаунта?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: const Text('Регистрация'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: const Center(
          child: Text('Регистрация'),
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.how_to_reg,
                size: 50,
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Имя',
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  icon: Icon(Icons.face),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Логин',
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Пароль',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    icon: Icon(Icons.key)),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Регистрация...'),
                    duration: Duration(milliseconds: 500),
                  ));
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                ),
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Уже зарегистрированы?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Вход')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
