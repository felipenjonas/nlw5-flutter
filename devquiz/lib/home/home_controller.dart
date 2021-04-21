import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/models/awnser_model.dart';
import 'package:devquiz/models/question_model.dart';
import 'package:devquiz/models/quiz_model.dart';
import 'package:devquiz/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Felipe DEV",
      photoUrl: "https://avatars.githubusercontent.com/u/48365582?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        imagem: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo!"),
              AwnserModel(title: "Estou Amando o Flutter!", isRight: true),
              AwnserModel(title: "Ainda não sei o que dizer."),
              AwnserModel(title: "Não quero nunca mais ver ele."),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo!"),
              AwnserModel(title: "Estou Amando o Flutter!", isRight: true),
              AwnserModel(title: "Ainda não sei o que dizer."),
              AwnserModel(title: "Não quero nunca mais ver ele."),
            ],
          )
        ],
      )
    ];
    state = HomeState.success;
  }
}
