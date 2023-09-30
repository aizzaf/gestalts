part of 'bukus_bloc.dart';

@immutable
sealed class BukusEvent extends Equatable {
  const BukusEvent();
}

class LoadBukusEvent extends BukusEvent {
  @override
  List<Object?> get props => [];
}

class LoadBukusRangeEvent extends BukusEvent {
  @override
  List<Object?> get props => [];
}

