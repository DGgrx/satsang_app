import 'package:flutter/material.dart';
import 'package:satsang_app/services/api_service.dart';
import 'package:satsang_app/models/channel_model.dart';
import 'package:satsang_app/models/video_model.dart';

class Satsangs extends StatefulWidget {
  const Satsangs({Key? key}) : super(key: key);

  @override
  State<Satsangs> createState() => _SatsangsState();
}

class _SatsangsState extends State<Satsangs> {
  Channel channel1;
  Channel channel2;

  bool isLoading = false;

  @override
  void initState(){
    super.initState();
    _initChannel();
  }
  _initChannel() async{
    Channel channel1 = await APIService.instance
        .fetchChannel(channelId: "UC3gnhko-qhwOdUDh_DcZaAw");
    Channel channel2 = await APIService.instance
        .fetchChannel(channelId: "UC_nseD9NYQYCiDMy-AfkZfA");

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
