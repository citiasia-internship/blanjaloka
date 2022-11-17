import 'package:banjaloka/page/edit_pass.dart';
import 'package:banjaloka/page/info_account_page.dart';
import 'package:banjaloka/page/list_edit_profile.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/item_profile.dart';
import 'package:banjaloka/widget/separator_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = "/profile";

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Widget Card Profile
  Widget sectionOne = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
    margin: const EdgeInsets.only(top: 26.0),
    width: 333.0,
    height: 90.0,
    decoration: BoxDecoration(
        color: neutralWhite,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1.0, color: neutralBlack)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.account_circle_outlined,
              size: 53.0,
            ),
            const SizedBox(
              width: 0.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 232.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Nabila Alifa"),
                      Icon(
                        Icons.drive_file_rename_outline,
                        color: primaryBlue7,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                const Text("alifa@gmail.com"),
              ],
            )
          ],
        ),
      ],
    ),
  );

  Widget alertNotif = Container(
    padding: const EdgeInsets.all(10.0),
    height: 73.0,
    width: 323.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: semanticerror.withOpacity(0.2)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline),
          color: semanticerror,
        ),
        Text(
          "Lengkapi data diri dan data\nperusahaan Anda untuk\nmengajukan investasi.",
          style: subtitle.copyWith(color: Colors.red, fontSize: 11.0),
        ),
        Container(
          height: 26.0,
          width: 108.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: semanticerror),
            child: Text(
              "Lengkapi data",
              style: subtitle.copyWith(color: neutralWhite, fontSize: 11.0),
            ),
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: neutralBlack),
        ),
        backgroundColor: neutralWhite,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            // Section 1
            sectionOne,
            const SizedBox(
              height: 26.0,
            ),
            alertNotif,
            const SizedBox(
              height: 26.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ListEditProfile.routeName);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(
                        Icons.alternate_email,
                        color: neutralGrey4,
                      ),
                      label: "Informasi Akun",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Separator2(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Editpass.routeName);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(
                        Icons.password,
                        color: neutralGrey4,
                      ),
                      label: "Ubah Kata Sansi",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Separator2(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(
                        Icons.help_outline_sharp,
                        color: neutralGrey4,
                      ),
                      label: "Bantuan",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Separator2(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(
                        Icons.description,
                        color: neutralGrey4,
                      ),
                      label: "Ketentuan Layanan",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Separator2(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(
                        Icons.security,
                        color: neutralGrey4,
                      ),
                      label: "Kebijakan Privasi",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Separator2(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    ItemProfile(
                      icon: Icon(Icons.logout, color: neutralGrey4),
                      label: "Keluar",
                      color: neutralGrey4,
                      colorArrow: neutralGrey4,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  PROFILE REDISIGN 1

// import 'package:banjaloka/theme/theme.dart';
// import 'package:banjaloka/widget/button_outline.dart';
// import 'package:banjaloka/widget/separator_widget.dart';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   // Widget Card Profile
//   Widget sectionOne = Container(
//     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//     width: 343.0,
//     height: 171.0,
//     decoration: BoxDecoration(
//         color: neutralWhite,
//         borderRadius: BorderRadius.circular(8.0),
//         boxShadow: [
//           BoxShadow(
//               color: neutralBlack.withOpacity(0.2),
//               offset: const Offset(0, 3),
//               spreadRadius: 5.0,
//               blurRadius: 7.0),
//         ]),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             const Icon(
//               Icons.account_circle_outlined,
//               size: 53.0,
//             ),
//             const SizedBox(
//               width: 18.0,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 232.0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: const [
//                       Text("Nabila Alifa"),
//                       Icon(
//                         Icons.drive_file_rename_outline,
//                         size: 17.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Text("087909890765"),
//                 const Text("alifa@gmail.com"),
//               ],
//             )
//           ],
//         ),

//         // Alert Verivication
//         const SizedBox(
//           height: 16.0,
//         ),
//         const Separator2(),
//         const SizedBox(
//           height: 16.0,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.info_outline),
//               color: semanticerror,
//             ),
//             Text(
//               "Akun anda belum terverifikasi\nVerifikasi akun anda sekarang.",
//               style: subtitle.copyWith(color: Colors.red, fontSize: 12.0),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(primary: semanticerror),
//               child: Text(
//                 "Verifikasi",
//                 style: subtitle.copyWith(color: neutralWhite, fontSize: 12.0),
//               ),
//             ),
//           ],
//         )
//       ],
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Section 1
//               sectionOne,
//               const SizedBox(
//                 height: 25.0,
//               ),
//               // Section 2

//               const SizedBox(
//                 height: 20.0,
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 26.0),
//                 width: MediaQuery.of(context).size.width,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Keamanan",
//                       style: subtitleBold.copyWith(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           bottom: 13.0,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Icon(Icons.alternate_email),
//                                 SizedBox(
//                                   width: 12.0,
//                                 ),
//                                 Text("Email"),
//                               ],
//                             ),
//                             const Icon(Icons.chevron_right)
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Separator2(),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           bottom: 13.0,
//                           top: 13.0,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Icon(Icons.password),
//                                 SizedBox(
//                                   width: 12.0,
//                                 ),
//                                 Text("Ubah Kata Sandi"),
//                               ],
//                             ),
//                             const Icon(Icons.chevron_right)
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Separator2(),
//               const SizedBox(
//                 height: 18.0,
//               ),
//               // SECTION 3
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 26.0),
//                 width: MediaQuery.of(context).size.width,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Tentang Blanjaloka",
//                       style: subtitleBold.copyWith(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           bottom: 13.0,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Icon(Icons.help_outline),
//                                 SizedBox(
//                                   width: 12.0,
//                                 ),
//                                 Text("Paling Banyak Ditanyakan"),
//                               ],
//                             ),
//                             const Icon(Icons.chevron_right)
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Separator2(),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           bottom: 13.0,
//                           top: 13.0,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Icon(Icons.description),
//                                 SizedBox(
//                                   width: 12.0,
//                                 ),
//                                 Text("Ketentuan Layanan"),
//                               ],
//                             ),
//                             const Icon(Icons.chevron_right)
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Separator2(),
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           bottom: 13.0,
//                           top: 13.0,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: const [
//                                 Icon(Icons.security),
//                                 SizedBox(
//                                   width: 12.0,
//                                 ),
//                                 Text("Kebijakan Privasi"),
//                               ],
//                             ),
//                             const Icon(Icons.chevron_right)
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 40.0,
//               ),
//               // BUTTON KELUAR
//               ButtonOutLine(
//                 text: "Keluar",
//                 onPress: () {},
//                 colorBorder: semanticerror,
//                 radius: 10.0,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// PROFILE DESIGN 1

// import 'package:banjaloka/theme/theme.dart';
// import 'package:banjaloka/widget/item_profile.dart';
// import 'package:banjaloka/widget/separator_widget.dart';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             const SizedBox(
//               height: 100.0,
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(
//                 horizontal: 28.0,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(top: 60.0, bottom: 20.0),
//                     height: 100.0,
//                     width: 100.0,
//                     child:
//                         // const Icon(
//                         //   Icons.person,
//                         //   size: 100,
//                         // ),
//                         Image.asset(
//                       "asset/img/accountProfile.png",
//                       height: 100.0,
//                       width: 100.0,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15.0,
//                   ),
//                   Column(
//                     children: [
//                       const Separator2(),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.settings,
//                               color: neutralGrey5,
//                             ),
//                             label: "Pengatura Akun",
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const Separator2(),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.language,
//                               color: neutralGrey5,
//                             ),
//                             label: "Pengaturan Bahasa",
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const Separator2(),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.help,
//                               color: neutralGrey5,
//                             ),
//                             label: "Paling Banyak Ditanyakan",
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const Separator2(),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.description,
//                               color: neutralGrey5,
//                             ),
//                             label: "Ketentuan Layanan",
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const Separator2(),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.security,
//                               color: neutralGrey5,
//                             ),
//                             label: "Kebijakan Privasi",
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const Separator2(),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           ItemProfile(
//                             icon: Icon(
//                               Icons.logout,
//                               color: semanticerror,
//                             ),
//                             label: "Keluar",
//                             color: semanticerror,
//                             colortext: semanticerror,
//                             coloricon: semanticerror,
//                           ),
//                           const SizedBox(
//                             height: 35.0,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
