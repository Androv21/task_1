import 'package:flutter/material.dart';

import '../../models/statistic_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/image_path.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  static List<StatisticModel> statisticInfo = [
    StatisticModel(217, 'Collect'),
    StatisticModel(61, 'Attention'),
    StatisticModel(456, 'Track'),
    StatisticModel(39, 'Coupons'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 4,
        right: 4,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
          color: Colors.blue,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 8.0,
              offset: Offset(2, 5),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                _buildUserPhoto(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                  ),
                  child: _buildUserInfo(),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: _buildUserStatistics(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserPhoto() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 2.5,
            color: Colors.white,
          ),
        ),
        height: 84,
        width: 84,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: const Image(
            image: AssetImage(ImagePath.userImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Oleksandr Alexandrov',
                style: TextStyle(
                  color: AppColors.rowNameAndSurname,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.security_outlined,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'mobile app developer',
            style: TextStyle(
              color: AppColors.professionSkills,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserStatistics() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: statisticInfo.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 24,
            right: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                statisticInfo[index].amount.toString(),
                style: const TextStyle(
                  color: AppColors.amountStatistic,
                  fontSize: 18,
                ),
              ),
              Text(
                statisticInfo[index].name,
                style: const TextStyle(
                  color: AppColors.nameStatistic,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
