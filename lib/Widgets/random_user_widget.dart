import 'package:flutter/material.dart';

class RandomUserWidget extends StatelessWidget {
  String title ,first,last,location,email,picture ;
   RandomUserWidget({super.key,
    required this.picture,
    required this.title,
    required this.first,
    required this.last,
    required this.email,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: picture.isNotEmpty? Image.network(picture):Text("The image not fount"),
        title: title.isNotEmpty||first.isNotEmpty||last.isNotEmpty? Text(title+first+last):Text("The Name not fount"),
        subtitle:location.isNotEmpty? Text(location):Text("The Location not fount"),
        trailing: email.isNotEmpty? Text(email):Text("The Email not fount"),
      ),
    );
  }
}
