import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Olá",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: "Bil Dev", style: AppTextStyles.titleBold)
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/48365582?v=4"),
                          ),
                        ),
                      )
                    ],
                  ),
                  ScoreCardWidget()
                ],
              ),
            ),
          ),
        );
}
