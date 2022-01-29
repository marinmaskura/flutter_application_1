import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/department_details_models.dart';
import 'package:flutter_application_1/model/department_models.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      // List<Department> deptlist = [
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      //   Department(id: 1, name: "bangla", img: "",
      //   deptDetils: DepartmentdetailsModel(
      //     id: 1,
      //     name: 'bang',
      //     titel: 'Bangla one',
      //     dec: 'insfsf',
      //     img: '',
      //   ),
      //   ),
      // ] ; 
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('About')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: 
      
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
                      // margin: EdgeInsetsGeometry.infinity,
                      height: 50.0,
                      width: 450.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      child: Center(child: Text("Brief history",
                      style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 30.0)
                      )
                      
                      )
                      
                      ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                      child: Image.asset('assets/images/ovibabok_chowni_6.jpg'),                     
                      ),
            Container(
                    padding: EdgeInsets.all(20.0),
                          // margin: EdgeInsetsGeometry.infinity,
                          height: 1300.0,
                          width: 450.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                          ),
                          child: Center(child: 
                          Text("Brahmanbaria is a first class district town in Bangladesh. Formerly it was a subdivision town. The district town was developed in 1984. The district is well known as the seat of art, literature, music and culture of the Indian subcontinent. Brahmanbaria is full of tradition, history and diversity. Today's Brahmanbaria (district) was completed during the British rule. Comilla district was formed in 1890. Brahmanbaria subdivision was formed in 180. After the formation of Sub-Divisional Headquarters, the Sadar Sub-Divisional Office was shifted from Nasir Nagar to Brahmanbaria. After the formation of Brahmanbaria subdivision in 180, the subdivision was divided into 7 police stations. The police stations are: (1) Brahmanbaria (2) Sarail (3) Nasirnagar (4) Kasba (5) Nabinagar and (6) Bancharampur. Brahmanbaria subdivision was a first class subdivision but there was no girls school in the town. Education is the backbone of the nation. Without education, overall development of a nation is impossible. And half of this nation is women. Thus, if women's education is not promoted, the development of half of the nation is likely to be hampered; This was realized by some educated people of that time. Babu Kamala Ranjan Roy, a well-known zamindar of the then Sarail Estate, established a primary school named Rani Sarojini Balika Vidyalaya after his mother Sarojini Devi in ​​1938. The school was first established in the southern part of the present Brahmanbaria Sadar Hospital, where there is a ward for male patients. At first this school started as a primary school with only a few students. The school was later transformed into Rani Sarojini Girls' High School in 1942 due to the rapid increase in the number of students and the dedicated efforts of the women education enthusiasts of the city. The school has become a model school under the guidance of skilled teachers. Due to the rapid growth of students, there was a shortage of space. The then Sub-Divisional Administrator Mr. Munir Hossain CSP took necessary steps to relocate the girls school and transformed the school into a modern model school. Mr. Azizur Rahman Mollah, Mr. Gazi Mia and many other rich and educated people of the city. Govt. He laid the foundation stone of the school on October 10, 1954. The school was inaugurated by Mr. N. M. Khan C, S, P, Sub-Divisional Administrator on 16th February, 1955 and the name was changed from Adarsh ​​Uchch Balika Vidyalaya to Model Girls High School. Then in 1974 the school was made government with the special help of Begum Raushan Ershad, the current student leader of the opposition and the name was changed to Govt. Model Girls High School. Many wealthy and educated people of the city including Mr. Gazi Mia. Govt. He laid the foundation stone of the school on October 10, 1954. The school was inaugurated by Mr. N. M. Khan C, S, P, Sub-Divisional Administrator on 16th February, 1955 and the name was changed from Adarsh ​​Uchch Balika Vidyalaya to Model Girls High School. Then in 1974 the school was made government with the special help of Begum Raushan Ershad, the current student leader of the opposition and the name was changed to Govt. Model Girls High School. Many wealthy and educated people of the city including Mr. Gazi Mia. Govt. He laid the foundation stone of the school on October 10, 1954. The school was inaugurated by Mr. N. M. Khan C, S, P, Sub-Divisional Administrator on 16th February, 1955 and the name was changed from Adarsh ​​Uchch Balika Vidyalaya to Model Girls High School. Then in 1974, the school became a government school with the special help of Begum Raushan Ershad, the current Leader of the Opposition. Saheb inaugurated the school and renamed it Model Girls High School after Adarsh ​​High School for Girls. Then in 1974 the school was made government with the special help of Begum Raushan Ershad, the current student leader of the opposition and the name was changed to Govt. Model Girls High School. Saheb inaugurated the school and renamed it Model Girls High School after Adarsh ​​High School for Girls. Then in 1974 the school was made government with the special help of Begum Raushan Ershad, the current student leader of the opposition and the name was changed to Govt. Model Girls High School. The construction strategy of the traditional Govt. Model Girls' High School is very diverse. To the north-west of the memorial school is a huge semi-permanent school building, to the east is a three-storey academic building. The special attraction of the school is the charming flower garden in front of the office room with a variety of colorful flowers. Large hall in the middle of the school. A variety of cultural events are held on the stage of this hallroom. There is a huge field behind the hall so that most of the sports of the district are held in this field. All in all, the school environment has become eye-catching and captivating. Since its inception, the school has been known for its excellent reputation for reading and writing as well as for its co-curricular activities. Many knowledgeable students have come out of this school and they are putting their signature of achievement in their respective fields. Model is the norm in many works of art and culture. The ideal is our main goal. With this goal in mind, to improve the quality of education, to make the learning environment more beautiful and smooth. Creating the attention of the students in the lesson, enhancing the moral character. Our educational institution is moving forward with the aim of creating and disseminating realistic science compliant learning environment with the aim of developing students as disciplined and good citizens.",
                          style: TextStyle(
                            fontSize: 20.0),
                            textAlign: TextAlign.justify,
                          )
                          )
                          
                          ),
          ],
        ),
      ),
      // ListView.builder(
      //   itemCount: deptlist.length,
      //   itemBuilder: (context, index){
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 8.00),
      //       child: ElevatedButton(onPressed: (){
      //         if (deptlist.elementAt(index).id==1) {
      //           Department bngDept=deptlist[0];
      //         Navigator.pushNamed(context, '/deptdetail',arguments: bngDept);
      //         }else if (deptlist.elementAt(index).id==2) {
      //           Department bngDept=deptlist[1];
      //           Navigator.pushNamed(context, '/deptdetail',arguments: bngDept);
      //         }
      //       },
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.green.shade300,
      //         padding: EdgeInsets.symmetric(vertical: 10.00),
      //       ), 
      //       child: Text('${deptlist.elementAt(index).name}',
      //       style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),),
            
      //       ),
      //     );
      // }),
    );
  }
}