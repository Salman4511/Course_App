import 'package:course_app/constants/constants.dart';
import 'package:flutter/material.dart';

class TopBarWidgetCard extends StatelessWidget {
  const TopBarWidgetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 147, 88, 235),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                kwidth10,
                kwidth10,
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi,Good Morning',
                      style: TextStyle(color: kwhite),
                    ),
                    Text(
                      'John',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kwhite),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        '  10 ',
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.currency_exchange,
                        color: Colors.yellow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                kwidth10,
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: kwhite,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(kprofileImg),
                  ),
                ),
                kwidth10
              ],
            ),
            kheight30,
            Container(
              height: 65,
              width: 350,
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  kwidth30,
                  const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'selected course',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Montessori',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 119, 73, 188),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        kwidth10,
                        const Text(
                          'Change ',
                          style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const Icon(
                          Icons.change_circle_outlined,
                          color: kwhite,
                        )
                      ],
                    ),
                  ),
                  kwidth30
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
