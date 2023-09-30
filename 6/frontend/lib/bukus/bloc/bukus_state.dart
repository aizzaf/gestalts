part of 'bukus_bloc.dart';

@immutable
sealed class BukusState extends Equatable {}

final class BukusInitial extends BukusState {
  @override
  List<Object?> get props => [];
}

final class BukusLoaded extends BukusState {
  final List<Bukus> bukus;

  BukusLoaded(this.bukus);

  @override
  List<Object?> get props => [bukus];
}

final class BukusError extends BukusState {
  final String error;

  BukusError(this.error);

  @override
  List<Object?> get props => [error];
}
