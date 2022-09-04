import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  List<Status> list = [];
  List<Post> postList = [];
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    setState(() {
      postList.add(Post(
          post:
              'https://images.unsplash.com/photo-1501183007986-d0d080b147f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'));
      postList.add(
        Post(
          post:
              'https://images.unsplash.com/photo-1490730141103-6cac27aaab94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        ),
      );
      postList.add(Post(
        post:
            'https://images.unsplash.com/photo-1453060590797-2d5f419b54cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      ));
      postList.add(Post(
        post:
            'https://images.unsplash.com/photo-1522878129833-838a904a0e9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      ));
      postList.add(Post(
        post:
            'https://images.unsplash.com/photo-1522878129833-838a904a0e9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      ));
      postList.add(Post(
        post:
            'https://images.unsplash.com/photo-1454391304352-2bf4678b1a7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      ));
      postList.add(Post(
        post:
            'https://media.istockphoto.com/photos/skydivers-fall-upside-down-in-aerial-flight-picture-id1409905275?b=1&k=20&m=1409905275&s=170667a&w=0&h=eYRcPfxGHkxEQ_sf6Uw6L71oOEkuDz2qAGk_YcJAyFk=',
      ));
      postList.add(Post(
        post:
            'https://media.istockphoto.com/photos/young-woman-with-backpack-outdoors-picture-id1344837084?b=1&k=20&m=1344837084&s=170667a&w=0&h=2p5UshNVhibqLwlRaINCyn8LRoAa-JHmX8XXiJEPYXE=',
      ));

      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1538991383142-36c4edeaffde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80", storyTitle: 'MyStory1'));
      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", storyTitle: 'Monday Oi'));
      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1509514026798-53d40bf1aa09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", storyTitle: 'Ok sun'));
      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1453060590797-2d5f419b54cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", storyTitle: 'USe'));
      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1454942901704-3c44c11b2ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", storyTitle: 'usa'));
      list.add(Status(
          image:
              "https://images.unsplash.com/photo-1454942901704-3c44c11b2ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGZyZWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", storyTitle: '2022'));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        title: Title(
            color: Colors.white,
            child: Row(
              children: [],
            )),
      ),*/
      body: Padding(
        padding: EdgeInsets.only(top: size * 0.07),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size * 0.02),
                        child: Text(
                          "username",
                          style: TextStyle(
                              fontSize: size * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: size * 0.05,
                      ),
                      Icon(Icons.menu)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size * 0.02),
                        child: CircleAvatar(
                          backgroundColor: Colors.red.shade200,
                          radius: size * 0.15,
                          child: CircleAvatar(
                            radius: size * 0.14,
                            backgroundImage: NetworkImage('https://c.ndtvimg.com/2021-02/s10oapdo_budget-2021-memes-budget-jokes_625x300_01_February_21.jpg'),
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size * 0.02,
                      ),
                      Text(
                        "username",
                        style: TextStyle(
                            fontSize: size * 0.04, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: size * 0.1, bottom: size * 0.08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              postList.length.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size * 0.05),
                            ),
                            Text("Posts"),
                          ],
                        ),
                        SizedBox(
                          width: size * 0.03,
                        ),
                        Column(
                          children: [
                            Text(
                              "1K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size * 0.05),
                            ),
                            Text("Followers"),
                          ],
                        ),
                        SizedBox(
                          width: size * 0.03,
                        ),
                        Column(
                          children: [
                            Text(
                              "56",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size * 0.05),
                            ),
                            Text("Following"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: size * 0.05, right: size * 0.02),
                  child: Text(
                      "Qui quasi necessitatibus id pariatur libero non iusto consequatur ea corporis sint. Ex iste accusamus ea totam harum eum internos autem est error! Et incidunt fugit ad"),
                ),
                SizedBox(
                  height: size * 0.02,
                ),
                Container(
                  padding: EdgeInsets.all(size * 0.02),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Text("Edit Profile"),
                ),
                /* ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.all(size * 0.02)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    ))*/
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: size * 0.3,
                  child: ListView.builder(
                      itemCount: list.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: size * 0.04, left: size * 0.04),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                radius: size * 0.1,
                                child: CircleAvatar(
                                  radius: size * 0.089,
                                  backgroundImage:
                                      NetworkImage(list[index].image),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:size*0.05 ),
                              child: Text(list[index].storyTitle),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  DefaultTabController(
                    length: 2,
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      controller: _tabController,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.menu_book_rounded,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.perm_contact_cal_sharp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: postList.length,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: size * 0.4,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: size * 0.01,
                                  mainAxisSpacing: size * 0.01),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(postList[index].post),
                                      fit: BoxFit.cover),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(2)),
                            );
                          }),
                      GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: postList.length,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: size * 0.4,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: size * 0.01,
                                  mainAxisSpacing: size * 0.01),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(postList[index].post),
                                      fit: BoxFit.cover),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(2)),
                            );
                          }),
                    ]),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: size * 0.18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, size: size * 0.09),
                  Icon(Icons.search_outlined, size: size * 0.09),
                  Icon(
                    Icons.settings,
                    size: size * 0.09,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: size * 0.09,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red.shade200,
                    radius: size * 0.05,
                    child: CircleAvatar(backgroundImage: NetworkImage('https://c.ndtvimg.com/2021-02/s10oapdo_budget-2021-memes-budget-jokes_625x300_01_February_21.jpg'),
                      radius: size * 0.04,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

///class modal

class Status {
  String image = "";
  String storyTitle="";

  Status({required this.image, required this.storyTitle});
}

class Post {
  String post = "";
  Post({required this.post});
}
