import 'package:equatable/equatable.dart';

abstract class BusinessEvents extends Equatable {
  const BusinessEvents();
  @override
  List<Object?> get props => [];
}

class BusinessLoadingEvent extends BusinessEvents {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class BusinessTimerStartEvent extends BusinessEvents {
  final int duration;
  const BusinessTimerStartEvent({required this.duration});
}
