part of 'bloc.dart';

abstract class DetailProjectEvent extends Equatable {
  const DetailProjectEvent();

  @override
  List<Object> get props => [];
}

class ChangedItemProjectEvent extends DetailProjectEvent {
  const ChangedItemProjectEvent({required this.itemProject});
  final ItemProject itemProject;
}
