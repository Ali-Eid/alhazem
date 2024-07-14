import 'package:flutter/material.dart';

import '../../../../core/constants/values_manager.dart';

class ServiceDetailsWidget extends StatelessWidget {
  final String name;
  final String value;
  const ServiceDetailsWidget({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$name:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(width: AppSizeW.s5),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        )
      ],
    );
  }
}
