import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/dashboard/graph/mychart.widget.dart';
import 'package:flutter_dashboard/widgets/dashboard/percentage/percentchart.widget.dart';
import 'package:flutter_dashboard/widgets/dashboard/profile/profile-info.widget.dart';
import 'package:flutter_dashboard/widgets/dashboard/saving/saving.widget.dart';
import 'package:flutter_dashboard/widgets/dashboard/search/search.widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SearchWidget(),
                  ProfileInfo(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Divider(
                  height: 1,
                  color: Colors.grey[200],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Saving(),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                      spreadRadius: 1,
                                      color: Colors.black12,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyPercentageChart(
                                        bgColor: Colors.indigoAccent
                                            .withOpacity(0.7),
                                        mainColor: Colors.indigo,
                                        percent: 0.6,
                                        textPercent: '60%',
                                        type: 'Wallet',
                                        value: 'R\$ 679.56',
                                    ),
                                    MyPercentageChart(
                                        bgColor: Colors.purpleAccent
                                            .withOpacity(0.7),
                                        mainColor: Colors.purple,
                                        percent: 0.4,
                                        textPercent: '40%',
                                        type: 'Investments',
                                        value: 'R\$ 374.50',),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const MyChart()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
