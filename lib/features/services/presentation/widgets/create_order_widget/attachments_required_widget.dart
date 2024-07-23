import 'dart:convert';

import 'package:alhazem/features/services/presentation/blocs/check_attachments_bloc/check_attachments_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';

import '../../../../../core/app/depndency_injection.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../../../../contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../../../../orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import '../../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';

class AttachmentsRequiredWidget extends StatefulWidget {
  const AttachmentsRequiredWidget({
    super.key,
  });

  @override
  State<AttachmentsRequiredWidget> createState() =>
      _AttachmentsRequiredWidgetState();
}

class _AttachmentsRequiredWidgetState extends State<AttachmentsRequiredWidget> {
  late CheckAttachmentsBloc checkAttachmentsBloc;
  // final ImagePicker picker = ImagePicker();
  @override
  void initState() {
    checkAttachmentsBloc = instance<CheckAttachmentsBloc>()
      ..add(CheckAttachmentsEvent.checkAttachments(
          serviceId: context.read<InputValueCreateOrderCubit>().serviceId,
          travelerIds: context
              .read<InputValueCreateOrderCubit>()
              .travelersContact
              .map((e) => e.id)
              .toList()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: context.read<InputValueCreateOrderCubit>(),
        builder: (context, state) {
          return BlocBuilder(
            bloc: checkAttachmentsBloc,
            builder: (context, CheckAttachmentsState state) {
              return state.maybeMap(
                success: (value) {
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                                children:
                                    value.attachments.data.map((traveler) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(),
                                    Row(
                                      children: [
                                        Text(
                                          "المسافر:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        SizedBox(width: AppSizeW.s4),
                                        Text(
                                          traveler.travelerName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s10),
                                    Row(
                                      children: [
                                        Text(
                                          "الأوراق المطلوبة:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s10),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // runSpacing: AppSizeH.s15,
                                              children: traveler.attachment.map(
                                                (e) {
                                                  return Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical:
                                                                AppSizeH.s4),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: AppSizeW.s25,
                                                          width: AppSizeW.s25,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  AppSizeW.s4),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: context
                                                                          .read<InputValueCreateOrderCubit>()
                                                                          .updateAttachmentsUpload
                                                                          .firstWhere(
                                                                            (element) =>
                                                                                element.travelerId ==
                                                                                traveler.travelerId,
                                                                            orElse:
                                                                                () {
                                                                              return const InputMissedAttachmentModel();
                                                                            },
                                                                          )
                                                                          .attachments
                                                                          .any((element) => element.type == e.attachmentId)
                                                                      ? ColorManager.secondaryDark
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
                                                                          traveler
                                                                              .travelerId,
                                                                      orElse:
                                                                          () {
                                                                        return const InputMissedAttachmentModel();
                                                                      },
                                                                    )
                                                                    .attachments
                                                                    .any((element) =>
                                                                        element
                                                                            .type ==
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
                                                                          traveler
                                                                              .travelerId,
                                                                      orElse:
                                                                          () {
                                                                        return const InputMissedAttachmentModel();
                                                                      },
                                                                    )
                                                                    .attachments
                                                                    .any((element) =>
                                                                        element
                                                                            .type ==
                                                                        e
                                                                            .attachmentId)
                                                                ? ColorManager
                                                                    .secondaryDark
                                                                : ColorManager
                                                                    .error,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                            width: AppSizeW.s8),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          AppSizeR
                                                                              .s12),
                                                              border: Border.all(
                                                                  color: ColorManager
                                                                      .primary)),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              SizedBox(
                                                                height: AppSizeH
                                                                    .s40,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () async {
                                                                    FilePickerResult?
                                                                        files =
                                                                        await FilePicker
                                                                            .platform
                                                                            .pickFiles(allowMultiple: true);
                                                                    if (files !=
                                                                        null) {
                                                                      context.read<InputValueCreateOrderCubit>().addUploadAttachments(
                                                                          traveler
                                                                              .travelerId,
                                                                          e.attachmentId,
                                                                          e.attachmentName,
                                                                          files.xFiles);
                                                                    }
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .upload_file,
                                                                        size: AppSizeSp
                                                                            .s14,
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              AppSizeW.s4),
                                                                      Text(
                                                                        e.attachmentName,
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .displayMedium,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              // Wrap(
                                                              //   children: context
                                                              //       .read<InputValueCreateOrderCubit>()
                                                              //       .updateAttachmentsUpload
                                                              //       .firstWhere(
                                                              //         (element) =>
                                                              //             element
                                                              //                 .travelerId ==
                                                              //             traveler
                                                              //                 .travelerId,
                                                              //         orElse:
                                                              //             () {
                                                              //           return const InputMissedAttachmentModel();
                                                              //         },
                                                              //       )
                                                              //       .attachments
                                                              //       .firstWhere(
                                                              //         (element) =>
                                                              //             element
                                                              //                 .type ==
                                                              //             e.attachmentId,
                                                              //         orElse:
                                                              //             () {
                                                              //           return const AttachmentsCreateTravelerModel();
                                                              //         },
                                                              //       )
                                                              //       .file
                                                              //       .map(
                                                              //         (e) {
                                                              //           return Image
                                                              //               .memory(
                                                              //             base64Decode(
                                                              //                 e),
                                                              //             width:
                                                              //                 AppSizeW.s54,
                                                              //             height:
                                                              //                 AppSizeH.s40,
                                                              //           );
                                                              //         },
                                                              //       )
                                                              //       .toList(),
                                                              // )
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
                                        ])
                                  ]);
                            }).toList()),
                          ),
                        )
                      ]));
                },
                loading: (value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            },
          );
        });
  }
}
