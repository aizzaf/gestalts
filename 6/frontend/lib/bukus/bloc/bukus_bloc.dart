import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../repositories/bukus/bukus_model.dart';
import '../../repositories/bukus/bukus_repositories.dart';

part 'bukus_event.dart';
part 'bukus_state.dart';

class BukusBloc extends Bloc<BukusEvent, BukusState> {
  final BukusRepository _bukusRepository;

  BukusBloc(this._bukusRepository) : super(BukusInitial()) {
    on<LoadBukusEvent>((event, emit) async {
      try {
        final bukus = await _bukusRepository.getBukus();
        emit(BukusLoaded(bukus));
      } catch (e) {
        emit(BukusError(e.toString()));
      }
    });

    on<LoadBukusRangeEvent>((event, emit) async {
      try {
        final bukus = await _bukusRepository.getBukusRange();
        emit(BukusLoaded(bukus));
      } catch (e) {
        emit(BukusError(e.toString()));
      }
    });
  }
}
