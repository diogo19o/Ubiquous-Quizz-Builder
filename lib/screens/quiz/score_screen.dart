import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ubiquous_quizz_builder/app_colors.dart';
import 'package:ubiquous_quizz_builder/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    var test = Get.arguments;
    String noCorretAnswers = "0";
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                test,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: AppColors.Orange),
              ),
              Spacer(),
              Text(
                "Pontuação final",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: AppColors.Orange),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: AppColors.PrimaryMidBlue),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
