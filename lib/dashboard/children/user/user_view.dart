import 'package:autoroute/dashboard/children/user/model/user_model.dart';
import 'package:autoroute/dashboard/children/user/user_detail_view.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200")),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              // context.router.navigate(
              //     UserDetailRoute(model: UserModel("https://picsum.photos/200", "https://picsum.photos/200")));
              Navigator.push(context, MaterialPageRoute(builder: (context)=> UserDetailView(model: UserModel("https://picsum.photos/200", "https://picsum.photos/200"))));
            },
            child: Card(
              child: Image.network("https://picsum.photos/200"),
            ),
          );
        },
      ),
    );
  }
}
