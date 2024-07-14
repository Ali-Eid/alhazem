import 'package:flutter/material.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../domain/models/service_details_model.dart/service_details_model.dart';

class ServiceRequirmentsWidget extends StatelessWidget {
  final String title;
  final String titlePrice;
  final ServiceDetailsModel model;
  const ServiceRequirmentsWidget({
    super.key,
    required this.title,
    required this.model,
    required this.titlePrice,
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
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: model.details.map(
                      (e) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                Flexible(
                                  child: Text(e.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall),
                                ),
                                Text(e.details,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                              ],
                            ),
                            e.price == 0
                                ? const SizedBox()
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Baseline(
                                        baselineType: TextBaseline.alphabetic,
                                        baseline: AppSizeW.s10,
                                        child: Icon(
                                          Icons.circle_outlined,
                                          size: AppSizeSp.s5,
                                        ),
                                      ),
                                      SizedBox(width: AppSizeW.s5),
                                      Flexible(
                                        child: Text(titlePrice,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall),
                                      ),
                                      Text('${e.price} ${e.currencyName}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium),
                                    ],
                                  ),
                            const Divider()
                          ],
                        );
                      },
                    ).toList(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
