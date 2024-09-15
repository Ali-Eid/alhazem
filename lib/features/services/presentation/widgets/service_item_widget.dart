import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/toast.dart';
import '../../../contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';

class ServiceItemWidget extends StatefulWidget {
  final ServiceModel model;
  const ServiceItemWidget({super.key, required this.model});

  @override
  State<ServiceItemWidget> createState() => _ServiceItemWidgetState();
}

class _ServiceItemWidgetState extends State<ServiceItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizeR.s10),
      onTap: context.read<LeadContactBloc>().leadId != null
          ? () {
              context.pushNamed(RoutesNames.servicesDetailsRoute,
                  pathParameters: {"serviceId": widget.model.id.toString()});
            }
          : () {
              showToast(
                  context: context,
                  message: "الرجاء انشاء عميل اولاً",
                  type: ToastificationType.error);
            },
      child: Container(
        padding: EdgeInsets.all(AppSizeW.s16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: AppSizeR.s5,
              spreadRadius: AppSizeR.s1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                widget.model.name,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(height: AppSizeH.s8),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.money, size: AppSizeSp.s16),
                SizedBox(width: AppSizeW.s4),
                Expanded(
                  child: BlocBuilder(
                    bloc: context.read<CurrenciesBloc>(),
                    builder: (context, state) {
                      return Text(
                        "${widget.model.price} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}",
                        style: Theme.of(context).textTheme.titleMedium,
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizeH.s8),
            Row(
              children: [
                Icon(Icons.place, size: AppSizeSp.s16),
                SizedBox(width: AppSizeW.s4),
                Expanded(
                    child: Text(
                  widget.model.country,
                  style: Theme.of(context).textTheme.labelMedium,
                )),
              ],
            ),
            SizedBox(height: AppSizeH.s8),
            Row(
              children: [
                Icon(Icons.description, size: AppSizeSp.s16),
                SizedBox(width: AppSizeW.s4),
                Text(
                  widget.model.type,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
