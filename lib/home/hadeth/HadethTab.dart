import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c9_mon/home/hadeth/HadethTitleWidget.dart';
import 'Hadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image.asset("assets/images/hadeth_logo.png"),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                width: 2, color: Theme.of(context).dividerColor,
              ),
            ),
          ),
          width: double.infinity,
          child:Text(
            'الأحاديث',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty?
          const Center(child: CircularProgressIndicator(),)
          : ListView.separated(
              itemBuilder: (context,index){
            return HadethTitleWidget(allAhadeth[index]);
          }, separatorBuilder:
              (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
            color: Theme.of(context).dividerColor,
            width: double.infinity,
            height: 2,
          ),
              itemCount: allAhadeth.length
          ),
        )
      ],
    );
  }

  List<Hadeth>allAhadeth=[];

  void loadHadethFile() async{
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt") ;
    List<String> hadethContent = fileContent.trim().split("#") ;
    for(int i=0;i<hadethContent.length;i++){
      String singleHadeth = hadethContent[i] ;
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.remove(0);
      String content = hadethLines.join();
      Hadeth hadeth = Hadeth(title,content);
      allAhadeth.add(hadeth);
    }
    setState(() {});
  }
}
