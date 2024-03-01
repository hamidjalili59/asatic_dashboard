import 'package:asatic_dashboard/src/core/router/router.dart';
import 'package:asatic_dashboard/src/presentation/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

///
class AuthPage extends StatefulWidget {
  ///
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: const SafeArea(
        child: AuthMobileWidget(),
      ),
    );
  }
}

///
class AuthMobileWidget extends StatefulWidget {
  ///
  const AuthMobileWidget({
    super.key,
  });

  @override
  State<AuthMobileWidget> createState() => _AuthMobileWidgetState();
}

class _AuthMobileWidgetState extends State<AuthMobileWidget> {
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final FocusNode phoneNode = FocusNode();

  final FocusNode passwordNode = FocusNode();

  @override
  void initState() {
    super.initState();
    phoneNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    phoneNode.dispose();
    passwordController.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.login_rounded),
        onPressed: () async {
          AuthBloc().add(
            AuthEvent.login(
              username: phoneController.text,
              password: passwordController.text,
            ),
          );
          await AppRouter().router.pushNamed<bool>('/devices');
        },
      ),
      body: BlocListener<AuthBloc, AuthState>(
        bloc: AuthBloc(),
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loginSuccess: () async {
              context.go('/devices');
            },
            loginFailed: () async {},
          );
        },
        child: SizedBox(
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48.h),
              SizedBox(
                height: 0.15.sh,
                child: Text(
                  'Login Page',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(height: 36.h),
              PhysicalModel(
                color: Colors.black45,
                shadowColor: Colors.black45,
                elevation: phoneNode.hasFocus ? 20 : 5,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 0.6.sw,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    autofocus: true,
                    focusNode: phoneNode,
                    controller: phoneController,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      counterText: '',
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 36.h),
              PhysicalModel(
                color: Colors.black45,
                shadowColor: Colors.black45,
                elevation: passwordNode.hasFocus ? 20 : 5,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  width: 0.6.sw,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    focusNode: passwordNode,
                    controller: passwordController,
                    onSubmitted: (value) {
                      AuthBloc().add(
                        AuthEvent.login(
                          username: phoneController.text,
                          password: passwordController.text,
                        ),
                      );
                    },
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      counterText: '',
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
