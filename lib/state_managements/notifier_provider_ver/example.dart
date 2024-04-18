import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'example.g.dart';

@riverpod

class ExampleNotifier extends _$ExampleNotifier{
  @override
  int build() {
    return 0;
  }

  void countUp(){
    state++;
  }
}