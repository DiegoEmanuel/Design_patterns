// ignore_for_file: avoid_print

import 'package:design_patterns/strategy/operacoes/calculator_interface_strategy.dart';
import 'package:design_patterns/strategy/operacoes/adicao/adicao_strategy.dart';
import 'package:design_patterns/strategy/operacoes/multiplicacao/multiplicacao_strategy.dart';
import 'package:design_patterns/strategy/operacoes/subtracao/subtracao_strategy.dart';
import 'package:flutter/material.dart';

class StrategyPatternExample extends StatelessWidget {
  const StrategyPatternExample({super.key});

  @override
  Widget build(BuildContext context) {
    var calculator = Calculator(AdditionStrategy());
    print('Strategy adição: ${calculator.performOperation(10, 5)}');
    var calculator2 = Calculator(SubtractionStrategy());
    print('Strategy subtração: ${calculator2.performOperation(10, 5)}');
    var calculator3 = Calculator(MultiplicationStrategy());
    print('Strategy multiplicação: ${calculator3.performOperation(10, 5)}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora Strategy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calculadora Strategy',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '''Definição: O padrão de design Strategy permite definir uma família de algoritmos, encapsular cada um deles e torná-los intercambiáveis.
              Objetivo: Permite que um cliente escolha entre diferentes algoritmos ou estratégias dinamicamente.
              Componentes Principais: Contexto (que contém uma referência à estratégia) e Estratégias (algoritmos intercambiáveis)''',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://refactoring.guru/images/patterns/content/strategy/strategy.png?id=379bfba335380500375881a3da6507e0',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            const Text(
              'Calculadora Strategy, resultado no console!🧐',
            ),
          ],
        ),
      ),
    );
  }
}
