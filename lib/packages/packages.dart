import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:assets_audio_player/assets_audio_player.dart';



class PackagesScreen extends StatefulWidget {
   PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> with SingleTickerProviderStateMixin{
   late TabController _tabController; 
@override
void initState() {   
           _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

 
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  int _currentPlayingIndex = -1;

  final List<Map<String, String>> surahs = [
    {'title': 'الفاتحة', 'audio': 'assets/audio/001.mp3'},
    {'title': 'الاخلاص', 'audio': 'assets/audio/112.mp3'},
    {'title': 'الناس', 'audio': 'assets/audio/114.mp3'},
  ];
  
List<String> images=[
'assets/images/y1.png',
'assets/images/y3.png',
'assets/images/y4.png',

];
 




void _playSurah(int index) {
    if (_currentPlayingIndex == index) {
      _assetsAudioPlayer.stop();
      setState(() {
        _currentPlayingIndex = -1;
      });
    } else {
      _assetsAudioPlayer.open(
        Audio(surahs[index]['audio']!),
        autoStart: true,
      );
      setState(() {
        _currentPlayingIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext  context) {
int i=0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabs'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Loading"),
            Tab(text: "Slider "),
            Tab(text: "Surah"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          //SpinkitCircle
          const Center(
            child: SpinKitCircle(
              color: Colors.blue,
              size: 50.0,
            ),
          ),

          //Slider
              Center(child: CarouselSlider.builder(
                 options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   ),
  itemCount: 3,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Image.asset(images[itemIndex]),
),),
// Surah 
          Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                        itemCount: surahs.length,
                        itemBuilder: (context, index) {
                          i=index;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey,
                    ),
                    child: ListTile(
                      trailing: Icon(
                        _currentPlayingIndex == index ? Icons.pause_circle_filled : Icons.play_circle_fill,
                        color: _currentPlayingIndex == index ? Colors.red : Colors.green,
                        size: 30,
                      ),
                      title: Text(surahs[index]['title']!,textAlign: TextAlign.right,textDirection: TextDirection.rtl,),
                      onTap: () => _playSurah(index),
                    ),
                  ),
                );
                        },
                      ),
              ),
          //  BottomAppBar(
          //    child: Row(
          //              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //              children: [
          //     IconButton(
          //       icon: Icon(Icons.skip_previous),
          //       onPressed: _currentPlayingIndex > 0
          //           ? () => _playSurah(_currentPlayingIndex - 1)
          //           : null,
          //     ),
             
          //     IconButton(
          //       icon: Icon(Icons.skip_next),
          //       onPressed: _currentPlayingIndex < surahs.length - 1
          //           ? () => _playSurah(_currentPlayingIndex + 1)
          //           : null,
          //     ),
          //              ],
          //            ),
          //  ),
    
            ],
          ),

      
      
      
      
        ],
      ),
     
    );
  }

}




