import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/home/home_controller.dart';
import 'package:devquiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

import 'home_state.dart';

class HomePage extends StatefulWidget {
  // key? Significa que pode ter um valor nulo. Deve ser passado isso.
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  // Essa função iniState é chamada antes de qualquer coisa ser renderizada na tela. Só está disponível em classes Statful. Ele só é chamado 1 vez (precisa de hot reload) e o build é chamado sempre que se altera algo.
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(user: controller.user!),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, //Espaçamentos entre eles
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
              SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  // Add Spacing entre colunas do grid
                  crossAxisSpacing: 16,
                  // Add spacing entre as linhas do grid
                  mainAxisSpacing: 16,
                  // crossaxiscount = Vai ocupar X colunas na nossa tela
                  crossAxisCount: 2,
                  children: controller.quizzes!
                      .map((e) => QuizCardWidget(
                            title: e.title,
                            percent: e.questionAnswered / e.questions.length,
                            completed:
                                "${e.questionAnswered} de ${e.questions.length}",
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
