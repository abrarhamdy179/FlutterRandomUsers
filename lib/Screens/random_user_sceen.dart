import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/random_user_provider.dart';
import '../Widgets/random_user_widget.dart';


class RandomUserSceen extends StatelessWidget {
  const RandomUserSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<RandomUserProvider>(builder: (context, value, child)
      {
         var obj =value.randomUserModel;
         if(obj == null)
           {
             value.getRanfomUserService();
             return Center(child: CircularProgressIndicator(),);
           }
         else
           {
             return ListView.builder(
               itemBuilder: (context, index) {
               return RandomUserWidget(
                 picture:obj.results[index]['picture']['medium'] ??'',
                 title:obj.results[index]['name']['title'] ??'',
                 first:obj.results[index]['name']['first'] ??'' ,
                 last: obj.results[index]['name']['last'] ??'',
                 email: obj.results[index]['email'] ??'',
                 location:obj.results[index]['location']['city'] ??'' ,
               );
             },
               itemCount: obj.results.length,
             );
           }
      },),
    );
  }
}
