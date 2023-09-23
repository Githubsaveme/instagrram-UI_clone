import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_pro_max/viewUi/ImageView/ImageView.dart';
import 'package:instagram_pro_max/viewUi/Profile/Profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Status> list = [];

  @override
  void initState() {
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
        storyTitle: 'MyStory1'));
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        storyTitle: 'Monday Oi'));
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1509514026798-53d40bf1aa09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        storyTitle: 'Ok sun'));
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1453060590797-2d5f419b54cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        storyTitle: 'USe'));
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1454942901704-3c44c11b2ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        storyTitle: 'usa'));
    list.add(Status(
        image:
            "https://images.unsplash.com/photo-1454942901704-3c44c11b2ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        storyTitle: '2022'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsc) {
              return <Widget>[
                SliverAppBar(
                  elevation: 2,
                  backgroundColor: Colors.white,
                  title: const Text('instagram',
                      style: TextStyle(color: Colors.black)),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.messenger_outline,
                          color: Colors.black,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                      color: Colors.black,
                    )
                  ],
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  storyWidget(size),
                  const Divider(),
                  feedWidget(size)
                ],
              ),
            )));
  }

  Widget storyWidget(size) {
    return SizedBox(
      height: size * 0.3,
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size * 0.04, left: size * 0.04),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageView(
                                  imageViewPhoto: list[index].image)));
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: size * 0.1,
                      child: CircleAvatar(
                        radius: size * 0.089,
                        backgroundImage: NetworkImage(list[index].image),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size * 0.05),
                  child: Text(list[index].storyTitle),
                )
              ],
            );
          }),
    );
  }

  Widget feedWidget(size) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         CircleAvatar(
                          backgroundImage: NetworkImage(
                            list[index].image,
                          ),
                        ),
                        SizedBox(width: size * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text(
                              list[index].storyTitle,
                              style: TextStyle(),
                            ),
                            Text(
                              "name",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: size * 0.03),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_rounded,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              SizedBox(height: size * 0.01),
              CachedNetworkImage(
                imageUrl:list[index].image,
                height: size*0.8,
                width: double.infinity,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                        value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              SizedBox(height: size * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          splashRadius: size * 0.05,
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border)),
                      IconButton(
                          splashRadius: size * 0.05,
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline)),
                      IconButton(
                          splashRadius: size * 0.05,
                          onPressed: () {},
                          icon: Icon(Icons.send_outlined)),
                    ],
                  ),
                  IconButton(
                      splashRadius: size * 0.05,
                      onPressed: () {},
                      icon: Icon(Icons.save_outlined))
                ],
              ),
              SizedBox(height: size * 0.01),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("likes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size * 0.035,
                            fontWeight: FontWeight.w500)),
                    Text("name ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size * 0.035,
                            fontWeight: FontWeight.w500)),
                    Text("View all 43 comments",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size * 0.03,
                            fontWeight: FontWeight.w400)),
                    Text("20 minutes ago",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size * 0.028,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              )
            ],
          );
        });
  }
}
