import 'package:banjaloka/bloc/auth/bloc/auth_event.dart';
import 'package:banjaloka/bloc/auth/bloc/auth_state.dart';
import 'package:banjaloka/respository/bussines_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(BusinessRepositories repository)
      : super(AuthStateLoggedOut(isLoading: true, exception: null)) {
    on<AuthEventLogIn>(
      (event, emit) {
        emit(AuthStateLoggedOut(
          exception: null,
          isLoading: true,
          loadingText: 'Mohon Tunggu',
        ));
        Exception? exception;
        repository.login(event.email, event.password).then(
          (value) async {
            try {
              String accessToken = value.accessToken!;
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setString("access_token", accessToken);
              exception = null;
            } on Exception catch (e) {
              exception = e;
            }
          },
        );
        if (exception != null) {
          emit(const AuthStateLoggedIn(isLoading: false));
        } else {
          emit(AuthStateLoggedOut(isLoading: false, exception: exception));
        }
      },
    );
  }
}
