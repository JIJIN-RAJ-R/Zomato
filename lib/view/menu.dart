import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: const Row(
            children: [FaIcon(FontAwesomeIcons.locationArrow)],
          ),
        ),
      ),
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}
