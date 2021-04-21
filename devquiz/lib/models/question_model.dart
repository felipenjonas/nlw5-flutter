import 'package:devquiz/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  // : assert significa que o tamanho exato de awnsers deve ser até 4 nem menos nem mais.
  QuestionModel({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);
}
