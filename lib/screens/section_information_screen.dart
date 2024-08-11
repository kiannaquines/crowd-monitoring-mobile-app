import 'package:crowd/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:crowd/utils/colors.dart';

class SectioninformationScreen extends StatefulWidget {
  const SectioninformationScreen({super.key});

  @override
  State<SectioninformationScreen> createState() =>
      _SectioninformationScreenState();
}

class _SectioninformationScreenState extends State<SectioninformationScreen> {
  final List<String> imgList = [
    'assets/images/section/medical.jpg',
    'assets/images/section/2.jpg',
    'assets/images/section/3.jpg',
    'assets/images/section/4.jpg',
    'assets/images/section/publication.jpg',
    'assets/images/section/6.jpg',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  void youCanGo() {
    debugPrint('Hey');
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Reference Room',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left,
            color: AppColors.white,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Iconsax.heart,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                itemCount: imgList.length,
                carouselController: _controller,
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                itemBuilder: (ctx, index, realIdx) {
                  return ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    child: Stack(
                      children: [
                        Image.asset(
                          imgList[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 320,
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary,
                                AppColors.primary.withOpacity(0.1)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 10.0,
                          left: 10.0,
                          child: Text(
                            'Reading Room',
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map(
                  (entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 4.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary.withOpacity(
                            _current == entry.key ? 1 : 0.2,
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Today's Visitors",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Card(
                color: colorScheme.onSecondary,
                shadowColor: colorScheme.primary.withOpacity(0.5),
                elevation: 0.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hourly Visitors',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Iconsax.activity,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 15.0,
                        ),
                        child: LineChart(
                          LineChartData(
                            maxY: 50,
                            minY: 0,
                            titlesData: FlTitlesData(
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, _) {
                                    const style = TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    );
                                    String text;
                                    switch (value.toInt()) {
                                      case 0:
                                        text = '7am';
                                        break;
                                      case 1:
                                        text = '8am';
                                        break;
                                      case 2:
                                        text = '9am';
                                        break;
                                      case 3:
                                        text = '10am';
                                        break;
                                      case 4:
                                        text = '11am';
                                        break;
                                      case 5:
                                        text = '12am';
                                        break;
                                      case 6:
                                        text = '1pm';
                                        break;

                                      case 7:
                                        text = '2pm';
                                        break;
                                      case 8:
                                        text = '3pm';
                                        break;
                                      case 9:
                                        text = '4pm';
                                        break;
                                      case 10:
                                        text = '5pm';
                                        break;
                                      default:
                                        return const SizedBox.shrink();
                                    }
                                    return Text(
                                      text,
                                      style: style,
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                  reservedSize: 15,
                                ),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            gridData: const FlGridData(show: false),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, 8),
                                  const FlSpot(1, 12),
                                  const FlSpot(2, 22),
                                  const FlSpot(3, 12),
                                  const FlSpot(4, 29),
                                  const FlSpot(5, 10),
                                  const FlSpot(6, 34),
                                  const FlSpot(7, 13),
                                  const FlSpot(8, 24),
                                  const FlSpot(9, 13),
                                  const FlSpot(10, 40),
                                ],
                                isCurved: true,
                                color: AppColors.primary,
                                barWidth: 4,
                                isStrokeCapRound: true,
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: AppColors.primary.withOpacity(0.1),
                                ),
                              ),
                            ],
                            minX: 0,
                            maxX: 10,
                            lineTouchData: LineTouchData(
                              enabled: true,
                              touchTooltipData: LineTouchTooltipData(
                                getTooltipItems:
                                    (List<LineBarSpot> lineBarSpots) {
                                  return lineBarSpots.map((lineBarSpot) {
                                    return LineTooltipItem(
                                      '${lineBarSpot.y} Visitors',
                                      const TextStyle(
                                        color: AppColors.white,
                                        fontSize: 10,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "Weekly Visitors",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              Card(
                color: AppColors.white,
                elevation: 0.0,
                shadowColor: colorScheme.primary.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 5.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daily Visitors',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Iconsax.activity,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceBetween,
                            maxY: 20,
                            minY: 5,
                            titlesData: FlTitlesData(
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                  reservedSize: 15,
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, _) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return const Text(
                                          'Sun',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 1:
                                        return const Text(
                                          'Mon',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 2:
                                        return const Text(
                                          'Tue',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 3:
                                        return const Text(
                                          'Wed',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 4:
                                        return const Text(
                                          'Thu',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 5:
                                        return const Text(
                                          'Fri',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      case 6:
                                        return const Text(
                                          'Sat',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        );
                                      default:
                                        return const SizedBox.shrink();
                                    }
                                  },
                                ),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            gridData: const FlGridData(
                              show: false,
                            ),
                            barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                tooltipPadding: const EdgeInsets.all(8),
                                tooltipMargin: 8,
                                getTooltipItem:
                                    (group, groupIndex, rod, rodIndex) {
                                  return BarTooltipItem(
                                    '${rod.toY} Visitors',
                                    const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 10,
                                    ),
                                  );
                                },
                              ),
                              handleBuiltInTouches: true,
                            ),
                            barGroups: [
                              BarChartGroupData(
                                x: 0,
                                barRods: [
                                  BarChartRodData(
                                    toY: 8,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 1,
                                barRods: [
                                  BarChartRodData(
                                    toY: 12,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 2,
                                barRods: [
                                  BarChartRodData(
                                    toY: 16,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 3,
                                barRods: [
                                  BarChartRodData(
                                    toY: 12,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 4,
                                barRods: [
                                  BarChartRodData(
                                    toY: 16,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 5,
                                barRods: [
                                  BarChartRodData(
                                    toY: 10,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 6,
                                barRods: [
                                  BarChartRodData(
                                    toY: 13,
                                    color: AppColors.primary,
                                    width: 13,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              Card(
                color: AppColors.white,
                elevation: 0.0,
                shadowColor: AppColors.darker,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 5.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reference Schedule',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Iconsax.calendar,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Table(
                          columnWidths: const <int, TableColumnWidth>{
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: const <TableRow>[
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Monday - Thursday',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '7:00 am - 5:30 pm',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Friday',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '7:00 am - 5:30 pm',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Saturday',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    '7:00 am - 5:30 pm',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Sunday',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'No Schedule',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ButtonWidget(
                buttonText: 'You can go this hour',
                buttonColor: AppColors.primary,
                buttonTextColor: AppColors.white,
                icon: Iconsax.check,
                action: youCanGo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
