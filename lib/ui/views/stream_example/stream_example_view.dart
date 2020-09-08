import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_arch/ui/views/stream_example/stream_example_viewmodel.dart';

class StreamExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      builder: (ctx, model, child) => Scaffold(
        body: Center(child: Text(model.title)),
        floatingActionButton:
            FloatingActionButton(onPressed: model.swapSources),
      ),
      viewModelBuilder: () => StreamExampleViewModel(),
    );
  }
}
