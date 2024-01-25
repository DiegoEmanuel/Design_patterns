import 'package:design_patterns/factory/models/pedido_factory.dart';
import 'package:flutter/material.dart';

class FactoryPatternExample extends StatelessWidget {
  FactoryPatternExample({Key? key}) : super(key: key);

  final PedidoFactory pedidoFactory = PedidoFactory();

  void processarPedido(bool paraViagem) {
    final pedido = pedidoFactory.criarPedido(paraViagem);
    pedido.processarPedido();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory Pattern Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Factory Pattern:',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '''Definição: O padrão de design Factory encapsula a criação de objetos, permitindo que uma classe delegue a responsabilidade da instanciação para suas subclasses.
Objetivo: Fornece uma interface para criar instâncias de uma classe, mas deixa a decisão sobre qual classe instanciar para as subclasses.
Componentes Principais: Fábrica (interface ou classe abstrata), Fábricas Concretas (implementações específicas da fábrica) e Produtos (objetos a serem criados).)''',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://refactoring.guru/images/patterns/content/factory-method/factory-method-en.png',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                processarPedido(true);
              },
              child: const Text('Pedido para Viagem'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                processarPedido(false);
              },
              child: const Text('Pedido no Local'),
            ),
          ],
        ),
      ),
    );
  }
}
