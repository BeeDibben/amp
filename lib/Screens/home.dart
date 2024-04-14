import 'package:flutter/material.dart';

class home extends StatelessWidget{
  const home({super.key});
  @override
  Widget build(BuildContext context){
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading:Image.asset('assets/images/full_logo_clear_bg.png', fit: BoxFit.contain,),
        


        
      )
    );

  }
  
}