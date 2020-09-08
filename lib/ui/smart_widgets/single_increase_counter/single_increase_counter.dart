import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_arch/ui/smart_widgets/single_increase_counter/single_increase_counter_viewmodel.dart';

class SingleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterViewModel>.reactive(
      builder: (ctx, model, child) => GestureDetector(
        onDoubleTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap To Increment Counter',
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString()),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SingleIncreaseCounterViewModel(),
    );
  }
}
