// Factory para criar instâncias de Pedido com base em algumas condições
import 'package:design_patterns/factory/models/pedido.dart';
import 'package:design_patterns/factory/models/pedido_local.dart';
import 'package:design_patterns/factory/models/pedido_retirada.dart';

class PedidoFactory {
  Pedido criarPedido(bool paraViagem) {
    if (paraViagem) {
      return PedidoTakeout();
    } else {
      return PedidoDineIn();
    }
  }
}
