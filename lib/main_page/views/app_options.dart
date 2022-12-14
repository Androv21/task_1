import 'package:flutter/material.dart';

import '../../models/options_model.dart';

class AppOptions extends StatelessWidget {
  const AppOptions({Key? key}) : super(key: key);

  static List<OptionsModel> options = [
    OptionsModel(
      Icons.location_on_outlined,
      'Address',
      Colors.deepPurple,
      'ensure you having address',
    ),
    OptionsModel(
      Icons.key,
      'Privacy',
      Colors.purpleAccent,
      'system premision change',
    ),
    OptionsModel(
      Icons.menu_outlined,
      'General',
      Colors.orange,
      'basic functional setting',
    ),
    OptionsModel(
      Icons.warning,
      'Notifications',
      Colors.lightBlueAccent,
      'take over the new in time',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 354,
      child: _buildAppOptions(),
    );
  }

  Widget _buildAppOptions() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: options.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 1.0,
                    offset: Offset(1, 1))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _buildElementOfOptions(index),
            ),
          ),
        );
      },
    );
  }

  Widget _buildElementOfOptions(int index) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: options[index].color,
          ),
          child: Icon(
            options[index].icon,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: _buildNameOfOptionsElement(index),
          ),
        ),
        const Icon(
          Icons.chevron_right_sharp,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _buildNameOfOptionsElement(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          options[index].name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          options[index].descriptions,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
