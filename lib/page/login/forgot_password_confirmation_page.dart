import 'package:banjaloka/bloc/timer/timer_bloc.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/ticker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordConfirmationPage extends StatelessWidget {
  const ForgotPasswordConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TimerBloc(ticker: const Ticker()),
        child: const ForgotPasswordConfirmationView());
  }
}

class ForgotPasswordConfirmationView extends StatelessWidget {
  const ForgotPasswordConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = (ModalRoute.of(context)?.settings.arguments ??
        Map<String, dynamic>) as Map;
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).toString().padLeft(2, '0');

    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: neutralBlack),
        backgroundColor: neutralWhite,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.asset('asset/img/mailsent.png'),
              const SizedBox(height: 30),
              Text(
                "Link telah terkirim!",
                style: bigTitle,
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 0,
                child: Text(
                  "Kami telah mengirimkan link untuk mengatur kata sandi baru ke alamat email ${args['emailOrPhone']}",
                  textAlign: TextAlign.center,
                  style: fontProfile,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.95,
                color: neutralGrey3,
              ),
              const SizedBox(height: 25),
              Expanded(
                flex: 0,
                child: BlocBuilder<TimerBloc, TimerState>(
                  builder: (context, state) {
                    context
                        .read<TimerBloc>()
                        .add(TimerStarted(duration: state.duration));
                    return (secondsStr != "00")
                        ? Text(
                            "Belum dapat link? Kirim ulang dalam $minutesStr:$secondsStr detik",
                            textAlign: TextAlign.center,
                            style: fontProfile,
                          )
                        : RichText(
                            text: TextSpan(
                              text: 'Belum dapat link? ',
                              style: fontProfile,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Kirim Ulang ',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context
                                          .read<TimerBloc>()
                                          .add(const TimerReset());
                                    },
                                  style: selectedLabel,
                                ),
                                TextSpan(text: 'atau ', style: fontProfile),
                                TextSpan(
                                  text: 'Ganti Email',
                                  style: selectedLabel,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).pop();
                                    },
                                ),
                              ],
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
