part of '../screen_persons_list.dart';

class _ListView extends StatelessWidget {
  const _ListView({
    Key? key,
    required this.personsList,
  }) : super(key: key);

  final List<Person> personsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      itemCount: personsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          child: PersonListTile(personsList[index]),
          onTap: () {},
        );
      },
      separatorBuilder: (context, _) => const SizedBox(height: 26.0),
    );
  }
}
