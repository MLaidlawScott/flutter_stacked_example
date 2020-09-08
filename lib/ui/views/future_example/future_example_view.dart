import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_arch/ui/views/future_example/future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (ctx, model, child) => Scaffold(
        body: Center(
          child: model.isBusy ? CircularProgressIndicator() : Text(model.data),
        ),
      ),
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}
