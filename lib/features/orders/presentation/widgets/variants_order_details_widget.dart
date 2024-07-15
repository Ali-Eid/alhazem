import 'package:flutter/material.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../domain/models/order_details_model/order_details_model.dart';

class VariantsOrderDetailsWidget extends StatelessWidget {
  final String title;
  final List<OrderVariantModel> model;
  const VariantsOrderDetailsWidget({
    super.key,
    required this.title,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          boxShadow: [
            BoxShadow(color: ColorManager.shadow, blurRadius: AppSizeR.s10)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s10),
          Column(
            children: model.map(
              (e) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSizeH.s4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: AppSizeSp.s20,
                      ),
                      SizedBox(width: AppSizeW.s4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                e.name,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              SizedBox(width: AppSizeW.s4),
                              Text(
                                '(${e.value})',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          Text(
                            e.price.toString(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
