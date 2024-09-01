import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/app/depndency_injection.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../../core/widgets/alert_dialog_widget.dart';
import '../../../../../core/widgets/toast.dart';
import '../../../../contacts/presentation/blocs/static_bloc/static_bloc.dart';
import '../../../../contacts/presentation/views/create_contract_view.dart';
import '../../../../services/presentation/blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import '../../../domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../../../domain/models/order_details_model/order_details_model.dart';
import '../../blocs/update_attachments_bloc/update_attachments_bloc.dart';

class ArchiveAttachmentsWidget extends StatefulWidget {
  final int orderId;
  final List<OrderLineModel> orders;

  const ArchiveAttachmentsWidget(
      {super.key, required this.orderId, required this.orders});

  @override
  State<ArchiveAttachmentsWidget> createState() =>
      _ArchiveAttachmentsWidgetState();
}

class _ArchiveAttachmentsWidgetState extends State<ArchiveAttachmentsWidget> {
  late UpdateAttachmentsBloc updateAttachmentsBloc;
  @override
  void initState() {
    updateAttachmentsBloc = instance<UpdateAttachmentsBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: updateAttachmentsBloc,
      listener: (context, UpdateAttachmentsState state) {
        state.mapOrNull(
          success: (value) {
            showToast(context: context, message: value.success.message);
            Navigator.of(context).pop();
          },
        );
      },
      child: BlocBuilder(
        bloc: context.read<InputValueCreateOrderCubit>(),
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: widget.orders
                          .map(
                            (e) => e.customer,
                          )
                          .toList()
                          .map(
                        (traveler) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(),
                              Row(
                                children: [
                                  Text(
                                    "المسافر:",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  SizedBox(width: AppSizeW.s4),
                                  Text(
                                    traveler.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )
                                ],
                              ),
                              SizedBox(height: AppSizeH.s10),
                              BlocProvider.value(
                                value:
                                    context.read<InputValueCreateOrderCubit>(),
                                child: UploadArchiveWidget(
                                  travelerId: traveler.id,
                                ),
                              )
                            ],
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: BlocBuilder(
                        bloc: updateAttachmentsBloc,
                        builder: (context, UpdateAttachmentsState state) {
                          return state.maybeMap(
                            loading: (value) {
                              return const LinearProgressIndicator();
                            },
                            orElse: () {
                              return ElevatedButton(
                                onPressed: () {
                                  updateAttachmentsBloc.add(
                                      UpdateAttachmentsEvent.updateAttachments(
                                          input: InputUpdateAttachmentsModel(
                                              orderId: widget.orderId,
                                              input: context
                                                  .read<
                                                      InputValueCreateOrderCubit>()
                                                  .updateAttachmentsUpload)));
                                },
                                child: Text("تحديث المعلومات",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: ColorManager.white)),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(width: AppSizeW.s12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(ColorManager.white),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s7),
                                    side: BorderSide(
                                        color: ColorManager.primary)))),
                        child: Text(
                          "الغاء",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizeH.s10),
              ],
            ),
          );
        },
      ),
    );
  }
}

class UploadArchiveWidget extends StatefulWidget {
  final int travelerId;
  const UploadArchiveWidget({super.key, required this.travelerId});

  @override
  State<UploadArchiveWidget> createState() => _UploadArchiveWidgetState();
}

class _UploadArchiveWidgetState extends State<UploadArchiveWidget> {
  late InputValueCreateOrderCubit inputValueCreateOrderCubit;
  @override
  void initState() {
    inputValueCreateOrderCubit = instance<InputValueCreateOrderCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return BlocBuilder(
          bloc: context.read<StaticBloc>(),
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizeR.s12),
                      border: Border.all(color: ColorManager.primary)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: AppSizeH.s40,
                        child: ElevatedButton(
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialogWidget(
                                    insetPadding: EdgeInsets.symmetric(
                                        vertical: AppSizeH.s150),
                                    title: "اضافة المرفقات",
                                    content: BlocProvider.value(
                                      value: inputValueCreateOrderCubit,
                                      child: const SelectTypeArchiveWidget(),
                                    )),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.upload_file,
                                  size: AppSizeSp.s14,
                                ),
                                SizedBox(width: AppSizeW.s4),
                                Text(
                                  "تحديد المرفقات",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSizeH.s16),
                // TextButton(
                //     onPressed: () {
                //       print(context
                //           .read<InputValueCreateOrderCubit>()
                //           .updateAttachmentsUpload
                //           .map(
                //         (e) {
                //           return {
                //             "travelId": "${e.travelerId}",
                //             "typeName": "${e.attachments.map(
                //                   (e) => e.name,
                //                 ).toList()}"
                //           };
                //         },
                //       ).toList());
                //     },
                //     child: const Text("data")),
                BlocBuilder(
                  bloc: inputValueCreateOrderCubit,
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // runSpacing: AppSizeH.s15,
                            children:
                                inputValueCreateOrderCubit.attachmentsTypes.map(
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
                                        padding: EdgeInsets.all(AppSizeW.s4),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: inputValueCreateOrderCubit
                                                        .updateAttachmentsUpload
                                                        .firstWhere(
                                                          (element) =>
                                                              element
                                                                  .travelerId ==
                                                              widget.travelerId,
                                                          orElse: () {
                                                            return const InputMissedAttachmentModel();
                                                          },
                                                        )
                                                        .attachments
                                                        .any((element) =>
                                                            element.type ==
                                                            e.id)
                                                    ? ColorManager.secondaryDark
                                                    : ColorManager.error),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          inputValueCreateOrderCubit
                                                  .updateAttachmentsUpload
                                                  .firstWhere(
                                                    (element) =>
                                                        element.travelerId ==
                                                        widget.travelerId,
                                                    orElse: () {
                                                      return const InputMissedAttachmentModel();
                                                    },
                                                  )
                                                  .attachments
                                                  .any((element) =>
                                                      element.type == e.id)
                                              ? Icons.check
                                              : Icons.close,
                                          size: AppSizeSp.s14,
                                          color: inputValueCreateOrderCubit
                                                  .updateAttachmentsUpload
                                                  .firstWhere(
                                                    (element) =>
                                                        element.travelerId ==
                                                        widget.travelerId,
                                                    orElse: () {
                                                      return const InputMissedAttachmentModel();
                                                    },
                                                  )
                                                  .attachments
                                                  .any((element) =>
                                                      element.type == e.id)
                                              ? ColorManager.secondaryDark
                                              : ColorManager.error,
                                        ),
                                      ),
                                      SizedBox(width: AppSizeW.s8),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                AppSizeR.s12),
                                            border: Border.all(
                                                color: ColorManager.primary)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: AppSizeH.s40,
                                              child: ElevatedButton(
                                                onPressed: () async {
                                                  FilePickerResult? files =
                                                      await FilePicker.platform
                                                          .pickFiles(
                                                              allowMultiple:
                                                                  true);
                                                  if (files != null) {
                                                    inputValueCreateOrderCubit
                                                        .addUploadAttachments(
                                                            widget.travelerId,
                                                            e.id,
                                                            e.name,
                                                            files.xFiles);
                                                    context
                                                        .read<
                                                            InputValueCreateOrderCubit>()
                                                        .addUploadAttachments(
                                                            widget.travelerId,
                                                            e.id,
                                                            e.name,
                                                            files.xFiles);
                                                  }
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
                                                      e.name,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
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
                      ],
                    );
                  },
                )
              ],
            );
          },
        );
      },
    );
  }
}

class SelectTypeArchiveWidget extends StatefulWidget {
  const SelectTypeArchiveWidget({
    super.key,
  });

  @override
  State<SelectTypeArchiveWidget> createState() =>
      _SelectTypeArchiveWidgetState();
}

class _SelectTypeArchiveWidgetState extends State<SelectTypeArchiveWidget> {
  @override
  void initState() {
    context.read<InputValueCreateOrderCubit>().setAttachmentsTypeTemp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizeW.s15, vertical: AppSizeH.s25),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  boxShadow: [
                    BoxShadow(
                        color: ColorManager.shadow, blurRadius: AppSizeR.s2)
                  ],
                  borderRadius: BorderRadius.circular(AppSizeR.s12),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: context.read<StaticBloc>().attachmentsTypes.map(
                      (e) {
                        return InkWell(
                          onTap: context
                                  .read<InputValueCreateOrderCubit>()
                                  .attachmentsTypesTemp
                                  .contains(e)
                              ? () {
                                  context
                                      .read<InputValueCreateOrderCubit>()
                                      .removeAttachmentType(e);
                                }
                              : () {
                                  context
                                      .read<InputValueCreateOrderCubit>()
                                      .addAttachmentType(e);
                                },
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: AppSizeW.s15,
                                  height: AppSizeW.s15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5,
                                          color: ColorManager.black),
                                      borderRadius:
                                          BorderRadius.circular(AppSizeR.s3)),
                                  child: context
                                          .read<InputValueCreateOrderCubit>()
                                          .attachmentsTypesTemp
                                          .contains(e)
                                      ? Icon(
                                          Icons.check,
                                          color: ColorManager.secondary,
                                          size: AppSizeSp.s12,
                                        )
                                      : const SizedBox()),
                              SizedBox(width: AppSizeW.s12),
                              Text(e.name),
                            ],
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizeH.s15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<InputValueCreateOrderCubit>()
                          .setAttachmentsType();
                      Navigator.of(context).pop();
                    },
                    child: const Text("إضافة"),
                  ),
                ),
                SizedBox(width: AppSizeW.s8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(ColorManager.white),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizeR.s7),
                            side: BorderSide(color: ColorManager.primary)))),
                    child: Text(
                      "رجوع",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
