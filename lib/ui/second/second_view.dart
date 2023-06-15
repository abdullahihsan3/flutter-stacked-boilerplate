import 'package:flutter/material.dart';
import 'package:flutter_stacked_starter/ui/second/second_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SecondView extends StackedView<SecondViewModel> {
  const SecondView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SecondViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second View')),
      body: Center(
        child: Text('Second View. Count is: ${viewModel.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementCount,
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  SecondViewModel viewModelBuilder(BuildContext context) => SecondViewModel();
}
