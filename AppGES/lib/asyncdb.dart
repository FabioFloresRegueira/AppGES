import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

// atualização automática no Flutter consumindo endpoints você pode usar
// o pacote http para fazer requisições e o pacote timer do Dart
//para agendar essas requisições periodicamente.

Timer? timer;

void startTimer() {
  timer = Timer.periodic(
      const Duration(seconds: 10), (Timer t) => asyncdb('todos'));
}

void stopTimer() {
  if (timer != null) {
    timer!.cancel();
  }
}

Future<List<dynamic>> asyncdb(String metodo) async {
  //await http.get(Uri.parse('http://localhost:3001/monitorar/api/tags'));
  final xUrl = 'http://192.168.0.85:3001/monitorar/api/tags/$metodo';

  try {
    // Faz uma solicitação GET para a URL especificada
    final response = await http.get(Uri.parse(xUrl));

    // Verifica se a solicitação foi bem-sucedida
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Falha ao carregar o serviço. URL inválida: $xUrl');
    }
  } catch (e) {
    throw Exception('Ocorreu um erro: $e');
  }
}
