import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/auth/domain/models/inputs_model/input_model.dart';
import 'package:alhazem/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:alhazem/features/auth/presentation/widgets/auth_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/app/depndency_injection.dart';
import '../widgets/login_field_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s60),
                    child: Row(
                      children: [
                        Text("تسجيل الدخول",
                            style: TextStyle(
                                fontSize: AppSizeSp.s25,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSizeH.s60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s60),
                    child: LoginFieldWidget(
                      controller: emailController,
                      hintText: "اسم المستخدم...",
                      prefixIcon: const Icon(Icons.email),
                      validator: (value) {
                        return (value != null && value.isEmpty)
                            ? 'الرجاء ادخال اسم المستخدم'
                            : null;
                      },
                    ),
                  ),
                  SizedBox(height: AppSizeH.s40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s60),
                    child: LoginFieldWidget(
                      controller: passwordController,
                      prefixIcon: const Icon(Icons.lock),
                      hintText: "كلمة المرور...",
                      obscureText: true,
                      validator: (value) {
                        return (value != null && value.isEmpty)
                            ? 'الرجاء ادخال كلمة المرور'
                            : null;
                      },
                    ),
                  ),
                  SizedBox(height: AppSizeH.s50),
                  SizedBox(
                    width: AppSizeW.s210,
                    height: AppSizeH.s60,
                    child: BlocConsumer(
                      bloc: authBloc,
                      listener: (context, AuthState state) {
                        state.mapOrNull(
                          success: (value) async {
                            await initServices();
                            context.goNamed(RoutesNames.typeServicesRoute);
                            showToast(
                                context: context,
                                message: value.success.message);
                          },
                          error: (value) {
                            showToast(
                                context: context,
                                message: value.message,
                                type: ToastificationType.error);
                          },
                        );
                      },
                      builder: (context, AuthState state) {
                        return state.maybeMap(
                          loading: (value) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          orElse: () {
                            return AuthButtonWidget(
                              title: "تسجيل الدخول",
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  authBloc.add(
                                    AuthEvent.login(
                                      input: LoginInputModel(
                                          email: emailController.text,
                                          password: passwordController.text),
                                    ),
                                  );
                                  // context.goNamed(RoutesNames.servicesRoute);
                                }
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ImageAssets.authBackground,
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
