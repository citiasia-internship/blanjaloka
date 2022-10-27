class Agenda {
  final String investorName;

  final String placeName;

  final String agendaResult;

  final String dateAgenda;

  final String timeAgenda;

  Agenda(
      {required this.investorName,
      required this.placeName,
      required this.agendaResult,
      required this.dateAgenda,
      required this.timeAgenda});
}

var agendaList = [
  Agenda(
      investorName: "Citra Florist",
      placeName: "Lab 515",
      agendaResult: "Waiting for approval!",
      dateAgenda: "",
      timeAgenda: ""),
  Agenda(
      investorName: "Bakery Shop",
      placeName: "Lab 515",
      agendaResult: "Dijadwalkan",
      dateAgenda: "Minggu, 30 Oktober",
      timeAgenda: "11.00 WIB"),
  Agenda(
      investorName: "XYZ Restaurant",
      placeName: "Lab 515",
      agendaResult: "Reschedule",
      dateAgenda: "Minggu, 30 Oktober",
      timeAgenda: "11.00 WIB"),
  Agenda(
      investorName: "Abc Coffe",
      placeName: "Lab 515",
      agendaResult: "Berhasil",
      dateAgenda: "Minggu, 30 Oktober",
      timeAgenda: "11.00 WIB")
];
