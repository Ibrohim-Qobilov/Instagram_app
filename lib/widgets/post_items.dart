

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/components/colors.dart';
import 'package:instagram/components/icons.dart';
import 'package:line_icons/line_icons.dart';


class PostItem extends StatelessWidget {
  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final isLoved;
  final String likedBy;
  final String viewCount;
  final String dayAgo;
  const PostItem({
    Key? key, required this.profileImg,required this.name,required this.postImg, this.isLoved,required this.likedBy,required this.viewCount, required this.dayAgo,required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(width: 15,),
                Text(name,style: const TextStyle(
                  color: black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),)
                ],),
                const Icon(LineIcons.save, color: black
                ,)
              ],
            ),
          ),
          const SizedBox(height: 12,),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(postImg),fit: BoxFit.cover)
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                isLoved ? love : loves,
                const SizedBox(width: 20,),
                 comment,
                  const SizedBox(width: 20,),
                 message,
              ],
            ),
            save,
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: RichText(text: TextSpan(
              children: [
                const TextSpan(
                  text: "Liked by ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),
                TextSpan(
                  text: "$likedBy ",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  )
                ),
                const TextSpan(
                  text: "and ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  )
                ),
                const TextSpan(
                  text: "Other",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  )
                ),
                
              ]
            )),
          ),
          const SizedBox(height: 12,),
          Padding(padding: const EdgeInsets.only(left: 15,right: 15),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "$name ",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  )
                ),
                TextSpan(
                  text: caption,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                  )
                ),

              ]
            ))),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
            child: Text("View $viewCount comments",style: TextStyle(
              color: white.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            ),
            const SizedBox(height: 12,),
            Padding(padding:const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(width: 15,),
                const Text("Add a comment...",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
              ],
            ),
            Row(
              children: const [
                Text("😂",style: TextStyle(
                  color: Colors.black,
                  fontSize: 
                  20
                ),),
                SizedBox(width: 10,),
                Text("😍",style: TextStyle(
                  color: Colors.black,
                  fontSize: 
                  20
                ),),
                 SizedBox(width: 10,),
                 Icon(Icons.add_circle,color: Colors.black45,size: 18,)
              ],
            )
              ],
            )
            ),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
            child:  Text(dayAgo,style: const TextStyle(
              color: Colors.black38,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            )
        ],
      ),
    );
  }
}