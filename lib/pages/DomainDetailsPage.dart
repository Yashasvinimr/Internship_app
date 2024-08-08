  //
  // import 'package:flutter/material.dart';
  // import 'package:flutter_app/pages/main.dart';
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
  //           style: TextStyle(
  //             color: Colors.white, // White color for the title text
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         centerTitle: true,
  //       ),
  //       body: SingleChildScrollView(
  //         padding: EdgeInsets.all(20.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: [
  //             Image.asset(
  //               imageUrl,
  //               width: MediaQuery.of(context).size.width, // Adjusted width to match screen width
  //               fit: BoxFit.cover, // Adjusted image fit to cover entire width
  //             ),
  //             const SizedBox(height: 20.0),
  //             Text(
  //               'Description:',
  //               style: TextStyle(
  //                 fontSize: 18.0,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             SizedBox(height: 10.0),
  //             Text(
  //               'Description text from Firebase will go here.',
  //               style: TextStyle(
  //                 fontSize: 16.0,
  //               ),
  //             ),
  //             SizedBox(height: 20.0),
  //             DropdownButton<String>(
  //               value: 'Dropdown Value 1',
  //               onChanged: (value) {},
  //               items: [
  //                 DropdownMenuItem(
  //                   value: 'Dropdown Value 1',
  //                   child: Text('Dropdown Value 1'),
  //                 ),
  //                 DropdownMenuItem(
  //                   value: 'Dropdown Value 2',
  //                   child: Text('Dropdown Value 2'),
  //                 ),
  //                 // Add more dropdown items as needed
  //               ],
  //             ),
  //             SizedBox(height: 10.0),
  //             DropdownButton<String>(
  //               value: 'Dropdown Value A',
  //               onChanged: (value) {},
  //               items: [
  //                 DropdownMenuItem(
  //                   value: 'Dropdown Value A',
  //                   child: Text('Dropdown Value A'),
  //                 ),
  //                 DropdownMenuItem(
  //                   value: 'Dropdown Value B',
  //                   child: Text('Dropdown Value B'),
  //                 ),
  //                 // Add more dropdown items as needed
  //               ],
  //             ),
  //             SizedBox(height: 20.0),
  //             ElevatedButton(
  //               onPressed: () {
  //                 showDialog(
  //                   context: context,
  //                   builder: (BuildContext context) {
  //                     return AlertDialog(
  //                       title: Text("Apply"),
  //                       content: Text("Are you sure you want to apply?"),
  //                       actions: [
  //                         TextButton(
  //                           onPressed: () {
  //                             Navigator.of(context).pop();
  //                           },
  //                           child: Text("Cancel"),
  //                         ),
  //                         TextButton(
  //                           onPressed: () {
  //                             Navigator.of(context).pop();
  //                             // Perform apply action here
  //                             // You can display another dialog or do something else
  //                           },
  //                           child: Text("Apply"),
  //                         ),
  //                       ],
  //                     );
  //                   },
  //                 );
  //               },
  //               child: Text('Apply'),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  // }
  import 'package:flutter/material.dart';
  import 'package:flutter_app/pages/main.dart';

  class DomainDetailsPage extends StatelessWidget {
    final String title;
    final String imageUrl;

    const DomainDetailsPage({
      Key? key,
      required this.title,
      required this.imageUrl,
    }) : super(key: key);

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
                width: MediaQuery.of(context).size.width, // Adjusted width to match screen width
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
              const Text(
                'Description text from Firebase will go here.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 20.0),
              DropdownButton<String>(
                value: 'Dropdown Value 1',
                onChanged: (value) {},
                items: const [
                  DropdownMenuItem(
                    value: 'Dropdown Value 1',
                    child: Text('Dropdown Value 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Dropdown Value 2',
                    child: Text('Dropdown Value 2'),
                  ),
                  // Add more dropdown items as needed
                ],
              ),
              const SizedBox(height: 10.0),
              DropdownButton<String>(
                value: 'Dropdown Value A',
                onChanged: (value) {},
                items: const [
                  DropdownMenuItem(
                    value: 'Dropdown Value A',
                    child: Text('Dropdown Value A'),
                  ),
                  DropdownMenuItem(
                    value: 'Dropdown Value B',
                    child: Text('Dropdown Value B'),
                  ),
                  // Add more dropdown items as needed
                ],
              ),
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
                              // Perform apply action here
                              // You can display another dialog or do something else
                            },
                            child: const Text("Apply"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        ),
      );
    }
  }

