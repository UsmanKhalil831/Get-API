import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'APIGetViewModel.dart';

class APIGetView extends StatelessWidget {
  const APIGetView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return ViewModelBuilder<APIGetViewModel>.reactive(
      viewModelBuilder: () => APIGetViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [   
              FutureBuilder(
                future: viewModel.getAPI(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(11),
                          child: ListTile(
                            tileColor: Colors.amber,
                            title: Text(snapshot.data[index]['name']),
                            subtitle:
                                Text(snapshot.data[index]['id'].toString()),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
