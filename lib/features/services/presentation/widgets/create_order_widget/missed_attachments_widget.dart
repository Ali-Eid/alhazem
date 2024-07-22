import 'dart:convert';

import 'package:alhazem/features/orders/domain/models/input_models/input_confirm_waiting_model/input_confirm_waiting_model.dart';
import 'package:alhazem/features/orders/presentation/blocs/confirm_waiting_order_bloc/confirm_waiting_order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/app/depndency_injection.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../../../../contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../../../../orders/domain/models/create_order_model/create_order_model.dart';
import '../../../../orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import '../../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import '../../blocs/update_attachments_bloc/update_attachments_bloc.dart';

class MissedAttachmentsWidget extends StatefulWidget {
  final List<AttachmentsMissedModel> attachments;
  const MissedAttachmentsWidget({super.key, required this.attachments});

  @override
  State<MissedAttachmentsWidget> createState() =>
      _MissedAttachmentsWidgetState();
}

class _MissedAttachmentsWidgetState extends State<MissedAttachmentsWidget> {
  final ImagePicker picker = ImagePicker();
  late UpdateAttachmentsBloc updateAttachmentsBloc;
  late ConfirmWaitingOrderBloc confirmOrderBloc;

  @override
  void initState() {
    updateAttachmentsBloc = instance<UpdateAttachmentsBloc>();
    confirmOrderBloc = instance<ConfirmWaitingOrderBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: AppSizeH.s20),
              Row(
                children: [
                  Text(
                    "الاوراق المطلوبة",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: AppSizeH.s10),
              Column(
                children: widget.attachments.map(
                  (traveler) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Text(traveler.travelerName),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // runSpacing: AppSizeH.s15,
                                children: traveler.attachment.map(
                                  (e) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: AppSizeH.s4),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: AppSizeW.s25,
                                            width: AppSizeW.s25,
                                            padding:
                                                EdgeInsets.all(AppSizeW.s4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: context
                                                            .read<
                                                                InputValueCreateOrderCubit>()
                                                            .updateAttachmentsUpload
                                                            .firstWhere(
                                                              (element) =>
                                                                  element
                                                                      .travelerId ==
                                                                  traveler
                                                                      .travelerId,
                                                              orElse: () {
                                                                return InputMissedAttachmentModel();
                                                              },
                                                            )
                                                            .attachments
                                                            .any((element) =>
                                                                element.type ==
                                                                e.attachmentId)
                                                        ? ColorManager
                                                            .secondaryDark
                                                        : ColorManager.error),
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              context
                                                      .read<
                                                          InputValueCreateOrderCubit>()
                                                      .updateAttachmentsUpload
                                                      .firstWhere(
                                                        (element) =>
                                                            element
                                                                .travelerId ==
                                                            traveler.travelerId,
                                                        orElse: () {
                                                          return InputMissedAttachmentModel();
                                                        },
                                                      )
                                                      .attachments
                                                      .any((element) =>
                                                          element.type ==
                                                          e.attachmentId)
                                                  ? Icons.check
                                                  : Icons.close,
                                              size: AppSizeSp.s14,
                                              color: context
                                                      .read<
                                                          InputValueCreateOrderCubit>()
                                                      .updateAttachmentsUpload
                                                      .firstWhere(
                                                        (element) =>
                                                            element
                                                                .travelerId ==
                                                            traveler.travelerId,
                                                        orElse: () {
                                                          return InputMissedAttachmentModel();
                                                        },
                                                      )
                                                      .attachments
                                                      .any((element) =>
                                                          element.type ==
                                                          e.attachmentId)
                                                  ? ColorManager.secondaryDark
                                                  : ColorManager.error,
                                            ),
                                          ),
                                          SizedBox(width: AppSizeW.s8),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSizeR.s12),
                                                border: Border.all(
                                                    color:
                                                        ColorManager.primary)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  height: AppSizeH.s40,
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      final List<XFile> images =
                                                          await picker
                                                              .pickMultiImage();
                                                      context
                                                          .read<
                                                              InputValueCreateOrderCubit>()
                                                          .addUploadAttachments(
                                                              traveler
                                                                  .travelerId,
                                                              e.attachmentId,
                                                              e.attachmentName,
                                                              images);
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Icon(
                                                          Icons.upload_file,
                                                          size: AppSizeSp.s14,
                                                        ),
                                                        SizedBox(
                                                            width: AppSizeW.s4),
                                                        Text(
                                                          e.attachmentName,
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .displayMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Wrap(
                                                  children: context
                                                      .read<
                                                          InputValueCreateOrderCubit>()
                                                      .updateAttachmentsUpload
                                                      .firstWhere(
                                                        (element) =>
                                                            element
                                                                .travelerId ==
                                                            traveler.travelerId,
                                                        orElse: () {
                                                          return InputMissedAttachmentModel();
                                                        },
                                                      )
                                                      .attachments
                                                      .firstWhere(
                                                        (element) =>
                                                            element.type ==
                                                            e.attachmentId,
                                                        orElse: () {
                                                          return const AttachmentsCreateTravelerModel();
                                                        },
                                                      )
                                                      .file
                                                      .map(
                                                        (e) {
                                                          return Image.memory(
                                                            base64Decode(e),
                                                            width: AppSizeW.s54,
                                                            height:
                                                                AppSizeH.s40,
                                                          );
                                                        },
                                                      )
                                                      .toList(),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                            SizedBox(height: AppSizeH.s10),
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: BlocConsumer(
                                      listener: (context,
                                          UpdateAttachmentsState state) {
                                        state.mapOrNull(
                                          success: (value) {
                                            Navigator.of(context).pop();
                                            confirmOrderBloc.add(ConfirmWaitingOrderEvent.confirmWaiting(
                                                input: InputConfirmWaitingModel(
                                                    totalPaid: double.parse(context
                                                            .read<
                                                                InputValueCreateOrderCubit>()
                                                            .amountReceived
                                                            .text
                                                            .isEmpty
                                                        ? "0"
                                                        : context
                                                            .read<
                                                                InputValueCreateOrderCubit>()
                                                            .amountReceived
                                                            .text),
                                                    orderId: context
                                                            .read<
                                                                InputValueCreateOrderCubit>()
                                                            .orderId ??
                                                        0,
                                                    currency: context
                                                            .read<
                                                                CurrenciesBloc>()
                                                            .currencySelected
                                                            ?.id ??
                                                        0)));
                                          },
                                        );
                                      },
                                      bloc: updateAttachmentsBloc,
                                      builder: (context,
                                          UpdateAttachmentsState state) {
                                        return state.maybeMap(
                                          loading: (value) {
                                            return const LinearProgressIndicator();
                                          },
                                          orElse: () {
                                            return ElevatedButton(
                                              onPressed: () {
                                                updateAttachmentsBloc.add(
                                                    UpdateAttachmentsEvent
                                                        .updateAttachments(
                                                            input: InputUpdateAttachmentsModel(
                                                                input: context
                                                                    .read<
                                                                        InputValueCreateOrderCubit>()
                                                                    .updateAttachmentsUpload)));
                                              },
                                              child: Text("تحديث المعلومات",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                          color: ColorManager
                                                              .white)),
                                            );
                                          },
                                        );
                                      },
                                    )),
                                SizedBox(width: AppSizeW.s12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                ColorManager.white),
                                        shape: WidgetStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSizeR.s7),
                                                side: BorderSide(
                                                    color: ColorManager
                                                        .primary)))),
                                    child: Text(
                                      "الغاء",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                ),
                              ],
                            )

                            // ElevatedButton(
                            //     onPressed: () {
                            //       print(context
                            //           .read<InputValueCreateOrderCubit>()
                            //           .updateAttachmentsUpload
                            //           .firstWhere(
                            //             (element) =>
                            //                 element.travelerId ==
                            //                 traveler.travelerId,
                            //             orElse: () {
                            //               return InputMissedAttachmentModel();
                            //             },
                            //           )
                            //           .attachments
                            //           .length);
                            //       print(context
                            //           .read<InputValueCreateOrderCubit>()
                            //           .updateAttachmentsUpload
                            //           .map(
                            //         (e) {
                            //           return "${e.travelerId} ${e.attachments.length}";
                            //         },
                            //       ).toList());
                            //     },
                            //     child: const Text("data"))
                          ],
                        ),
                      ],
                    );
                  },
                ).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
