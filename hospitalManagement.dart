import "dart:io";
import "otherFile.dart";


void main(){
Doctor doc = Doctor();
Schedule sch = Schedule();
Patient patient = Patient();
Appointment app = Appointment();


print("\n${dateTime()}!\t\t\t\t\t\t\t\t\t\t\t ${DateTime.now()}");
print("\n\t\t\t\t\tWelcome To AIM Health Care\n");

print("\nWhich Type Of Doctor Are You Looking For?");
print('''\nPress 0: For Rountine Checkup
Press 1: For Urologist
Press 2: For Cardiologist
Press 3: For Dermatologist
Press 4: For Orthopedist
Press 5: For Neurologist ''');

int specialist = int.parse(stdin.readLineSync()!);
print("\n");
doc.doctorDisplay(specialist);

print("\nEnter the Id of the doctor you want the appointment:");
print("====================================================\n");
int id = int.parse(stdin.readLineSync()!);

sch.schedule(specialist, id);

print("\n\nDo you want to confirm your appointment: (Y/N)");
String choice = stdin.readLineSync()!;

 if (choice.toUpperCase() == "Y") {
    patient.data();

    app.name = patient.name;
    app.age = patient.age;
    app.contact = patient.contact;
    app.day = patient.day;

    app.bill(specialist, id);

    print("\nYour Appointment Has Been Confirmed...\n");
  }

else {
  print("Thank You For Visiting AIM Health Care");
}
}