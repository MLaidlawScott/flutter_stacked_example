import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_arch/ui/smart_widgets/double_increase_counter/double_increase_counter_viewmodel.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      builder: (ctx, model, child) => GestureDetector(
        onDoubleTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap To double Counter',
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString()),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
    );
  }
}
