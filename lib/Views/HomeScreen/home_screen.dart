// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         title: Text("API TEST GET"),
//       ),
//       body: Column(
//         children: [
//           ListTile(
//             leading: CircleAvatar(
//               backgroundColor: Colors.blue,
//               child: Text("1"),
//             ),
//             title: Text(
//               "MD Murad",
//               style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
//             ),
//             subtitle: Text(
//               "muradmd61@gmail.com",
//               style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:apiclassone/Views/HomeScreen/new_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/services/api_services.dart';
import '../../navigate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(


          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
          title: Text("API TEST GET"),
        ),
        body:
        
        
        FutureBuilder(

            future: ApiServices.getUsers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text("An error"));
              } else if (snapshot.hasData) {

                return ListView.builder(

                  itemCount: snapshot.data!.users!.length < 10 ? snapshot.data!.users!.length :10 ,
                    itemBuilder: (context, index){

                    final data = snapshot.data!.users![index];

                      return ListTile(
                        leading: InkWell(
                          onTap: () {
                            navigate(context,  NewHomePage(s: '${data.bank}', t: '${data.email}',));
                            // Navigator.push(context, NewHomePage())
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(data.id.toString()),
                          ),
                        ),
                        title: Text(
                         "${data.firstName} ${data.maidenName} ${data.lastName}",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          data.company.toString(),
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400),
                        ),
                      );
                    }



                );


              } else {
                return const Center(
                  child: Text("somthing is worng"),
                );
              }
            })

        // Column(
        //   children: [
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.blue,
        //         child: Text("1"),
        //       ),
        //       title: Text(
        //         "MD Murad",
        //         style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
        //       ),
        //       subtitle: Text(
        //         "muradmd61@gmail.com",
        //         style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
        //       ),
        //     )
        //
        //   ],
        // ),
        );
  }
}
