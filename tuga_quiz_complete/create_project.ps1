# Criar as pastas do projeto
New-Item -ItemType Directory -Force -Path tuga_quiz\lib\screens
New-Item -ItemType Directory -Force -Path tuga_quiz\lib\models
New-Item -ItemType Directory -Force -Path tuga_quiz\lib\providers
New-Item -ItemType Directory -Force -Path tuga_quiz\lib\data
New-Item -ItemType Directory -Force -Path tuga_quiz\assets\images

# Criar o ficheiro pubspec.yaml com conteúdo básico
@"
name: tuga_quiz
description: Tuga Quiz App Flutter
version: 1.0.0+1
environment:
  sdk: ">=2.12.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0

flutter:
  uses-material-design: true
  assets:
    - assets/images/
"@ | Out-File -Encoding utf8 tuga_quiz\pubspec.yaml

# Criar o ficheiro main.dart com código de exemplo
@"
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuga Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuga Quiz'),
      ),
      body: Center(
        child: Text('Bem-vindo ao Tuga Quiz!'),
      ),
    );
  }
}
"@ | Out-File -Encoding utf8 tuga_quiz\lib\main.dart

Write-Host "Estrutura do projeto criada!"
