// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_app/pages/sign_in.dart';
// import 'package:flutter_app/pages/DomainDetailsPage.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_app/pages/sign_in.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class Main extends StatelessWidget {
//   const Main({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double fem = MediaQuery.of(context).size.width / 360;
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF5A91C4),
//         title: Text(
//           'Domains',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.logout, color: Colors.white),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text("Log out"),
//                   content: Text("Are you sure you want to log out?"),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Text("Cancel"),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SignIn()),
//                         );
//                       },
//                       child: Text("Log out"),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/data_science.png',
//                 title: 'Data Science',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/web_development.png',
//                 title: 'Web Development',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/full_stack_developer.png',
//                 title: 'Full Stack Developer',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/app_developer.png',
//                 title: 'App Developer',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/software_developer.png',
//                 title: 'Software Developer',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/iot.png',
//                 title: 'IOT',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/uiux.png',
//                 title: 'UI UX Design',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/cyber_security.png',
//                 title: 'Cyber Security',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/digital_marketing.png',
//                 title: 'Digital Marketing',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/content_writing.png',
//                 title: 'Content Writing',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/hr.png',
//                 title: 'HR',
//                 fem: fem,
//               ),
//
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/digital_media_promoter.png',
//                 title: 'Digital Media Promoter',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/business_development.png',
//                 title: 'Business Development Associate',
//                 fem: fem,
//               ),
//               SizedBox(height: 20 * fem),
//               buildDomainItem(
//                 context: context,
//                 image: 'assets/images/process_associate.png',
//                 title: 'Process Associate',
//                 fem: fem,
//               ),
//               // Add other domain items similarly
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildDomainItem({
//     required BuildContext context,
//     required String image,
//     required String title,
//     required double fem,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DomainDetailsPage(
//               title: title,
//               imageUrl: image,
//             ),
//           ),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes position of shadow
//             ),
//           ],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(0),
//           child: Container(
//             color: Colors.white,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 10 * fem),
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(image),
//                           ),
//                         ),
//                         width: 80 * fem,
//                         height: 80 * fem,
//                       ),
//                       SizedBox(width: 10 * fem),
//                       Expanded(
//                         child: Text(
//                           title,
//                           style: GoogleFonts.lexend(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 20 * fem,
//                             color: const Color(0xFF343434),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DomainDetailsPage extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//
//   const DomainDetailsPage({
//     Key? key,
//     required this.title,
//     required this.imageUrl,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF5A91C4), // Blue background color
//         title: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white, // White color for the title text
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               imageUrl,
//               width: MediaQuery.of(context)
//                   .size
//                   .width, // Adjusted width to match screen width
//               fit: BoxFit.cover, // Adjusted image fit to cover entire width
//             ),
//             const SizedBox(height: 20.0),
//             const Text(
//               'Description:',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             DomainDescription(title: title),
//             const SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text("Apply"),
//                       content: const Text("Are you sure you want to apply?"),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: const Text("Cancel"),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                             // Perform apply action here
//                             // You can display another dialog or do something else
//                           },
//                           child: const Text("Apply"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 minimumSize: Size(180, 35),
//                 backgroundColor: const Color(0xFF5A91C4),
//               ),
//               child: const Text('Apply'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class DomainDescription extends StatelessWidget {
//   final String title;
//
//   const DomainDescription({
//     Key? key,
//     required this.title,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<DocumentSnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('domains')
//           .doc(title)
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData && snapshot.data!.exists) {
//           var description = snapshot.data!['description'];
//           return Text(
//             description ?? '',
//             style: TextStyle(
//               fontSize: 16.0,
//             ),
//           );
//         } else {
//           return Text(
//             'No description available for this domain',
//             style: TextStyle(
//               fontSize: 16.0,
//             ),
//           );
//         }
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/sign_in.dart';
// import 'package:flutter_app/pages/domain_details_page.dart'; // Updated import statement
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 360;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF5A91C4),
        title: Text(
          'Domains',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Log out"),
                  content: Text("Are you sure you want to log out?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        );
                      },
                      child: Text("Log out"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildDomainItem(
                context: context,
                image: 'assets/images/data_science.png',
                title: 'Data Science',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/web_development.png',
                title: 'Web Development',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/full_stack_developer.png',
                title: 'Full Stack Developer',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/app_developer.png',
                title: 'App Developer',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/software_developer.png',
                title: 'Software Developer',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/iot.png',
                title: 'IOT',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/uiux.png',
                title: 'UI UX Design',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/cyber_security.png',
                title: 'Cyber Security',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/digital_marketing.png',
                title: 'Digital Marketing',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/content_writing.png',
                title: 'Content Writing',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/hr.png',
                title: 'HR',
                fem: fem,
              ),

              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/digital_media_promoter.png',
                title: 'Digital Media Promoter',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/business_development.png',
                title: 'Business Development Associate',
                fem: fem,
              ),
              SizedBox(height: 20 * fem),
              buildDomainItem(
                context: context,
                image: 'assets/images/process_associate.png',
                title: 'Process Associate',
                fem: fem,
              ),
              // Add other domain items similarly
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDomainItem({
    required BuildContext context,
    required String image,
    required String title,
    required double fem,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DomainDetailsPage(
              title: title,
              imageUrl: image,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10 * fem),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(image),
                          ),
                        ),
                        width: 80 * fem,
                        height: 80 * fem,
                      ),
                      SizedBox(width: 10 * fem),
                      Expanded(
                        child: Text(
                          title,
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w600,
                            fontSize: 20 * fem,
                            color: const Color(0xFF343434),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DomainDetailsPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const DomainDetailsPage({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);
  Future<void> _applyToDomain(BuildContext context) async {
    String? userId = FirebaseAuth.instance.currentUser?.uid;

    if (userId != null) {
      try {
        await FirebaseFirestore.instance.collection('users').doc(userId).update({
          'domains': FieldValue.arrayUnion([title]),
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Successfully applied to $title")),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to apply: $e")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User not logged in")),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF5A91C4), // Blue background color
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white, // White color for the title text
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageUrl,
              width: MediaQuery.of(context)
                  .size
                  .width, // Adjusted width to match screen width
              fit: BoxFit.cover, // Adjusted image fit to cover entire width
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            DomainDescription(title: title),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Apply"),
                      content: const Text("Are you sure you want to apply?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            _applyToDomain(context);
// You can display another dialog or do something else
                          },
                          child: const Text("Apply"),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(180, 40),
                backgroundColor: const Color(0xFF5A91C4),
              ),
              child: const Text('Apply',
                style: TextStyle(
                  color: Colors.white, // Changed text color to white
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DomainDescription extends StatelessWidget {
  final String title;

  const DomainDescription({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection('domains')
          .doc(title)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.exists) {
          var description = snapshot.data!['description'];
          return Text(
            description ?? '',
            style: TextStyle(
              fontSize: 16.0,
            ),
          );
        } else {
          return Text(
            'No description available for this domain',
            style: TextStyle(
              fontSize: 16.0,
            ),
          );
        }
      },
    );
  }
}
