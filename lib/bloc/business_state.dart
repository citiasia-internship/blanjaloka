
//buat abstract terlebih dahulu sebagai kelas dasar nya
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class BusinessState extends Equatable {

}

// kedua setelah buat kelas abstractnyaa , kita akan buat state saat dia loding , saat dia terload dan saat erro

// saaat loding
class LoadingBusinessState extends BusinessState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

// saat udah ke load datanya

class BusinessStateLoaded extends BusinessState {
  // karena disini itu udah ada data yang akan muncul , maka kita buat constrcutor untuk datanya
  final List<Business> business ;

  BusinessStateLoaded(this.business);

  @override
  // TODO: implement props
  List<Object?> get props => [business] ;

}

// state saat error
class BusinessErrorState extends BusinessState {
  final String error ;

  BusinessErrorState(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];

}