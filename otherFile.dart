import "dart:io";

void intro(){
  print("\nWhich Type Of Doctor Are You Looking For?");
print('''\nPress 0: For Rountine Checkup
Press 1: For Urologist
Press 2: For Cardiologist
Press 3: For Dermatologist
Press 4: For Orthopedist
Press 5: For Neurologist ''');
}

String dateTime(){
DateTime now = DateTime.now();
int hours = now.hour;

if(hours<12) return "Good Morning";
else if(hours>=12 && hours<17) return "Good Afternoon";
else if(hours >= 17 && hours <20) return "Good Evening";
else return "Good Night";
}


class Patient{
  String? name;
  int? age;
  String? gender;
  String? contact;
  String? day;


  void data(){
    print("\nEnter Your Name:");
    name = stdin.readLineSync()!;

    print("Enter Your Age:");
    age = int.parse(stdin.readLineSync()!);

    print("Enter Your Gender:");
    gender = stdin.readLineSync()!;

    print("Enter Contact No:");
    contact = stdin.readLineSync()!;

    print("Enter The Appointment Day:");
    day = stdin.readLineSync()!;


  }
}

class Doctor extends  Patient{
  List<List<List<dynamic>>> faculty = [
  [
    ["Aamna Nazish", "Mon - Wed", "9:00am", "11:00am",2500],
    ["Asma Khan", "Thurs - Fri", "7:00pm", "9:00pm",3500], // Routine Checkup
    ["Aftab Ahmed", "Sat - Sun", "5:00pm", "7:00pm",2500]
  ],
  [
    ["Farhat Abbas", "Mon - Tues", "4:00pm", "6:00pm",4500], // Urologist
    ["Muhammad Nazim", "Wed & Fri", "7:00pm", "9:00pm",4500]
  ],
  [
    ["Abdul Baqi", "Mon & Wed", "1:00pm", "2:00pm",7500],
    ["Abid Hussain", "Sat & Sun", "9:00am", "11:00am",9000], // Cardiologist
    ["Farhala Baloch", "Tues & Thurs", "5:00pm", "6:00pm",8500]
  ],
  [
    ["Muhammad Rizwan", "Mon &  Fr", "4:00pm", "6:00pm",5000], // Dermatologist
    ["Ayesha Hina", "Thurs & Sat", "5:00pm", ":700pm",4500]
  ],
  [
    ["Akbar Jaleel", "Sat - Sun", "9:00am", "10:00pm",3500], // Orthopedist
    ["Haroon Rasheed", "Mon - Wed", "6:00pm", "8:00pm",4000]
  ],
  [
    ["Ayesha Kamran", "Mon & Thurs", "4:00pm", "6:00pm",6000], // Neurologist
    ["Aziz Sonawalla", "Tues & Sun", "10:00am", "12:00pm",5500]
  ]
];


List<String> specializations = [
    "Routine Checkup",
    "Urologist",
    "Cardiologist",
    "Dermatologist",
    "Orthopedist",
    "Neurologist"
  ];
  

   void doctorDisplay(int specialist){
    print("Here are our ${specializations[specialist]} specialists:");
    print("======================================\n");

    for(int i=0; i< faculty[specialist].length; i++){
      
      print("Id:$i Dr. ${faculty[specialist][i][0]}");
    }
  }
  }

  class Schedule extends Doctor{
    void schedule(int specialist, int id){
        print("\nSchedule:");
        
        print("Doctor Name:\t\t\t\t Day\t\t\tFrom\t\t\tTo");
        print("=====================================================================================================\n");
        print("Dr. ${faculty[specialist][id][0]}\t\t\t ${faculty[specialist][id][1]}\t\t${faculty[specialist][id][2]}\t\t\t${faculty[specialist][id][3]}") ;       
      }
    }

    class Appointment extends Doctor{
    void bill(int specialist, int id){
      print("\nPatient Information:");
      print("=====================\n");
      print("Name: $name");
      print("Age: $age");
      print("Contact No: $contact");

      print("\nAppointment Information:");
      print("==========================\n");
      print("Doctor: Dr. ${faculty[specialist][id][0]}");
      print("Speciality: ${specializations[specialist]}");
      print("Day : $day");
      print("Timing: ${faculty[specialist][id][2]} - ${faculty[specialist][id][3]} ");

      print("\nAmount To Pay:\n");
      print("==========================");
      print("Bill: PKR: ${faculty[specialist][id][4]}");
      print("==========================");


    }
    
    }
  

