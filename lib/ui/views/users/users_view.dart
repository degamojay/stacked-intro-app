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
                      Column(children: [
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
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        SizedBox(
                          width: 180,
                          height: 40,
                          child: MaterialButton(
                            color: kcDarkGreyColor,
                            onPressed: () => viewModel.getUsersFromService(),
                            child: const Text(
                              'Show Users',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            itemCount: viewModel.users.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(viewModel.getId(index).toString().padRight(15)),
                                        const SizedBox(width: 8),
                                        Text(viewModel.getUser(index)),
                                      ],
                                    ),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Row(
                                        children: [
                                          Text(viewModel.getAddress(index)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            viewModel.getEmail(index),
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            viewModel.getPhone(index),
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),                                
                              );
                            },
                          ),
                        ),
                      ]),
                    ])))));
  }

  @override
  UsersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UsersViewModel();
}
