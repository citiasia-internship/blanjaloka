import 'package:banjaloka/bloc/business_event.dart';
import 'package:banjaloka/bloc/business_state.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessBloc extends Bloc<BusinessEvents, BusinessState> {
  // daftarkan repo di sini untuk connect ke data server
  final BusinessRepositories _businessRepositories;


  BusinessBloc(this._businessRepositories) : super(LoadingBusinessState()) {
    on<BusinessEvents>((event, emit) async {
      emit(LoadingBusinessState());
      try {
        final business = await _businessRepositories.fetchBusiness();
        emit(BusinessStateLoaded(business));
      } catch (e) {
        emit(BusinessErrorState(e.toString()));
      }
    });
  }
}
