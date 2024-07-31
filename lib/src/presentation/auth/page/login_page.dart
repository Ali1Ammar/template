import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/src/core/design/theme/app_space.dart';
import 'package:starter/src/core/design/theme/theme.dart';
import 'package:starter/src/core/design/widget/logo.dart';
import 'package:starter/src/core/design/widget/widget.dart';
import 'package:starter/src/core/route.dart';
import 'package:starter/src/core/utils/extensions/extensions.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              context.appSpace.medium.gap,
              const AppLogo(
                size: 250,
              ),
              context.appSpace.medium.gap,
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  context.translator.loginTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              context.appSpace.medium.gap,
              FormTitleWithChild(
                title: context.translator.enterEmailOrUsername,
                child: CustomTextField(
                  hint: context.translator.enterEmailOrUsername,
                  controller: TextEditingController(),
                ),
              ),
              context.appSpace.medium.gap,
              FormTitleWithChild(
                title: context.translator.enterPassword,
                child: PasswordField(
                    isLoading: false, controller: TextEditingController()),
              ),
              context.appSpace.medium.gap,
              CheckboxListTile(
                  title: Text(context.translator.rememberMe),
                  value: false,
                  onChanged: (x) {
                    //
                  }),
              context.appSpace.medium.gap,
              CtaButton(
                title: context.translator.loginTitle,
                onPressed: () {
                  ref.read(appRouterProvider).push(const NavbarRoute());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
