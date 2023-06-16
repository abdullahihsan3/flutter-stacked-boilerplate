import 'package:flutter/material.dart';
import 'package:flutter_stacked_starter/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Center(
        child: viewModel.isBusy
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: viewModel.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(viewModel.data![index].title),
                  );
                },
              ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
