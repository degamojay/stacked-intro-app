import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/common/app_colors.dart';
import 'package:stacked_app/ui/common/ui_helpers.dart';
import 'package:stacked_app/ui/views/users/users_viewmodel.dart';


class UsersView extends StackedView<UsersViewModel> {
  const UsersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UsersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceLarge,
                Column(
                  children: [
                    const Text(
                      'Hello, USERS!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: MaterialButton(
                      color: Colors.black,
                      onPressed: () => viewModel.navigateToHomeView(),
                      child: const Text(
                        'Go back to Home Page',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: MaterialButton(
                      color: kcDarkGreyColor,
                      onPressed: () => viewModel.showDialogTome(),
                      child: const Text(
                        'Show Dialog',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    )
                  ]
                ),
              ]
            )
          )
        )
      )
    );
  }

  @override
  UsersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UsersViewModel();
}
