import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_arch/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (ctx, model, child) {
        print("rebuilding partial builds view");
        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _StringForm(),
              _TitleAndValue(),
            ],
          ),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm() : super(reactive: false); // true by default

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildsViewModel viewModel,
  ) {
    print('rebuilding StringForm');
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: viewModel.updateString,
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  @override
  Widget build(
      BuildContext context, PartialBuildsViewModel partialBuildsViewModel) {
    print('title and value rebuild');
    return Column(
      children: <Widget>[
        Text(
          partialBuildsViewModel.title ?? '',
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
