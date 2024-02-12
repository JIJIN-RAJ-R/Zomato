import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato/controller/rating.dart';
import 'package:like_button/like_button.dart';
import 'package:zomato/view/user.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FaIcon(FontAwesomeIcons.locationArrow),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //  FaIcon(FontAwesomeIcons.locationArrow),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Thiruvananthapuram',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  'nalanchira, marivanous college',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const user_page(),
                  ),
                );
              },
              icon: FaIcon(
                FontAwesomeIcons.user,
                color: Colors.blueAccent,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 32,
                  ),

                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 100),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  // prefix: FaIcon(FontAwesomeIcons.microphone,)
                )),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEeHvK84Z60A3_fVoj8N25KEkmTWmqJIfhKrC9sXmfsA&s',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Cake',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://www.shutterstock.com/image-vector/gourmet-chocolate-brownie-snack-sweet-600nw-2296614779.jpg',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Brownie',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://img.freepik.com/free-photo/delicious-cookies-arrangement_23-2150707201.jpg',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Cookies',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ1PjZ77jdkWztzdhXRW9hcPadMaLQW2jvhgBoUIkLHA&s',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Doughnut',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://t3.ftcdn.net/jpg/05/68/12/34/360_F_568123469_wPEOJpuXdqbdxmwIHmcH2U6iqYdRIdmn.jpg',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Ice cream',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMGs_E5anLDEIhfeCEMhBCOhJgEiDB9H01NKKCa4UcZA&s',
                                width: 80,
                                height: 80,
                              ),
                              const Text(
                                'Waffles',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              const Text(
                '____ For you ____',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.kitchensanctuary.com/wp-content/uploads/2020/04/Chicken-Fried-Rice-square-FS-.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/wydpzezlbyahq1ao78cj',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://pbs.twimg.com/media/E3I2WNNVEAAqod4.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.indianhealthyrecipes.com/wp-content/uploads/2023/06/brown-rice-dosa-recipe.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: const LikeButton(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          )),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.kitchensanctuary.com/wp-content/uploads/2020/04/Chicken-Fried-Rice-square-FS-.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: LikeButton(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          )),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text("FEATURED"),
              SizedBox(
                height: 15,
              ),
              Container(
                // height: 700,
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://b.zmtcdn.com/data/dish_photos/2f0/2f6811baef3b77d52b1adfce648032f0.png',
                            fit: BoxFit.cover,
                          ),
                          Container(
                              child: const Row(children: [
                            Text(
                              'Al Hasan Family\n Retaurant',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            ratingstar(),
                          ])),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://t3.ftcdn.net/jpg/03/90/16/96/360_F_390169691_IO5xBTYU6PIw8Ms1W5AHp0zx5R153WHB.jpg',
                            fit: BoxFit.cover,
                          ),
                          Container(
                              child: const Row(children: [
                            Text(
                              'Al Hasan Family\n Retaurant',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            ratingstar(),
                          ])),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
