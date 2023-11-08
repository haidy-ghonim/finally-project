import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double coverHeight=250;
  final double profileHeight=144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding:  EdgeInsets.zero,
        children:<Widget> [
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }






  // build top
  Widget buildTop() {
    final bottom = profileHeight /2;
    final top = coverHeight - profileHeight /2;
      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children:[
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child:  builderCoverImage(),
          ),

         Positioned(
           top:top,
             child: buildProfileImage(),
        ),
        ] //children
        );
        }



  //cover image
  Widget builderCoverImage() =>
      Container(
        color: Colors.grey[400],
        child: LottieBuilder.network('https://lottie.host/90c6e8be-7f9e-4baa-9120-f590c589e6f1/WlletAxaRg.json',
        width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );


  // person image
   Widget buildProfileImage() => CircleAvatar(
     radius: profileHeight /2,
     backgroundColor: Colors.grey.shade800,
     child: LottieBuilder.network('https://lottie.host/c1b2bc59-40b3-42bb-b545-2e00633b73cb/AVjH3G9iv1.json'),
   );



   // content
     Widget  buildContent()=>   Column(
       children: [
         const SizedBox(height: 8,),
         const Text(' Haidy Ghonim',
         style: TextStyle(fontSize: 28,
             fontWeight: FontWeight.bold),
         ),
         const SizedBox(height: 8,),
         const Text('Teacher Assistent & Developer' ,
           style: TextStyle(fontSize: 18,height: 1.4),
         ),
       const SizedBox(height: 16,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         buildSocialIcon(FontAwesomeIcons.slack),
         const SizedBox(height: 12,),
         buildSocialIcon(FontAwesomeIcons.github),
           const SizedBox(height: 12,),
         buildSocialIcon(FontAwesomeIcons.twitter),
         const SizedBox(height: 12,),
         buildSocialIcon(FontAwesomeIcons.linkedin),
       ],
       ),
       const  SizedBox(height: 16,),
         Divider(),
         const SizedBox(height: 16,),
          NumbersWidget(),
         const SizedBox(height: 16,),
         // buildAbout(),
         const SizedBox(height: 32,),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 48),
             child: Row (
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text('About',
               style: TextStyle(fontSize: 28,
               fontWeight: FontWeight.bold
             ),
               ),

              ],
         ),),
         Container(),
       ],
     )  ;



  Widget buildSocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child:Material(
      shape:  const CircleBorder(),
      clipBehavior:Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child:Center(child: Icon(icon,size: 32,
        ),)
      ),
    ),
  );

}

class  NumbersWidget  extends StatelessWidget {
  const  NumbersWidget ({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget> [
     buildButton(text:'Project',value:39),
      buildDiver(),
      buildButton(text:'Following ',value:529),
      buildDiver(),
      buildButton(text:'Followers ',value:5334),
    ],
  );



  Widget buildDiver() => Container(
    height:24 ,
    child: const VerticalDivider(
      width: 5,
    ),
  );



  Widget buildButton(
  { required String text,
    required int value, } ) =>

      MaterialButton(
          padding:  EdgeInsets.symmetric(vertical: 4),
          onPressed: (){},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            Text('$value',
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30),
            ),
            SizedBox(height: 2,),
            Text(text,
            style: TextStyle(fontSize: 16),
            )
          ],
      ),
      );
  }






// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Text('About',
//     style: TextStyle(fontSize:28, fontWeight: FontWeight.w500 ),
//     ),
//     SizedBox(height: 16,),
//
//   ],
// ),

// https://lottie.host/c1b2bc59-40b3-42bb-b545-2e00633b73cb/AVjH3G9iv1.json