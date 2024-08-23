import 'package:country_list/ui/theme/app_colors.dart';
import 'package:country_list/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:country_list/model/country/country.dart';

class CountryDetailView extends StatelessWidget {
  final Country country;

  const CountryDetailView({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          country.name.common,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                country.flags.png.toString(),
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(country.flags.alt.toString(),
                          style: const TextStyle(color: Colors.black54)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Official Name: ${country.name.official}',
              style: AppTheme.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Capital: ${country.capital.join(', ')}',
              style: AppTheme.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Region: ${country.region}',
              style: AppTheme.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Population: ${country.population.toString()}',
              style: AppTheme.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.red),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Languages:',
              style: AppTheme.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.primary),
            ),
            ...country.languages.entries.map(
              (entry) => Text(
                '${entry.value} (${entry.key})',
                style: AppTheme.theme.textTheme.bodyLarge
                    ?.copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
