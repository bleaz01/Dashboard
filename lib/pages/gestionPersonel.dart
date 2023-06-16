import 'dart:convert';
import 'package:flutter/material.dart';

class PeopleManage extends StatelessWidget {
  const PeopleManage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> personnel = [
      {
        'name': "Julien",
        'surname': 'Leroi',
        'role': "AF",
        "date d'entré": "19/05/2021",
        "contrat": "CDD",
        "list matériel": [
          {
            'gsm': {'model': 'samsung'},
          }
        ]
      },
      {
        'name': "Juli",
        'surname': 'Montblanc',
        'role': "AEM",
        "date d'entré": "29/05/2021",
        "contrat": "CDI",
        "list matériel": [
          {
            'gsm': {'model': 'samsung'},
          }
        ]
      },
      {
        'name': "Juliette",
        'surname': 'Ludvick',
        'role': "GEM",
        "date d'entré": "29/05/2021",
        "contrat": "CDI",
        "list matériel": [
          {
            'gsm': {'model': 'samsung', 'R/S': '5423vf54631'},
            'pc': {'model': 'Lenovo'},
          }
        ]
      },
        {
        'name': "Julio",
        'surname': 'vick',
        'role': "AM",
        "date d'entré": "29/05/2021",
        "contrat": "CDI",
        "list matériel": [
          {
            'gsm': {'model': 'samsung', 'R/S': '5423vf54631'},
            'pc': {'model': 'Lenovo'},
          }
        ]
      },
    ];

    SetColor(String role) {
      switch (role) {
        case 'AF':
          {
            return Color.fromARGB(255, 3, 139, 33);
          }

        case 'AM':
          {
            return Color.fromARGB(255, 247, 181, 1);
          }

        case 'AEM':
          {
            return Color.fromARGB(255, 1, 68, 4);
          }

        case 'GEM':
          {
            return Color.fromARGB(255, 247, 112, 1);
          }

        default:
          {
            //statements;
          }
          break;
      }
    }

    itemPersonne() {
      personnel.forEach((person) {
        print('Name: ${person['name']}');
        print('Surname: ${person['surname']}');
        print('Role: ${person['role']}');
        print('Date d\'entré: ${person['date d\'entré']}');
        print('Contrat: ${person['contrat']}');

        List<Map<String, dynamic>> equipment =
            List<Map<String, dynamic>>.from(person['list matériel']);
        equipment.forEach((item) {
          Map<String, dynamic> gsm = item['gsm'];
          print('GSM Model: ${gsm['model']}');
        });

        print('\n');
      });
    }

    //itemPersonne();

    return Container(
      child: Column(
        children: [
          Text("title"),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              readOnly: false,
              onTap: () {
                print('hello');
                //Go to the next screen
              },
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                hintText: 'Enter a search term',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          //SearchBar
          Container(
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: personnel.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> person = personnel[index];
                  List<Map<String, dynamic>> equipment =
                      List<Map<String, dynamic>>.from(person['list matériel']);
                  Map<String, dynamic> gsm = equipment.first['gsm'];
                  return Card(
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                const Center(
                                  child: Icon(Icons.person),
                                ),
                                Center(
                                  child: Text(
                                      '${person['name']} ${person['surname']}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 20, right: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    'Date d\'entré: ${person['date d\'entré']}'),
                                Text('Contrat: ${person['contrat']}'),
                                Text('GSM Model: ${gsm['R/S']}'),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: double.infinity,
                            color: SetColor('${person['role']}'),
                            child: Center(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    '${person['role']}',
                                    style: TextStyle(
                                      backgroundColor:
                                          SetColor('${person['role']}'),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
