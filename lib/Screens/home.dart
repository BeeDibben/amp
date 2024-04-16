import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context){
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading: Image.asset('assets/images/full_logo_clear_bg.png', fit: BoxFit.contain),
      ),
      
      body: 
      Align( 
        alignment: Alignment.center, 
        child: Column(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.center, //Organises widgets vertically, all widgets in this page are a child of this widget
        children: <Widget>[
        Container( // Container for visually representing user's current location
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
          color: theme.colorScheme.primary), 
          alignment: Alignment.center, 
          padding: const EdgeInsets.all(15), 
          height: MediaQuery.of(context).size.height * 0.3, 
          width: MediaQuery.of(context).size.width * 0.85,
        ),

        Row( //Keeps the buttons below the map organised
            mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            
            Padding(padding: const EdgeInsets.all(6),
          child: 
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: theme.colorScheme.surface), 
            height: MediaQuery.of(context).size.height * 0.1, 
            width: MediaQuery.of(context).size.width * 0.38,
            child: Align(alignment: Alignment.center,
            child: Text("Modify Zone Playlists ", textAlign: TextAlign.center, selectionColor: theme.colorScheme.background,),
            
            ),

            ),
            ),

          Padding(padding: const EdgeInsets.all(6),
          child: 
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: theme.colorScheme.surface), 
            height: MediaQuery.of(context).size.height * 0.1, 
            width: MediaQuery.of(context).size.width * 0.38,
            child: Align(alignment: Alignment.center,
            child: Text("Modify Zone Playlists ", textAlign: TextAlign.center, selectionColor: theme.colorScheme.background,),
            
            ),

            ),
            ),
          ],
        )
        
        
        ]
      )
      )
      );
  }
}

