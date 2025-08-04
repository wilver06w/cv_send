part of 'bloc.dart';

@immutable
abstract class State extends Equatable {
  final Model model;
  const State(this.model);

  @override
  List<Object> get props => [model];
}

class InitialState extends State {
  const InitialState(super.model);
}

class UnLoggedState extends State {
  const UnLoggedState(super.model);
}

class LoadedState extends State {
  const LoadedState(super.model);
}

class ErrorState extends State {
  const ErrorState(super.model);
}

class Model extends Equatable {
  final bool isEdit;

  const Model({
    this.isEdit = false,
  });
  Model copyWith({
    bool? isEdit, required key,
  }) {
    return Model(
      isEdit: isEdit ?? this.isEdit,
    );
  }

  @override
  List<Object?> get props => [
        isEdit,
      ];
}
