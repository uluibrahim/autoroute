import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'model/user_model.dart';

class UserDetailView extends StatefulWidget {
  final UserModel model;
  const UserDetailView({Key? key, required this.model}) : super(key: key);

  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> with AutoRouteAwareStateMixin{
  late UserModel _userModel;
  @override
  void initState() {
    _userModel = widget.model;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserDetailView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.model != oldWidget.model) {
      _updateModel();
    }
  }

  _updateModel() {
    setState(() {
      _userModel = widget.model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(_userModel.avatarUrl)),
    );
  }
}
