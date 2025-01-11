import 'package:flutter/material.dart';
import 'package:islami_c9_mon/api_manager.dart';

class PrayingTab extends StatefulWidget {
   const PrayingTab({super.key});

  @override
  State<PrayingTab> createState() => _PrayingTabState();
}

class _PrayingTabState extends State<PrayingTab> {

  @override
  Widget build(BuildContext context) {
    //getPrayingTimeService();
    return FutureBuilder(
      future: PrayingTimeService().getCurrentPrayTime(),
        builder: (context, snapshot) {
          return
            Column(
            children: [
              const SizedBox(height: 100,),
              // Expanded(flex: 1,child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24
                ),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('fajr'),
                      Text(snapshot.data?.fajr??'fajr'),
                      const Icon(Icons.toggle_off,size: 40,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24
                ),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('dhuhr'),
                      Text(snapshot.data?.dhuhr??'dhuhr'),
                      const Icon(Icons.toggle_off,size: 40,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24
                ),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('asr'),
                      Text(snapshot.data?.asr??'asr'),
                      const Icon(Icons.toggle_off,size: 40,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24
                ),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('maghrib'),
                      Text(snapshot.data?.maghrib??'maghrib'),
                      const Icon(Icons.toggle_off,size: 40,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24
                ),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('isha'),
                      Text(snapshot.data?.isha??'isha'),
                      const Icon(Icons.toggle_off,size: 40,)
                    ],
                  ),
                ),
              ),
              // Expanded(
              //   flex: 4,
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //     return  PrayingListViewItem(
              //       prayingName: 'asd',
              //       prayingTime: prayingModel.fajr);
              //   },
              //     itemCount: 5,
              //   ),
              // ),
            ],
          );
        },
    );
  }
}
