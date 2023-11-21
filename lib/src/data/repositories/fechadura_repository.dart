import 'package:trava_nfc/src/data/models/fechadura_model.dart';

class FechaduraRepository {
  //aqui sera feito a comunicação com o banco de dados

  void addFechadura(FechaduraModel fechadura) {
    //tipo fechadura que eu vou converter pra json
    //fazer um post na api
  }

  Future<List<FechaduraModel>> getFechaduras() async {
    return [
      FechaduraModel(
        id: 1,
        nome: 'Fechadura 1',
        status: true,
      ),
      FechaduraModel(
        id: 2,
        nome: 'Fechadura 2',
        status: false,
      ),
      FechaduraModel(
        id: 3,
        nome: 'Fechadura 3',
        status: true,
      ),
      FechaduraModel(
        id: 4,
        nome: 'Fechadura 4',
        status: false,
      ),
      FechaduraModel(
        id: 5,
        nome: 'Fechadura 5',
        status: true,
      ),
      FechaduraModel(
        id: 6,
        nome: 'Fechadura 6',
        status: false,
      ),
      FechaduraModel(
        id: 7,
        nome: 'Fechadura 7',
        status: true,
      ),
      FechaduraModel(
        id: 8,
        nome: 'Fechadura 8',
        status: false,
      ),
      FechaduraModel(
        id: 9,
        nome: 'Fechadura 9',
        status: true,
      ),
      FechaduraModel(
        id: 10,
        nome: 'Fechadura 10',
        status: false,
      ),
      FechaduraModel(
        id: 11,
        nome: 'Fechadura 11',
        status: true,
      ),
      FechaduraModel(
        id: 12,
        nome: 'Fechadura 12',
        status: false,
      ),
    ];
  }
}
