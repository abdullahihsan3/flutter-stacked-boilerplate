import 'package:flutter/material.dart';
import 'package:flutter_stacked_starter/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home View')),
      body: const Center(
        child: Text('Home View'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.navigateToSecondView,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
