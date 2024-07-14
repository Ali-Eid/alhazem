import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/values_manager.dart';
import '../../domain/models/service_details_model.dart/service_details_model.dart';
import '../blocs/check_price_bloc/check_price_bloc.dart';

class VariantsServiceWidget extends StatelessWidget {
  final List<VariantsModel> variants;
  const VariantsServiceWidget({
    super.key,
    required this.variants,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(),
            child: Column(
              children: variants.map(
                (e) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Text(
                              e.name,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSizeH.s5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: e.values.map(
                          (variantValue) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s8,
                                  vertical: AppSizeH.s4),
                              child: InkWell(
                                onTap: () {
                                  context.read<CheckPriceBloc>().add(
                                      CheckPriceEvent.checkPrice(
                                          variant: variantValue));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    BlocBuilder(
                                      bloc: context.read<CheckPriceBloc>(),
                                      builder: (context, state) {
                                        return Container(
                                          height: AppSizeW.s15,
                                          width: AppSizeW.s15,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s2),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black),
                                              shape: BoxShape.circle),
                                          child: Container(
                                            height: AppSizeW.s15,
                                            width: AppSizeW.s15,
                                            padding:
                                                EdgeInsets.all(AppSizeW.s8),
                                            decoration: BoxDecoration(
                                                color: context
                                                        .read<CheckPriceBloc>()
                                                        .variantsValue
                                                        .contains(variantValue)
                                                    ? Colors.black
                                                    : Colors.white,
                                                shape: BoxShape.circle),
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(width: AppSizeW.s10),
                                    Baseline(
                                      baseline: AppSizeH.s15,
                                      baselineType: TextBaseline.alphabetic,
                                      child: Text(
                                        variantValue.name,
                                        style: TextStyle(
                                            fontSize: AppSizeSp.s14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  );
                },
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}
