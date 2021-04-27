import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class BadResultPage extends StatelessWidget {
  const BadResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.error),
                Column(
                  children: [
                    Text(
                      'OOPSS...! :/',
                      style: AppTextStyles.heading40,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Você errou todas as questões.')
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 68),
                            child: NextButtonWidget.white(
                              label: "Voltar ao Início",
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
