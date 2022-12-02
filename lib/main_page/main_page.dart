import 'package:flutter/material.dart';
import 'package:task_1/main_page/views/app_functions.dart';
import 'package:task_1/main_page/views/app_options.dart';
import 'package:task_1/main_page/views/user_info.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackground,
        title: const Text(
          'Center',
          style: TextStyles.appBarText,
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          UserInfo(),
          AppFunctions(),
          AppOptions(),
        ],
      ),

    );
  }
}
