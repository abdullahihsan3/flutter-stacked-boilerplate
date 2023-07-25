import 'package:flutter/material.dart';
import 'package:flutter_stacked_starter/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.getPosts();
  }

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: viewModel.busy(busyObject)
            ? const CircularProgressIndicator()
            : !viewModel.hasPosts
                ? const Text('No posts to show')
                : RefreshIndicator(
                    onRefresh: viewModel.onRefresh,
                    child: ListView.separated(
                      itemCount: viewModel.posts.length,
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        final post = viewModel.posts[index];

                        return ListTile(
                          title: Text(post.title),
                        );
                      },
                    ),
                  ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
