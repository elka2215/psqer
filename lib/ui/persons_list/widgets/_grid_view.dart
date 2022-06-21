part of '../screen_persons_list.dart';

class _GridView extends StatelessWidget {
  const _GridView({
    Key? key,
    required this.personsList,
  }) : super(key: key);

  final List<Person> personsList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 8.0,
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      children: personsList.map((person) {
        return InkWell(
          child: PersonGridTile(person),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
