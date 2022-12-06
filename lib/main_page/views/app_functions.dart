import 'package:flutter/material.dart';

import '../../models/functions_model.dart';
import '../../utils/app_colors.dart';

class AppFunctions extends StatelessWidget {
  const AppFunctions({Key? key}) : super(key: key);

  static List<FunctionsModel> functions = [
    FunctionsModel(Icons.wallet_outlined, 'Wallet'),
    FunctionsModel(Icons.delivery_dining_outlined, 'Delivery'),
    FunctionsModel(Icons.message, 'Message'),
    FunctionsModel(Icons.home_repair_service_outlined, 'Service'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: _buildAppFunctions(),
    );
  }

  Widget _buildAppFunctions() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: functions.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.shapeFunctions,
                ),
                child: Icon(
                  functions[index].icon,
                  color: AppColors.iconFunctions,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                functions[index].name,
                style: const TextStyle(
                  color: AppColors.nameFunctions,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
