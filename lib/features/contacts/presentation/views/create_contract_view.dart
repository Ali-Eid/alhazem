import 'package:alhazem/features/contacts/presentation/widgets/check_box_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/values_manager.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class CreateContractView extends StatefulWidget {
  const CreateContractView({super.key});

  @override
  State<CreateContractView> createState() => _CreateContractViewState();
}

class _CreateContractViewState extends State<CreateContractView> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizeW.s8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizeH.s22),
          // Info Section
          Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(AppSizeW.s12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("معلومات المسافر",
                          style: Theme.of(context).textTheme.titleLarge),
                      const CheckBoxWidget(label: "VIP")
                    ],
                  ),
                  SizedBox(height: AppSizeH.s15),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: AppSizeH.s12,
                        childAspectRatio: 6,
                        crossAxisCount: 5),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "الاسم",
                            labelText: "الاسم",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "رقم الهاتف",
                            labelText: "رقم الهاتف",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "رقم الواتساب",
                            labelText: "رقم الواتساب",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: DropDownWidget(
                            items: items,
                            hintText: "البلد",
                            labelText: "البلد",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: DropDownWidget(
                            items: items,
                            hintText: "المقاطعة",
                            labelText: "المقاطعة",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "المدينة",
                            labelText: "المدينة",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "الشارع",
                            labelText: "الشارع",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: InputFieldWidget(
                            hintText: "الشارع2",
                            labelText: "الشارع2",
                            controller: TextEditingController(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: DropDownWidget(
                            items: items,
                            hintText: "المكتب",
                            labelText: "المكتب",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                        child: SizedBox(
                          width: AppSizeW.s226,
                          child: DropDownWidget(
                            items: items,
                            hintText: "نوع المسافر",
                            labelText: "نوع المسافر",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: AppSizeH.s22),
          // // Passport Info Section
          // Card(
          //   elevation: 4,
          //   // margin: EdgeInsets.symmetric(vertical: AppSizeH.s10),
          //   child: Padding(
          //     padding: EdgeInsets.all(AppSizeW.s12),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text("Passport Info",
          //             style: Theme.of(context).textTheme.titleLarge),
          //         SizedBox(height: AppSizeH.s10),
          //         Wrap(
          //           alignment: WrapAlignment.start,
          //           spacing: AppSizeW.s15,
          //           runSpacing: AppSizeH.s15,
          //           children: [
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport surname",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport mother name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport father name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport date of birthday",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport gender",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport number of passport",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport release date",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport place of issue",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport expiration date",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport national number",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport job",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "passport file",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport surname",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport mother name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport father name",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport date of birthday",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport gender",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport number of passport",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport release date",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport place of issue",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport expiration date",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport national number",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "e passport job",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // // Identity Info Section
          // SizedBox(height: AppSizeH.s22),
          // Card(
          //   elevation: 4,
          //   // margin: EdgeInsets.symmetric(vertical: AppSizeH.s10),
          //   child: Padding(
          //     padding: EdgeInsets.all(AppSizeW.s12),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text("Identity Info",
          //             style: Theme.of(context).textTheme.headlineMedium),
          //         SizedBox(height: AppSizeH.s10),
          //         Wrap(
          //           alignment: WrapAlignment.start,
          //           spacing: AppSizeW.s15,
          //           runSpacing: AppSizeH.s15,
          //           children: [
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity father",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity mother",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity date of birthday",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity place of birthday",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity national number",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity surname",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //             SizedBox(
          //               width: AppSizeW.s226,
          //               child: InputFieldWidget(
          //                 hintText: "identity gender",
          //                 controller: TextEditingController(),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(height: AppSizeH.s52),
        ],
      ),
    );
  }
}
