import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class spotifyWebAuth{
  // The following are perameters for accesing the Spotify API.
  // Variables are Const as they need to be immutable so access does not change.
  static const String spClientID = '52d95c46e9ee45c291959f9105aa2b4c';
  static const String spClientSecrectID = '6fbb7c678fb64f5eb8271e555f23c9e9';
  static const String spRedirectURL = 'http://localhost/3000/callback';
  static const String scope = 'user-read-private user-read-email streaming';
  
  
  static String? accessToken; // Access code for the webAPI required for all http calls. Needs to be available to all instances of this call so is "static."


  Future<String> getAuthorizationCode() async {
    String spAuthURL = spAuth 'https://accounts.spotify.com/authorize?client_id=$spClientID&response_type=code&redirect_uri=$spRedirectURL&scope=$scope'; // Using the spotify login URL, and provides the app-specific peramerters of AMP
        //https://accounts.spotify.com/authorize?client_id=52d95c46e9ee45c291959f9105aa2b4c&response_type=code&redirect_uri=http://localhost/3000/callback&scope=user-read-private user-read-email

    if (await canLaunchUrl(spAuthURL)){
      await launchUrl(spAuthURL); 
    }
    else{
      throw 'Unable to launch webpage. URL: $spAuthURL';
    }


  }
}