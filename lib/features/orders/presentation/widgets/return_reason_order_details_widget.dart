import 'package:flutter/material.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../domain/models/order_details_model/order_details_model.dart';

class ReturnReasonOrderDetailsWidget extends StatelessWidget {
  final String title;
  final List<ReturnReasonModel> model;
  const ReturnReasonOrderDetailsWidget({
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
          BoxShadow(color: ColorManager.error, blurRadius: AppSizeR.s10)
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: ColorManager.error),
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
                      Baseline(
                        baselineType: TextBaseline.alphabetic,
                        baseline: AppSizeW.s10,
                        child: Icon(
                          Icons.circle,
                          size: AppSizeSp.s5,
                        ),
                      ),
                      SizedBox(width: AppSizeW.s5),
                      Expanded(
                        child: Text(
                          e.name,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
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
