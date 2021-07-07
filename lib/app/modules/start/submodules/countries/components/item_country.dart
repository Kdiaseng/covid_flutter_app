import 'package:covid_flutter_app/app/modules/start/submodules/countries/models/country_model.dart';
import 'package:flutter/material.dart';

class ItemCountry extends StatelessWidget {
  final Function onClick;
  final CountryModel countryModel;
  final Color color;

  const ItemCountry(
      {Key key,
      @required this.onClick,
      @required this.countryModel,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
      child: Material(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        elevation: 5,
        child: InkWell(
          onTap: () {
            onClick();
          },
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(countryModel.countryInfo.flag)),
            title: Text(
              countryModel.country,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(countryModel.continent),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Population",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  countryModel.population.toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
