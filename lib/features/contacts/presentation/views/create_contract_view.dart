import 'dart:convert';
import 'dart:io';

import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:alhazem/core/widgets/alert_dialog_widget.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/presentation/blocs/static_bloc/static_bloc.dart';
import 'package:alhazem/features/contacts/presentation/blocs/traveler_bloc/traveler_bloc.dart';
import 'package:alhazem/features/contacts/presentation/widgets/check_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/gender_type.dart';
import '../../../../core/constants/values_manager.dart';
import '../blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class CreateContractView extends StatefulWidget {
  const CreateContractView({super.key});

  @override
  State<CreateContractView> createState() => _CreateContractViewState();
}

class _CreateContractViewState extends State<CreateContractView> {
  late TravelerBloc travelerBloc;
  late InputValueCreateCubit inputValueCubit;
  bool isExpandedPassportInfo = true;
  bool isExpandedIdentityInfo = true;
  bool isExpandedAttachments = true;
  final ImagePicker picker = ImagePicker();

  @override
  void initState() {
    travelerBloc = instance<TravelerBloc>();
    inputValueCubit = InputValueCreateCubit(0);
    if (context.read<StaticBloc>().countries.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getCountries());
    } else {
      print(context.read<StaticBloc>().countries);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputValueCubit,
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: AppSizeH.s22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: AppSizeW.s200,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("انشاء مسافر")),
                  )
                ],
              ),
            ),
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
                              horizontal: AppSizeW.s15, vertical: AppSizeH.s25),
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
                              Text("معلومات المسافر",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              SizedBox(height: AppSizeH.s15),
                              Wrap(
                                runSpacing: AppSizeH.s15,
                                alignment: WrapAlignment.start,
                                children: [
                                  InputFieldWidget(
                                      labelText: "الأسم",
                                      controller:
                                          inputValueCubit.nameController),
                                  InputFieldWidget(
                                      labelText: "رقم الهاتف",
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      controller:
                                          inputValueCubit.phoneController),
                                  InputFieldWidget(
                                      labelText: "رقم الواتس اب",
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      controller:
                                          inputValueCubit.whatsAppController),
                                  BlocBuilder(
                                    bloc: context.read<StaticBloc>(),
                                    builder: (context, StaticState state) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizeW.s8),
                                        child: SizedBox(
                                          width: AppSizeW.s250,
                                          child: DropDownWidget(
                                              onChanged: (country) {
                                                inputValueCubit
                                                    .setCountry(country);
                                                context.read<StaticBloc>().add(
                                                      StaticEvent.getStates(
                                                          countryId:
                                                              country?.id ?? 0),
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
                                        builder: (context, StaticState state) {
                                          return state.maybeMap(
                                            loaded: (value) {
                                              return DropDownWidget(
                                                  onChanged: (state) {
                                                    inputValueCubit
                                                        .setState(state);
                                                  },
                                                  items: value.states,
                                                  labelText: "المنطقة");
                                            },
                                            orElse: () {
                                              return const DropDownWidget(
                                                  items: [],
                                                  labelText: "المنطقة");
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  InputFieldWidget(
                                      labelText: "المدينة",
                                      controller:
                                          inputValueCubit.cityController),
                                  InputFieldWidget(
                                      labelText: "الشارع",
                                      controller:
                                          inputValueCubit.streetController),
                                  InputFieldWidget(
                                      labelText: "الشارع2",
                                      controller:
                                          inputValueCubit.street2Controller),
                                ],
                              ),
                            ],
                          )),
                      SizedBox(height: AppSizeH.s25),
                      //Passport section
                      Container(
                        padding: EdgeInsets.symmetric(vertical: AppSizeH.s15),
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorManager.shadow,
                                  blurRadius: AppSizeR.s2)
                            ],
                            borderRadius: BorderRadius.circular(AppSizeR.s12)),
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // ElevatedButton(
                                      //     onPressed: () async {
                                      //       final XFile? image =
                                      //           await picker.pickImage(
                                      //               source:
                                      //                   ImageSource.gallery);
                                      //       print(base64Encode(
                                      //           (await image!.readAsBytes())));
                                      //     },
                                      //     child: const Text("Scan passport")),
                                      // SizedBox(width: AppSizeW.s15),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isExpandedPassportInfo =
                                                  !isExpandedPassportInfo;
                                            });
                                          },
                                          icon: Icon(isExpandedPassportInfo
                                              ? Icons.arrow_drop_down_sharp
                                              : Icons.arrow_drop_up_outlined)),
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
                                                padding: EdgeInsets.symmetric(
                                                    vertical: AppSizeH.s8,
                                                    horizontal: AppSizeW.s15),
                                                decoration: BoxDecoration(
                                                    color: ColorManager.primary,
                                                    borderRadius:
                                                        BorderRadiusDirectional.only(
                                                            topEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12),
                                                            bottomEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12))),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "معلومات باللغة العربية",
                                                      style: Theme.of(context)
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
                                                  labelText: "الأسم",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .namePassportController),
                                              InputFieldWidget(
                                                  labelText: "الكنية",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .surnamePassportController),
                                              InputFieldWidget(
                                                  labelText: "الاب",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .fatherNamePassportController),
                                              InputFieldWidget(
                                                  labelText: "الام",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .motherNamePassportController),
                                              InputFieldWidget(
                                                  labelText: "مكان الولادة",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
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
                                                padding: EdgeInsets.symmetric(
                                                    vertical: AppSizeH.s8,
                                                    horizontal: AppSizeW.s15),
                                                decoration: BoxDecoration(
                                                    color: ColorManager.primary,
                                                    borderRadius:
                                                        BorderRadiusDirectional.only(
                                                            topEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12),
                                                            bottomEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12))),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "معلومات باللغة الأجنبية",
                                                      style: Theme.of(context)
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
                                                  labelText: "Name",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp(
                                                            r'[a-zA-Z\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .eNamePassportController),
                                              InputFieldWidget(
                                                  labelText: "Surname",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp(
                                                            r'[a-zA-Z\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .eSurnamePassportController),
                                              InputFieldWidget(
                                                  labelText: "Father name",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp(
                                                            r'[a-zA-Z\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .eFatherNamePassportController),
                                              InputFieldWidget(
                                                  labelText: "Mother name",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp(
                                                            r'[a-zA-Z\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .eMotherNamePassportController),
                                              InputFieldWidget(
                                                  labelText: "Birth place",
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
                                                padding: EdgeInsets.symmetric(
                                                    vertical: AppSizeH.s8,
                                                    horizontal: AppSizeW.s15),
                                                decoration: BoxDecoration(
                                                    color: ColorManager.primary,
                                                    borderRadius:
                                                        BorderRadiusDirectional.only(
                                                            topEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12),
                                                            bottomEnd:
                                                                Radius.circular(
                                                                    AppSizeR
                                                                        .s12))),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "معلومات عامة",
                                                      style: Theme.of(context)
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
                                                  isReadOnly: true,
                                                  onTap: () async {
                                                    DateTime? selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDatePickerMode:
                                                          DatePickerMode.year,
                                                      initialEntryMode:
                                                          DatePickerEntryMode
                                                              .calendarOnly,
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    inputValueCubit
                                                        .setDob(selectedDate);
                                                  },
                                                  labelText: "تاريخ الولادة",
                                                  controller: inputValueCubit
                                                      .dobPassportController),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s8),
                                                child: SizedBox(
                                                  width: AppSizeW.s250,
                                                  child: DropDownWidget(
                                                    onChanged: (gender) {
                                                      inputValueCubit
                                                          .setGender(gender);
                                                    },
                                                    items: [
                                                      StaticModel(
                                                          id: GenderType
                                                              .male.index,
                                                          name: GenderType
                                                              .male.name),
                                                      StaticModel(
                                                          id: GenderType
                                                              .female.index,
                                                          name: GenderType
                                                              .female.name)
                                                    ],
                                                    labelText: "الجنس",
                                                  ),
                                                ),
                                              ),
                                              InputFieldWidget(
                                                  labelText: "رقم جواز السفر",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  controller: inputValueCubit
                                                      .numberPassportController),
                                              InputFieldWidget(
                                                  labelText: "مكان الاصدار",
                                                  controller: inputValueCubit
                                                      .placeIssuePassportController),
                                              InputFieldWidget(
                                                  isReadOnly: true,
                                                  onTap: () async {
                                                    DateTime? selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDatePickerMode:
                                                          DatePickerMode.year,
                                                      initialEntryMode:
                                                          DatePickerEntryMode
                                                              .calendarOnly,
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    inputValueCubit
                                                        .setIssuedDate(
                                                            selectedDate);
                                                  },
                                                  labelText: "تاريخ الاصدار",
                                                  controller: inputValueCubit
                                                      .issuedDatePassportController),
                                              InputFieldWidget(
                                                  isReadOnly: true,
                                                  onTap: () async {
                                                    DateTime? selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDatePickerMode:
                                                          DatePickerMode.year,
                                                      initialEntryMode:
                                                          DatePickerEntryMode
                                                              .calendarOnly,
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime(2100),
                                                    );
                                                    inputValueCubit
                                                        .setExpirationDate(
                                                            selectedDate);
                                                  },
                                                  labelText: "تاريخ الانتهاء",
                                                  controller: inputValueCubit
                                                      .expirationDatePassportController),
                                              InputFieldWidget(
                                                  labelText: "الرقم الوطني",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  controller: inputValueCubit
                                                      .nationalNumberPassportController),
                                              InputFieldWidget(
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
                        padding: EdgeInsets.symmetric(vertical: AppSizeH.s15),
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorManager.shadow,
                                  blurRadius: AppSizeR.s2)
                            ],
                            borderRadius: BorderRadius.circular(AppSizeR.s12)),
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
                                                  labelText: "الأسم",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .nameIdentityController),
                                              InputFieldWidget(
                                                  labelText: "الكنية",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .surnameIdentityController),
                                              InputFieldWidget(
                                                  labelText: "الاب",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .fatherNameIdentityController),
                                              InputFieldWidget(
                                                  labelText: "الام",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .motherNameIdentityController),
                                              InputFieldWidget(
                                                  labelText: "مكان الولادة",
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(
                                                            RegExp(r'[ء-ي\s]')),
                                                  ],
                                                  controller: inputValueCubit
                                                      .birthPlaceIdentityController),
                                              InputFieldWidget(
                                                  isReadOnly: true,
                                                  onTap: () async {
                                                    DateTime? selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDatePickerMode:
                                                          DatePickerMode.year,
                                                      initialEntryMode:
                                                          DatePickerEntryMode
                                                              .calendarOnly,
                                                      firstDate: DateTime(1900),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    inputValueCubit
                                                        .setDobIdentity(
                                                            selectedDate);
                                                  },
                                                  labelText: "تاريخ الولادة",
                                                  controller: inputValueCubit
                                                      .dobIdentityController),
                                              InputFieldWidget(
                                                  labelText: "الرقم الوطني",
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
                        padding: EdgeInsets.symmetric(vertical: AppSizeH.s15),
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorManager.shadow,
                                  blurRadius: AppSizeR.s2)
                            ],
                            borderRadius: BorderRadius.circular(AppSizeR.s12)),
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
                                            builder: (_) => AlertDialogWidget(
                                                insetPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical:
                                                            AppSizeH.s150),
                                                title: "اضافة المرفقات",
                                                content: BlocProvider.value(
                                                  value: inputValueCubit,
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
                                              ? Icons.arrow_drop_down_sharp
                                              : Icons.arrow_drop_up_outlined))
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
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: AppSizeH.s4),
                                                  child: Container(
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
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                          height: AppSizeH.s40,
                                                          child: ElevatedButton(
                                                            onPressed:
                                                                () async {
                                                              List<String>
                                                                  imgBytes = [];
                                                              final List<XFile>
                                                                  images =
                                                                  await picker
                                                                      .pickMultiImage();
                                                              for (var image
                                                                  in images) {
                                                                imgBytes.add(base64Encode(
                                                                    File(image
                                                                            .path)
                                                                        .readAsBytesSync()));
                                                              }
                                                              inputValueCubit.addUploadAttachments(
                                                                  AttachmentsCreateTravelerModel(
                                                                      type:
                                                                          e.id,
                                                                      name: e
                                                                          .name,
                                                                      file:
                                                                          imgBytes));
                                                            },
                                                            child: Text(
                                                              e.name,
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .displayMedium,
                                                            ),
                                                          ),
                                                        ),
                                                        Wrap(
                                                          children: inputValueCubit
                                                              .attachmentsUpload
                                                              .firstWhere(
                                                                (element) =>
                                                                    element
                                                                        .type ==
                                                                    e.id,
                                                              )
                                                              .file
                                                              .map(
                                                            (e) {
                                                              return Image
                                                                  .memory(
                                                                base64Decode(e),
                                                                width: AppSizeW
                                                                    .s54,
                                                                height: AppSizeH
                                                                    .s40,
                                                              );
                                                            },
                                                          ).toList(),
                                                        )
                                                      ],
                                                    ),
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
                                        //           .attachmentsUpload);
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
        );
      },
    );
  }
}

class ChooseAttachmentsTypeWidget extends StatefulWidget {
  const ChooseAttachmentsTypeWidget({
    super.key,
  });

  @override
  State<ChooseAttachmentsTypeWidget> createState() =>
      _ChooseAttachmentsTypeWidgetState();
}

class _ChooseAttachmentsTypeWidgetState
    extends State<ChooseAttachmentsTypeWidget> {
  @override
  void initState() {
    context.read<InputValueCreateCubit>().setAttachmentsTypeTemp();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<StaticBloc>(),
      builder: (context, StaticState state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder(
              bloc: context.read<InputValueCreateCubit>(),
              builder: (context, state) {
                return Expanded(
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
                        children:
                            context.read<StaticBloc>().attachmentsTypes.map(
                          (e) {
                            return InkWell(
                              onTap: context
                                      .read<InputValueCreateCubit>()
                                      .attachmentsTypesTemp
                                      .contains(e)
                                  ? () {
                                      context
                                          .read<InputValueCreateCubit>()
                                          .removeAttachmentType(e);
                                    }
                                  : () {
                                      context
                                          .read<InputValueCreateCubit>()
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
                                            .read<InputValueCreateCubit>()
                                            .attachmentsTypesTemp
                                            .contains(e)
                                        ? Icon(
                                            Icons.check,
                                            color: ColorManager.secondary,
                                            size: AppSizeSp.s12,
                                          )
                                        : const SizedBox(),
                                  ),
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
                );
              },
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
                          .read<InputValueCreateCubit>()
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
