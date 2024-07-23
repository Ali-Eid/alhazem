import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:toastification/toastification.dart';

import '../../../../../core/app/depndency_injection.dart';
import '../../../../../core/bases/enums/entity_type.dart';
import '../../../../../core/bases/enums/gender_type.dart';
import '../../../../../core/bases/models/static_models/static_model.dart';
import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../../core/routers/routes_manager.dart';
import '../../../../../core/widgets/alert_dialog_widget.dart';
import '../../../../../core/widgets/toast.dart';
import '../../../../contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../../../../contacts/presentation/blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../../../../contacts/presentation/blocs/static_bloc/static_bloc.dart';
import '../../../../contacts/presentation/blocs/traveler_bloc/traveler_bloc.dart';
import '../../../../contacts/presentation/views/create_contract_view.dart';
import '../../../../contacts/presentation/widgets/drop_down_widget.dart';
import '../../../../contacts/presentation/widgets/input_field_widget.dart';
import '../../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';

class CreateTravelerWidget extends StatefulWidget {
  const CreateTravelerWidget({super.key});

  @override
  State<CreateTravelerWidget> createState() => _CreateTravelerWidgetState();
}

class _CreateTravelerWidgetState extends State<CreateTravelerWidget> {
  late TravelerBloc travelerBloc;
  late InputValueCreateCubit inputValueCubit;
  bool isExpandedPassportInfo = true;
  bool isExpandedIdentityInfo = true;
  bool isExpandedAttachments = true;
  // final _formKey = GlobalKey<FormState>();
  // final ImagePicker picker = ImagePicker();

  @override
  void initState() {
    travelerBloc = instance<TravelerBloc>();
    inputValueCubit = InputValueCreateCubit(0);
    context.read<StaticBloc>().add(const StaticEvent.getOffices());

    if (context.read<StaticBloc>().countries.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getCountries());
    }

    if (context.read<StaticBloc>().attachmentsTypes.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getAttachmentsType());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputValueCubit,
      builder: (context, state) {
        return Form(
          key: inputValueCubit.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: BlocListener(
            bloc: travelerBloc,
            listener: (context, TravelerState state) {
              state.mapOrNull(
                error: (value) {
                  showToast(
                      context: context,
                      message: value.message,
                      type: ToastificationType.error);
                },
                loaded: (value) {
                  showToast(context: context, message: value.contact.message);
                  context
                      .read<InputValueCreateOrderCubit>()
                      .addTravelersId(value.contact.data);

                  Navigator.of(context).pop();
                },
              );
            },
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: AppSizeW.s200,
                          child: BlocBuilder(
                            bloc: travelerBloc,
                            builder: (context, TravelerState state) {
                              return state.maybeMap(
                                loading: (value) {
                                  return const LinearProgressIndicator();
                                },
                                orElse: () {
                                  return ElevatedButton(
                                      onPressed: () {
                                        if (inputValueCubit
                                            .formKey.currentState!
                                            .validate()) {
                                          if (inputValueCubit
                                                  .attachmentsTypes.length ==
                                              inputValueCubit
                                                  .attachmentsUpload.length) {
                                            travelerBloc.add(TravelerEvent.createTraveler(
                                                input: InputCreateTravelerModel(
                                                    name: inputValueCubit
                                                        .nameController.text,
                                                    phoneNumber: inputValueCubit
                                                        .phoneController.text,
                                                    whatsAppNumber: inputValueCubit
                                                        .whatsAppController
                                                        .text,
                                                    countryId: inputValueCubit
                                                            .countrySelected
                                                            ?.id ??
                                                        0,
                                                    stateId:
                                                        inputValueCubit.stateSelected?.id ??
                                                            0,
                                                    officeId: inputValueCubit.officeSelected?.id == 0
                                                        ? null
                                                        : inputValueCubit.officeSelected?.id,
                                                    vip: inputValueCubit.isVip ?? false,
                                                    type: EntityType.person.name,
                                                    city: inputValueCubit.cityController.text,
                                                    street: inputValueCubit.streetController.text,
                                                    street2: inputValueCubit.street2Controller.text,
                                                    reference: inputValueCubit.noteController.text,
                                                    passportName: inputValueCubit.namePassportController.text,
                                                    ePassportName: inputValueCubit.eNamePassportController.text,
                                                    passportSurname: inputValueCubit.surnamePassportController.text,
                                                    ePassportSurname: inputValueCubit.eSurnamePassportController.text,
                                                    passportMotherName: inputValueCubit.motherNamePassportController.text,
                                                    ePassportMotherName: inputValueCubit.eMotherNamePassportController.text,
                                                    passportFatherName: inputValueCubit.fatherNamePassportController.text,
                                                    ePassportFatherName: inputValueCubit.eFatherNamePassportController.text,
                                                    passportDateOfBirthday: inputValueCubit.dobPassportController.text,
                                                    ePassportDateOfBirthday: inputValueCubit.dobPassportController.text,
                                                    passportPlaceOfBirthday: inputValueCubit.birthPlacePassportController.text,
                                                    ePassportPlaceOfBirthday: inputValueCubit.eBirthPlacePassportController.text,
                                                    passportGender: inputValueCubit.genderSelected?.name ?? GenderType.male.name,
                                                    ePassportGender: inputValueCubit.genderSelected?.name ?? GenderType.male.name,
                                                    passportNumberOfPassport: inputValueCubit.numberPassportController.text,
                                                    ePassportNumberOfPassport: inputValueCubit.numberPassportController.text,
                                                    passportReleaseDate: inputValueCubit.issuedDatePassportController.text,
                                                    ePassportReleaseDate: inputValueCubit.issuedDatePassportController.text,
                                                    passportPlaceOfIssue: inputValueCubit.placeIssuePassportController.text,
                                                    ePassportPlaceOfIssue: inputValueCubit.placeIssuePassportController.text,
                                                    passportExpirationDate: inputValueCubit.expirationDatePassportController.text,
                                                    ePassportExpirationDate: inputValueCubit.expirationDatePassportController.text,
                                                    passportNationalNumber: inputValueCubit.nationalNumberPassportController.text,
                                                    ePassportNationalNumber: inputValueCubit.nationalNumberPassportController.text,
                                                    passportJob: inputValueCubit.jobPassportController.text,
                                                    ePassportJob: inputValueCubit.jobPassportController.text,
                                                    identitySurname: inputValueCubit.surnameIdentityController.text,
                                                    identityFather: inputValueCubit.fatherNameIdentityController.text,
                                                    identityMother: inputValueCubit.motherNameIdentityController.text,
                                                    identityDateOfBirthday: inputValueCubit.dobIdentityController.text,
                                                    identityPlaceOfBirthday: inputValueCubit.birthPlaceIdentityController.text,
                                                    identityNationalNumber: inputValueCubit.nationalNumberIdentityController.text,
                                                    identityGender: inputValueCubit.genderSelected?.name ?? GenderType.male.name,
                                                    attachments: inputValueCubit.attachmentsUpload)));
                                          } else {
                                            showToast(
                                                context: context,
                                                message:
                                                    "هناك بعض المرفقات غير محددة",
                                                type:
                                                    ToastificationType.warning);
                                          }
                                        } else {}
                                      },
                                      child: const Text("انشاء مسافر"));
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  SizedBox(height: AppSizeH.s12),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(AppSizeW.s8),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Info Section
                            Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s15,
                                    vertical: AppSizeH.s25),
                                decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorManager.shadow,
                                          blurRadius: AppSizeR.s2)
                                    ],
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s12)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("معلومات المسافر",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium),
                                        Row(
                                          children: [
                                            Text(
                                              "VIP",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Checkbox(
                                              value: inputValueCubit.isVip,
                                              onChanged: (value) {
                                                inputValueCubit.setVip(value);
                                              },
                                              side: BorderSide(
                                                  width: AppSizeW.s1_5,
                                                  color: ColorManager.primary),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s15),
                                    Wrap(
                                      runSpacing: AppSizeH.s15,
                                      alignment: WrapAlignment.start,
                                      children: [
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "الأسم لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "الأسم",
                                            controller:
                                                inputValueCubit.nameController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "رقم الهاتف لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "رقم الهاتف",
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: inputValueCubit
                                                .phoneController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "رقم الواتس اب لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "رقم الواتس اب",
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: inputValueCubit
                                                .whatsAppController),
                                        BlocBuilder(
                                          bloc: context.read<StaticBloc>(),
                                          builder:
                                              (context, StaticState state) {
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: AppSizeW.s8),
                                              child: SizedBox(
                                                width: AppSizeW.s250,
                                                child: DropDownWidget(
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "الرجاء اختيار البلد";
                                                      }
                                                      return null;
                                                    },
                                                    onChanged: (country) {
                                                      inputValueCubit
                                                          .setCountry(country);
                                                      context
                                                          .read<StaticBloc>()
                                                          .add(
                                                            StaticEvent.getStates(
                                                                countryId:
                                                                    country?.id ??
                                                                        0),
                                                          );
                                                    },
                                                    items: context
                                                        .read<StaticBloc>()
                                                        .countries,
                                                    labelText: "البلد"),
                                              ),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s8),
                                          child: SizedBox(
                                            width: AppSizeW.s250,
                                            child: BlocBuilder(
                                              bloc: context.read<StaticBloc>(),
                                              builder:
                                                  (context, StaticState state) {
                                                return state.maybeMap(
                                                  loaded: (value) {
                                                    return DropDownWidget(
                                                        // validator: (value) {
                                                        //   if (value == null) {
                                                        //     return "الرجاء اختيار المنطقة";
                                                        //   }
                                                        //   return null;
                                                        // },
                                                        onChanged: (state) {
                                                          inputValueCubit
                                                              .setState(state);
                                                        },
                                                        items: value.states,
                                                        labelText: "المنطقة");
                                                  },
                                                  orElse: () {
                                                    return DropDownWidget(
                                                        validator: (value) {
                                                          if (value == null) {
                                                            return "الرجاء اختيار المنطقة";
                                                          }
                                                          return null;
                                                        },
                                                        items: const [],
                                                        labelText: "المنطقة");
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "المدينة لا يمكن ان يكون فارغة";
                                              }
                                              return null;
                                            },
                                            labelText: "المدينة",
                                            controller:
                                                inputValueCubit.cityController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "الشارع لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "الشارع",
                                            controller: inputValueCubit
                                                .streetController),
                                        InputFieldWidget(
                                            labelText: "الشارع2",
                                            controller: inputValueCubit
                                                .street2Controller),
                                        BlocBuilder(
                                          bloc: context.read<StaticBloc>(),
                                          builder:
                                              (context, StaticState state) {
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: AppSizeW.s8),
                                              child: SizedBox(
                                                width: AppSizeW.s250,
                                                child: DropDownWidget(
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "الرجاء اختيار المكتب";
                                                      }
                                                      return null;
                                                    },
                                                    onChanged: (office) {
                                                      inputValueCubit
                                                          .setOffice(office);
                                                    },
                                                    items: context
                                                        .read<StaticBloc>()
                                                        .offices,
                                                    labelText: "المكتب"),
                                              ),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  controller: inputValueCubit
                                                      .noteController,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .only(
                                                                  start:
                                                                      AppSizeW
                                                                          .s10,
                                                                  end: AppSizeW
                                                                      .s4),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "ملاحظات:",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headlineLarge,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(height: AppSizeH.s25),
                            //Passport section
                            Container(
                              padding:
                                  EdgeInsets.symmetric(vertical: AppSizeH.s15),
                              decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorManager.shadow,
                                        blurRadius: AppSizeR.s2)
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("معلومات جواز السفر",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    isExpandedPassportInfo =
                                                        !isExpandedPassportInfo;
                                                  });
                                                },
                                                icon: Icon(isExpandedPassportInfo
                                                    ? Icons
                                                        .arrow_drop_up_outlined
                                                    : Icons
                                                        .arrow_drop_down_sharp)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  AnimatedSwitcher(
                                    switchInCurve: Curves.linear,
                                    switchOutCurve: Curves.linear,
                                    reverseDuration:
                                        const Duration(milliseconds: 500),
                                    duration: const Duration(milliseconds: 500),
                                    child: !isExpandedPassportInfo
                                        ? const SizedBox()
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical:
                                                                  AppSizeH.s8,
                                                              horizontal:
                                                                  AppSizeW.s15),
                                                      decoration: BoxDecoration(
                                                          color: ColorManager
                                                              .primary,
                                                          borderRadius: BorderRadiusDirectional.only(
                                                              topEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12),
                                                              bottomEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "معلومات باللغة العربية",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayMedium!
                                                                .copyWith(
                                                                    fontSize:
                                                                        AppSizeSp
                                                                            .s12),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s15),
                                                child: Wrap(
                                                  runSpacing: AppSizeH.s15,
                                                  children: [
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الأسم لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الأسم",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .namePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الكنية لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الكنية",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .surnamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الاب لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الاب",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .fatherNamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الام لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الام",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .motherNamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "مكان الولادة لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "مكان الولادة",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .birthPlacePassportController),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: AppSizeH.s15),
                                              Row(
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical:
                                                                  AppSizeH.s8,
                                                              horizontal:
                                                                  AppSizeW.s15),
                                                      decoration: BoxDecoration(
                                                          color: ColorManager
                                                              .primary,
                                                          borderRadius: BorderRadiusDirectional.only(
                                                              topEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12),
                                                              bottomEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "معلومات باللغة الأجنبية",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayMedium!
                                                                .copyWith(
                                                                    fontSize:
                                                                        AppSizeSp
                                                                            .s12),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s15),
                                                child: Wrap(
                                                  runSpacing: AppSizeH.s15,
                                                  children: [
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الأسم لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "Name",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[a-zA-Z\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .eNamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الكنية لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "Surname",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[a-zA-Z\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .eSurnamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الاب لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "Father name",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[a-zA-Z\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .eFatherNamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الام لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "Mother name",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[a-zA-Z\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .eMotherNamePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "مكان الولادة لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "Birth place",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[a-zA-Z\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .eBirthPlacePassportController),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                              Row(
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical:
                                                                  AppSizeH.s8,
                                                              horizontal:
                                                                  AppSizeW.s15),
                                                      decoration: BoxDecoration(
                                                          color: ColorManager
                                                              .primary,
                                                          borderRadius: BorderRadiusDirectional.only(
                                                              topEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12),
                                                              bottomEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s12))),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "معلومات عامة",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayMedium!
                                                                .copyWith(
                                                                    fontSize:
                                                                        AppSizeSp
                                                                            .s12),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s15),
                                                child: Wrap(
                                                  runSpacing: AppSizeH.s15,
                                                  children: [
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرجاء تحديد تاريخ الولادة";
                                                          }
                                                          return null;
                                                        },
                                                        isReadOnly: true,
                                                        onTap: () async {
                                                          DateTime?
                                                              selectedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDatePickerMode:
                                                                DatePickerMode
                                                                    .year,
                                                            initialEntryMode:
                                                                DatePickerEntryMode
                                                                    .calendarOnly,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime.now(),
                                                          );
                                                          inputValueCubit
                                                              .setDob(
                                                                  selectedDate);
                                                        },
                                                        labelText:
                                                            "تاريخ الولادة",
                                                        controller: inputValueCubit
                                                            .dobPassportController),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal:
                                                                  AppSizeW.s8),
                                                      child: SizedBox(
                                                        width: AppSizeW.s250,
                                                        child: DropDownWidget(
                                                          validator: (value) {
                                                            if (value == null) {
                                                              return "الرجاء اختيار الجنس";
                                                            }
                                                            return null;
                                                          },
                                                          onChanged: (gender) {
                                                            inputValueCubit
                                                                .setGender(
                                                                    gender);
                                                          },
                                                          items: [
                                                            StaticModel(
                                                                id: GenderType
                                                                    .male.index,
                                                                name: GenderType
                                                                    .male.name),
                                                            StaticModel(
                                                                id: GenderType
                                                                    .female
                                                                    .index,
                                                                name: GenderType
                                                                    .female
                                                                    .name)
                                                          ],
                                                          labelText: "الجنس",
                                                        ),
                                                      ),
                                                    ),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "رقم جواز السفر لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "رقم جواز السفر",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        controller: inputValueCubit
                                                            .numberPassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "مكان الاصدار لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "مكان الاصدار",
                                                        controller: inputValueCubit
                                                            .placeIssuePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرجاء تحديد تاريخ الاصدار";
                                                          }
                                                          return null;
                                                        },
                                                        isReadOnly: true,
                                                        onTap: () async {
                                                          DateTime?
                                                              selectedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDatePickerMode:
                                                                DatePickerMode
                                                                    .year,
                                                            initialEntryMode:
                                                                DatePickerEntryMode
                                                                    .calendarOnly,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime.now(),
                                                          );
                                                          inputValueCubit
                                                              .setIssuedDate(
                                                                  selectedDate);
                                                        },
                                                        labelText:
                                                            "تاريخ الاصدار",
                                                        controller: inputValueCubit
                                                            .issuedDatePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرجاء تحديد تاريخ الانتهاء";
                                                          }
                                                          return null;
                                                        },
                                                        isReadOnly: true,
                                                        onTap: () async {
                                                          DateTime?
                                                              selectedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDatePickerMode:
                                                                DatePickerMode
                                                                    .year,
                                                            initialEntryMode:
                                                                DatePickerEntryMode
                                                                    .calendarOnly,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2100),
                                                          );
                                                          inputValueCubit
                                                              .setExpirationDate(
                                                                  selectedDate);
                                                        },
                                                        labelText:
                                                            "تاريخ الانتهاء",
                                                        controller: inputValueCubit
                                                            .expirationDatePassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرقم الوطني لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "الرقم الوطني",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        controller: inputValueCubit
                                                            .nationalNumberPassportController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "المهنة لا يمكن ان يكون فارغة";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "المهنة",
                                                        controller: inputValueCubit
                                                            .jobPassportController),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: AppSizeH.s25),
                            //Identity section
                            Container(
                              padding:
                                  EdgeInsets.symmetric(vertical: AppSizeH.s15),
                              decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorManager.shadow,
                                        blurRadius: AppSizeR.s2)
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("معلومات الهوية",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium),
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isExpandedIdentityInfo =
                                                    !isExpandedIdentityInfo;
                                              });
                                            },
                                            icon: Icon(isExpandedIdentityInfo
                                                ? Icons.arrow_drop_down_sharp
                                                : Icons.arrow_drop_up_outlined))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  AnimatedSwitcher(
                                    switchInCurve: Curves.linear,
                                    switchOutCurve: Curves.linear,
                                    reverseDuration:
                                        const Duration(milliseconds: 500),
                                    duration: const Duration(milliseconds: 500),
                                    child: !isExpandedIdentityInfo
                                        ? const SizedBox()
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s15),
                                                child: Wrap(
                                                  runSpacing: AppSizeH.s15,
                                                  children: [
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الأسم لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الأسم",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .nameIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الكنية لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الكنية",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .surnameIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الاب لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الاب",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .fatherNameIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الام لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الام",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .motherNameIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "مكان الولادة لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "مكان الولادة",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .birthPlaceIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرجاء تحديد تاريخ الولادة";
                                                          }
                                                          return null;
                                                        },
                                                        isReadOnly: true,
                                                        onTap: () async {
                                                          DateTime?
                                                              selectedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDatePickerMode:
                                                                DatePickerMode
                                                                    .year,
                                                            initialEntryMode:
                                                                DatePickerEntryMode
                                                                    .calendarOnly,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime.now(),
                                                          );
                                                          inputValueCubit
                                                              .setDobIdentity(
                                                                  selectedDate);
                                                        },
                                                        labelText:
                                                            "تاريخ الولادة",
                                                        controller: inputValueCubit
                                                            .dobIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرقم الوطني لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "الرقم الوطني",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        controller: inputValueCubit
                                                            .nationalNumberIdentityController),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                            ],
                                          ),
                                  )
                                ],
                              ),
                            ),

                            //Attachments Section
                            SizedBox(height: AppSizeH.s25),
                            Container(
                              padding:
                                  EdgeInsets.symmetric(vertical: AppSizeH.s15),
                              decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorManager.shadow,
                                        blurRadius: AppSizeR.s2)
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("المرفقات",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (_) =>
                                                      AlertDialogWidget(
                                                          insetPadding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      AppSizeH
                                                                          .s150),
                                                          title:
                                                              "اضافة المرفقات",
                                                          content: BlocProvider
                                                              .value(
                                                            value:
                                                                inputValueCubit,
                                                            child:
                                                                const ChooseAttachmentsTypeWidget(),
                                                          )),
                                                );
                                              },
                                              style: ButtonStyle(
                                                  padding:
                                                      const WidgetStatePropertyAll(
                                                          EdgeInsets.zero),
                                                  shape: WidgetStateProperty.all(
                                                      const CircleBorder())),
                                              child: const Icon(Icons.add),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    isExpandedAttachments =
                                                        !isExpandedAttachments;
                                                  });
                                                },
                                                icon: Icon(isExpandedAttachments
                                                    ? Icons
                                                        .arrow_drop_down_sharp
                                                    : Icons
                                                        .arrow_drop_up_outlined))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  AnimatedSwitcher(
                                    switchInCurve: Curves.linear,
                                    switchOutCurve: Curves.linear,
                                    reverseDuration:
                                        const Duration(milliseconds: 500),
                                    duration: const Duration(milliseconds: 500),
                                    child: !isExpandedAttachments
                                        ? const SizedBox()
                                        : Column(
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
                                                  children: inputValueCubit
                                                      .attachmentsTypes
                                                      .map(
                                                    (e) {
                                                      return Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical:
                                                                    AppSizeH
                                                                        .s4),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height:
                                                                  AppSizeW.s25,
                                                              width:
                                                                  AppSizeW.s25,
                                                              padding:
                                                                  EdgeInsets.all(
                                                                      AppSizeW
                                                                          .s4),
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: inputValueCubit.attachmentsUpload.any((element) =>
                                                                              element.type ==
                                                                              e
                                                                                  .id)
                                                                          ? ColorManager
                                                                              .secondaryDark
                                                                          : ColorManager
                                                                              .error),
                                                                  shape: BoxShape
                                                                      .circle),
                                                              child: Icon(
                                                                inputValueCubit
                                                                        .attachmentsUpload
                                                                        .any((element) =>
                                                                            element.type ==
                                                                            e.id)
                                                                    ? Icons.check
                                                                    : Icons.close,
                                                                size: AppSizeSp
                                                                    .s14,
                                                                color: inputValueCubit
                                                                        .attachmentsUpload
                                                                        .any((element) =>
                                                                            element.type ==
                                                                            e
                                                                                .id)
                                                                    ? ColorManager
                                                                        .secondaryDark
                                                                    : ColorManager
                                                                        .error,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                width: AppSizeW
                                                                    .s8),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
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
                                                                    height:
                                                                        AppSizeH
                                                                            .s40,
                                                                    child:
                                                                        ElevatedButton(
                                                                      onPressed:
                                                                          () async {
                                                                        FilePickerResult?
                                                                            files =
                                                                            await FilePicker.platform.pickFiles(allowMultiple: true);
                                                                        if (files !=
                                                                            null) {
                                                                          inputValueCubit.addUploadAttachments(
                                                                              e.id,
                                                                              e.name,
                                                                              files.xFiles);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.upload_file,
                                                                            size:
                                                                                AppSizeSp.s14,
                                                                          ),
                                                                          SizedBox(
                                                                              width: AppSizeW.s4),
                                                                          Text(
                                                                            e.name,
                                                                            style:
                                                                                Theme.of(context).textTheme.displayMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // Wrap(
                                                                  //   children: inputValueCubit
                                                                  //       .attachmentsUpload
                                                                  //       .firstWhere(
                                                                  //         (element) =>
                                                                  //             element.type ==
                                                                  //             e.id,
                                                                  //         orElse:
                                                                  //             () {
                                                                  //           return const AttachmentsCreateTravelerModel();
                                                                  //         },
                                                                  //       )
                                                                  //       .file
                                                                  //       .map(
                                                                  //         (e) {
                                                                  //           return Image.memory(
                                                                  //             base64Decode(e),
                                                                  //             width: AppSizeW.s54,
                                                                  //             height: AppSizeH.s40,
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
                                              // ElevatedButton(
                                              //     onPressed: () {
                                              //       print(inputValueCubit
                                              //           .attachmentsUpload
                                              //           .map(
                                              //         (e) => {"${e.type}:${e.name}"},
                                              //       ));
                                              //     },
                                              //     child: const Text("data"))
                                            ],
                                          ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: AppSizeH.s25),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
