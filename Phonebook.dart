void main() {
  List<Contacts> new_Contacts = <Contacts>[];
  Phonebook new_Phonebook = Phonebook(new_Contacts);

  //Populate the Phonebook with 5 contacts and Display
  new_Contacts.add(Contacts('Lalisa', 'Manoban', 19970327, 'Thailand'));
  new_Contacts.add(Contacts('Jisoo', 'Kim', 19950103, 'Gunpo'));
  new_Contacts.add(Contacts('Jennie', 'Kim', 19960116, 'Gangnam'));
  new_Contacts.add(Contacts('Roseanne', 'Park', 19970211, 'Australia'));
  new_Contacts.add(Contacts('Seungcheol', 'Choi', 19950808, 'Daegu'));
  print('\n***** PHONEBOOK *****');
  new_Phonebook.display();

  //Add a Contact and Display
  print('\n***** PHONEBOOK *****');
  new_Phonebook.addContact();
  new_Phonebook.display();

  //Remove a Contact and Display
  new_Phonebook.removeContact(19950808);
  print('\n***** PHONEBOOK *****');
  new_Phonebook.display();

  //Search and Display a Contact
  new_Phonebook.searchContact(19970406);
}

class Contacts {
  String? FirstName;
  String? LastName;
  int? PhoneNumber;
  String? Address;

  Contacts(this.FirstName, this.LastName, this.PhoneNumber, this.Address);
}

class Phonebook {
  List<Contacts> contact = <Contacts>[];

  Phonebook(this.contact);

  void addContact() {
    var new_Contact = new Contacts('Mingyu', 'Kim', 19970406, 'Anyang');
    contact.add(new_Contact);
    print('Contact Added!');
  }

  void viewContact(Contacts contact) {
    print('\n');
    print('Name: ${contact.FirstName} ${contact.LastName}');
    print('Phone Number: ${contact.PhoneNumber}');
    print('Address: ${contact.Address}');
    print('-----------------------------');
  }

  void display() {
    for (var con in this.contact) {
      viewContact(con);
    }
  }

  int findContact(int phonenum) {
    int retVal = this.contact.indexWhere((c) => c.PhoneNumber == phonenum);
    return retVal;
  }

  void removeContact(int phonenum) {
    int retVal = findContact(phonenum);
    if (retVal == -1) {
      print('\Phone Number ${phonenum} not Found');
    } else {
      this.contact.removeAt(retVal);
      print('\nPhone Number ${phonenum} has been Removed!');
    }
  }

  void searchContact(int phonenum) {
    int retVal = findContact(phonenum);
    if (retVal == -1) {
      print('\nPhone Number ${phonenum} not Found');
    } else {
      print('\nPhone Number ${phonenum}  has been Found!');
      viewContact(this.contact.elementAt(retVal));
    }
  }
}
