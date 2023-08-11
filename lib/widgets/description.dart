import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque quaerat non nesciunt repellat, perferendis reiciendis repudiandae tempore vero totam asperiores qui eos, quos eligendi tenetur aut eius modi odit dolore harum molestias.",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.9),
            ),
            // textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Course Length : ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.timer,
                color: Pallete.blue,
              ),
              SizedBox(width: 5),
              Text(
                "26 Hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Rating : ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text(
                "26 Hours",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
