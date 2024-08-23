import 'package:auto_route/auto_route.dart';
import 'package:country_list/model/country/country.dart';
import 'package:country_list/ui/Widgets/country_card_widget.dart';
import 'package:country_list/ui/Widgets/tab_header_widget.dart';
import 'package:country_list/ui/theme/app_colors.dart';
import 'package:country_list/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        title: const Text(
          "Country List",
          style: TextStyle(color: AppColors.background),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16, bottom: 16, top: 16),
            child: const Icon(Icons.menu),
          )
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final countryState = ref.watch(countryDataProvider);

          final selectedCriteria = ref.watch(sortingCriteriaProvider);
          final selectedOrder = ref.watch(sortingOrderProvider);

          return countryState.when(
            data: (countries) {
              List<Country> sortedCountries = List.from(countries);

              // Sorting logic based on criteria and order
              if (selectedCriteria == "Population") {
                sortedCountries.sort((a, b) => selectedOrder == "Descending"
                    ? b.population.compareTo(a.population)
                    : a.population.compareTo(b.population));
              } else if (selectedCriteria == "Name") {
                sortedCountries.sort((a, b) => selectedOrder == "Descending"
                    ? b.name.common.compareTo(a.name.common)
                    : a.name.common.compareTo(b.name.common));
              } else if (selectedCriteria == "Capital") {
                sortedCountries.sort((a, b) => selectedOrder == "Descending"
                    ? b.capital.first.compareTo(a.capital.first)
                    : a.capital.first.compareTo(b.capital.first));
              }

              return Container(
                height: MediaQuery.of(context).size.height,
                color: AppColors.background,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sort By',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButton<String>(
                          value: selectedCriteria,
                          items: ["Population", "Name", "Capital"]
                              .map((criteria) => DropdownMenuItem(
                                    value: criteria,
                                    child: TabHeaderWidget(criteria),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            ref.read(sortingCriteriaProvider.notifier).state =
                                value!;
                          },
                        ),
                        DropdownButton<String>(
                          value: selectedOrder,
                          items: ["Ascending", "Descending"]
                              .map((order) => DropdownMenuItem(
                                    value: order,
                                    child: Text(order),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            ref.read(sortingOrderProvider.notifier).state =
                                value!;
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: countries.isEmpty
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.error_outline_rounded,
                                      color: AppColors.primary,
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "There are no Records".toUpperCase(),
                                      style: const TextStyle(
                                          fontFamily: "BaiJamjuree-SemiBold",
                                          fontSize: 14,
                                          color: AppColors.primary),
                                    ),
                                  ],
                                ),
                              )
                            : Column(
                                children: sortedCountries
                                    .map((cntry) => CountryCardWidget(cntry))
                                    .toList(),
                              ),
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Center(
              child: Text('Failed to load countries: $error'),
            ),
          );
        },
      ),
    );
  }
}
