import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Fetched from server';
  }

  @override
  Future<String> futureToRun() => getDataFromServer(/* Pass params here */);

  @override
  void onError(error) {
    // TODO: implement onError however you please (i.e dialog)
    // can also use model.hasError in view <---- DO THIS ON TEXT FIELDS
    super.onError(error);
  }
}
