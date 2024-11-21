// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class WeatherChart extends StatelessWidget {
//   final List<double> temperatures;

//   WeatherChart({required this.temperatures});

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         gridData: FlGridData(show: true),
//         titlesData: FlTitlesData(
//           bottomTitles: 
//            SideTitles(
//               showTitles: true,
//               getTitles: (value) => 
//                 "Day ${value.toInt() + 1}",
//               //  style: TextStyle(fontSize: 10),
              
//             ),
          
//           leftTitles: SideTitles(
            
//               showTitles: true,
//               reservedSize: 40,
//               getTitles: (value, ) => 
//                 "${value.toInt()}°C",
              
              
            
//           ),
//         ),
//         borderData: FlBorderData(show: true),
//         minX: 0,
//         maxX: temperatures.length.toDouble() - 1,
//         minY: temperatures.reduce((a, b) => a < b ? a : b) - 5,
//         maxY: temperatures.reduce((a, b) => a > b ? a : b) + 5,
//         lineBarsData: [
//           LineChartBarData(
//             spots: temperatures.asMap().entries.map((e) => FlSpot(e.key.toDouble(), e.value)).toList(),
//             isCurved: true,
//             barWidth: 3,
//             belowBarData: BarAreaData(show: true, colors: [Colors.blue.withOpacity(0.3)]),
//           ),
//         ],
//       ),
//     );
//   }
// }
