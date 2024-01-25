// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ChainOfResponsabilityPatternExample extends StatefulWidget {
  const ChainOfResponsabilityPatternExample({super.key});

  @override
  State<ChainOfResponsabilityPatternExample> createState() =>
      _ChainOfResponsabilityPatternExampleState();
}

class _ChainOfResponsabilityPatternExampleState extends State<ChainOfResponsabilityPatternExample> {
  @override
  Widget build(BuildContext context) {
    // Configurando a cadeia de responsabilidade
    Handler handlerA = ConcreteHandlerA();
    Handler handlerB = ConcreteHandlerB();
    Handler handlerC = ConcreteHandlerC();
    handlerA.setNextHandler(handlerB);
    handlerB.setNextHandler(handlerC);

    // Simulando solicitações
    handlerA.handleRequest('A'); // Saída: Handler A tratou a solicitação.
    handlerA.handleRequest('B'); // Saída: Handler B tratou a solicitação.
    handlerA.handleRequest('C'); // Saída: Solicitação não tratada.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chain of Responsability Pattern'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Chain of Responsability Pattern:',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                '''Definição: O padrão de design Chain of Responsibility permite passar solicitações ao longo de uma cadeia de manipuladores. Cada manipulador decide processar a solicitação ou passá-la para o próximo manipulador na cadeia.
Objetivo: Desacoplar o remetente de uma solicitação dos seus destinatários e permitir que mais de um objeto possa processar a solicitação.
Componentes Principais: Manipuladores (classes que processam solicitações) e uma Cadeia (que conecta os manipuladores).''',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://refactoring.guru/images/patterns/content/chain-of-responsibility/chain-of-responsibility.png?id=56c10d0dc712546cc283cfb3fb463458',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Fila de solicitações, resultado no console!🧐',
          ),
        ]),
      ),
    );
  }
}

// Definindo a interface para os manipuladores
abstract class Handler {
  Handler? _nextHandler;

  void setNextHandler(Handler nextHandler) {
    _nextHandler = nextHandler;
  }

  void handleRequest(String request);
}

// Implementação de um manipulador específico
class ConcreteHandlerA extends Handler {
  @override
  void handleRequest(String request) {
    if (request == 'A') {
      print('Handler A tratou a solicitação.');
    } else if (_nextHandler != null) {
      _nextHandler!.handleRequest(request);
    }
  }
}

// Implementação de outro manipulador específico
class ConcreteHandlerB extends Handler {
  @override
  void handleRequest(String request) {
    if (request == 'B') {
      print('Handler B tratou a solicitação.');
    } else if (_nextHandler != null) {
      _nextHandler!.handleRequest(request);
    }
  }
}

// Implementação de outro manipulador específico
class ConcreteHandlerC extends Handler {
  @override
  void handleRequest(String request) {
    if (request == 'C') {
      print('Handler C tratou a solicitação.');
    } else if (_nextHandler != null) {
      _nextHandler!.handleRequest(request);
    } else {
      print('Solicitação não tratada.');
    }
  }
}
