import 'package:country_list/model/country/country.dart';
import 'package:country_list/ui/Widgets/country_detail_view.dart';
import 'package:flutter/material.dart';

class CountryCardWidget extends StatelessWidget {
  final Country country;

  const CountryCardWidget(this.country, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        title: Text(
          country.name.common,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          "${country.capital.first}  ${country.population.toString()}",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[600],
          ),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            country.flags.png.toString(),
            width: 50.0,
            height: 30.0,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountryDetailView(country: country),
            ),
          );
        },
      ),
    );
  }
}
