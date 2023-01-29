import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../commonUtils/commonUtils.dart';

class EditProfileScreen extends StatefulWidget {
  final String name;
  final String image;
  final String userName;

  const EditProfileScreen(
      {Key? key,
      required this.name,
      required this.image,
      required this.userName})
      : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

String nameWidget = "";
String imageWidget = "";
TextEditingController nameController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController bioController = TextEditingController();
TextEditingController linkController = TextEditingController();

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    nameWidget = widget.name;
    imageWidget = widget.image;
    nameController.text = widget.name;
    userNameController.text = widget.userName;
    debugPrint(widget.name);
    debugPrint(widget.image);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: Text(
                "cancel",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.02),
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        centerTitle: true,
        title: const Text(
          editProfile,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: editWidget(size),
        ),
      ),
    );
  }

  Widget editWidget(size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(size.width * 0.15),
          child: CircleAvatar(
            backgroundColor: Colors.red.shade200,
            radius: size.width * 0.15,
            child: CircleAvatar(
              radius: size.width * 0.14,
              backgroundImage: NetworkImage(imageWidget),
              backgroundColor: Colors.black,
            ),
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Name'),
            Container(
              width: size.width * 0.7,
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: TextFormField(
                controller: nameController,
                style: TextStyle(),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('UserName'),
            Container(
              width: size.width * 0.7,
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: TextFormField(
                controller: userNameController,
                style: TextStyle(),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Bio'),
            Container(
              width: size.width * 0.7,
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: TextFormField(
                controller: bioController,
                style: TextStyle(),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Link'),
            Container(
              width: size.width * 0.7,
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: TextFormField(
                controller: linkController,
                style: TextStyle(),
              ),
            )
          ],
        ),
      ],
    );
  }
}
