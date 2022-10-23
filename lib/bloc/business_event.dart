import 'package:equatable/equatable.dart';

abstract class BusinessEvents extends Equatable {
  const BusinessEvents() ;
}

class BusinessLoadingEvent extends BusinessEvents {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}