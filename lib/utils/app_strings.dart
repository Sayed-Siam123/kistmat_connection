import 'package:flutter/services.dart';

class AppString {
  static bool isEnglish = true;

  static String LANGUAGE_CHANGE() =>
      isEnglish ? "Language change" : "Αλλαγή γλώσσας";

  static String LOGIN() => isEnglish ? "Login" : "Σύνδεση";

  static String SIGNUP() => isEnglish ? "SignUp" : "Εγγραφείτε";

  static String SIGNUP_SUCCESS() => isEnglish ? "SignUp" : "Εγγραφή";

  static String ENTER_EMAIL() =>
      isEnglish ? "Enter email" : "Εισαγάγετε email (προαιρετικό)";

  static String ENTER_PASSWORD() =>
      isEnglish ? "Enter password" : "Εισάγετε τον κωδικό πρόσβασης";

  static String LOGIN_NOW() => isEnglish ? "Login now" : "Συνδεθείτε τώρα";

  static String SIGNUP_NOW() => isEnglish ? "Signup now" : "Εγγραφείτε τώρα";

  static String ERROR() => isEnglish ? "Error" : "Λάθος";

  static String EMAIL_IS_REQUIRED() =>
      isEnglish ? "Email is required" : "Απαιτείται email";

  static String OK() => isEnglish ? "Ok" : "Εντάξει";

  static String PASSWORD_REQUIRED() =>
      isEnglish ? "password is required" : "Απαιτείται κωδικός";

  static String PASSWORD_LENGTH() => isEnglish
      ? "At least 8 character is required"
      : "Απαιτείται τουλάχιστον 8 χαρακτήρας";

  static String ACOUNT_CREATED() => isEnglish ? "Ολοκληρώθηκε" : "done";

  static String ENTER_DESCRIPTION() => isEnglish ? "Optionally" : "Προαιρετικά";

  static String PROFILE_UPDATED() =>
      isEnglish ? "Profile updated" : "Το προφιλ ενημερωθηκε";

  static String LOGOUT() => isEnglish ? "Logout" : "Αποσύνδεση";

  static String YES() => isEnglish ? "Yes" : "Ναί";

  static String NO() => isEnglish ? "No" : "Οχι";

  static String LOGOUT_DIALOG() => isEnglish
      ? "Do you really want to logout"
      : "Θέλετε πραγματικά να αποσυνδεθείτε";

  static String CAMERA() => isEnglish ? "Camera" : "Φωτογραφική μηχανή";

  static String GALLERY() => isEnglish ? "Gallery" : "Εικόνα από τα δεδομένα";

  static String DO_YOU_WANT_TO_CHANGE_LANGUAGE() => isEnglish
      ? "Do you want to change current language to English?"
      : "Voulez-vous changer la langue actuelle en anglais;";

  //////////////////////////////////////////////////////////////////////

  static YOU_ADDRESS() =>
      isEnglish ? "Your address (required)" : "Η διεύθυνσή σας (απαιτείται)";

  static String BUSSINES_NAME_REQUIRED() =>
      isEnglish ? "Business name is required" : "Απαιτείται όνομα επιχείρησης";

  static String ADDRESS_REQUIRED() =>
      isEnglish ? "Address is required" : "Απαιτείται διεύθυνση";

  static String WE_MAKE_THINGS_EASIER() => isEnglish
      ? "We make things easier for you, create an account now"
      : "Κάνουμε τα πράγματα πιο εύκολα για εσάς, δημιουργήστε έναν λογαριασμό τώρα";

  static String CLICK_TO_IMAGE_FROM_CAMER() => isEnglish
      ? "Click to capture image from camera"
      : "Κάντε κλικ για λήψη εικόνας από την κάμερα";

  static String CLICK_TO_IMAGE_FROM_GALLERY() => isEnglish
      ? "Click to take image from gallery"
      : "Κάντε κλικ για λήψη εικόνας από τη συλλογή";

  static String GET_STARTED_NOW() =>
      isEnglish ? "GET STARTED NOW" : "ΞΕΚΙΝΗΣΤΕ ΤΩΡΑ";

  static String MAP_VIEW() => isEnglish ? "Map view" : "Προβολή χάρτη";

  static String CLICK_TO_VIEW_DETAIL() => isEnglish
      ? "Click to view detail"
      : "Κάντε κλικ για να δείτε λεπτομέρειες";

  static String EXPAND() => isEnglish ? "Extension" : "Επέκταση";

  static String COLLAPSE() => isEnglish ? "Collapse" : "Κατάρρευση";

  static String N_A() => isEnglish ? "N/A" : "...";

  static String INFO() => isEnglish ? "Info" : "Πληροφορίες";

  static String PHONE_NUMBER() =>
      isEnglish ? "Phone number" : "Τηλεφωνικό νούμερο";

  static String EMAIL() => isEnglish ? "Email" : "ΗΛΕΚΤΡΟΝΙΚΗ ΔΙΕΥΘΥΝΣΗ";

  static String NATURE_OF_BUSINESS() =>
      isEnglish ? "Nature of Business" : "Η φύση της επιχείρησης σας";

  static String RESTAURANT() => isEnglish ? "Restaurant" : "Εστιατόριο";

  static String GARAGE() => isEnglish ? "Garage" : "Συνεργείο";

  static String DESCRIPTION() => isEnglish ? "Description" : "Περιγραφή";

  static String ADDRESS() => isEnglish ? "Address" : "Διεύθυνση";

  static String REQUESTS() => isEnglish ? "Requests" : "Αιτήσεων";

  static String NO_REQUESTS() => isEnglish ? "No Request" : "Χωρίς αίτημα";

  static String TOTAL_BARRELS() =>
      isEnglish ? "Total Barrels" : "Σύνολο βαρελιών";

  static String DONATION_BARRELS() =>
      isEnglish ? "Donation Barrels" : "Δωρεά από αριθμό βαρελιών";

  static String REQUEST_COMPLETED_BY_ADMIN() => isEnglish
      ? "Request completed by admin"
      : "Το αίτημα ολοκληρώθηκε από τον διαχειριστή";

  static String BARRELS_PICKED1() =>
      isEnglish ? "They were collected" : "Συλλέχθηκαν";

  static String BARRELS_PICKED2() => isEnglish ? "barrels" : "βαρέλια";

  static String CLICK_TO_PICK() =>
      isEnglish ? "Click if you have collected" : "Κάντε κλικ εάν συλλέξατε";

  static String COMPLETED() => isEnglish ? "Done" : " Ολοκληρώθηκε";

  static String PROFILE() => isEnglish ? "Profile" : "Προφίλ";

  static String EDIT() => isEnglish ? "Edit" : "Επεξεργασία";

  static String PRIVACY_POLICY() =>
      isEnglish ? "Privacy policy" : "Πολιτική απορρήτου";

  static String NOTIFICATINS() => isEnglish ? "Notifications" : "Ειδοποιήσεις";

  static String BUSSINESS() => isEnglish ? "Business" : "Επιχείρηση";

  static String DONATION_BARRELS_ERROR() => isEnglish
      ? "The donation must come from less than or equal to the total, barrels"
      : "Η δωρεά πρέπει να προέρχεται από λιγότερα ή ίσα στο σύνολο, βαρέλια";

  static String REQUEST_ADMIN() =>
      isEnglish ? "Request Admin" : "Αίτημα συλλογής";

  static String HI() => isEnglish ? "Hi" : "γειά";

  static String PLEASE_SELECT_TOTAL_BARRELS() => isEnglish
      ? "Select all your full barrels and your donation (optional) by pressing the corresponding number. At the bottom of the page there is also the possibility to add and note"
      : "Επιλέξτε το σύνολο των γεμάτων βαρελιών σας και τη δωρεά σας (προεραιτική), πατώντας τον αντίστοιχο αριθμό. Στο τέλος της σελίδας υπάρχει και η δυνατότητα να προσθέσετε και σημειώσεις";

  static String SUBMIT_REQUEST() =>
      isEnglish ? "Submit request" : "Υποβολή αιτήματος";

  static String TOTAL_BARRELS_REQUIRED() =>
      isEnglish ? "Total barrels is required" : "Απαιτούνται συνολικά βαρέλια";

  static String POST_ALREADY_POSTED() =>
      isEnglish ? "Requested already posted" : "Το αίτημα έχει ήδη δημοσιευτεί";

  static String REQUEST_SUBMITTED() =>
      isEnglish ? "Request submitted" : "Το αίτημα υποβλήθηκε";

  static String NOTES() => isEnglish ? "Notes" : "Σημειώσεις";

  static String REQUEST() => isEnglish ? "Request" : "Αίτηση";

  static String TOTAL() => isEnglish ? "Total" : "Σύνολο";

  static String DONATION() => isEnglish ? "Donation" : "Δωρεά";

  static String REQUEST_HISTORY() =>
      isEnglish ? "Request History" : "Ιστορικό αιτημάτων";

  static String PENDING() => isEnglish ? "Pending" : "Εκκρεμεί";

  static String REQUEST_MAP() => isEnglish ? "Request Map" : "Αίτηση χάρτη";

  static String HISTORT() => isEnglish ? "History" : "Ιστορία";

  static String CODE_IS_REQUIRED() =>
      isEnglish ? "Code is required" : "Απαιτείται κωδικός";

  static String PHONE_NUMBER_IS_EMPTY() =>
      isEnglish ? "Phone number is empty" : "Ο αριθμός τηλεφώνου είναι άδειος";

  static String LOGIN_SIGNUP() =>
      isEnglish ? "Login/Signup" : "Σύνδεση εγγραφή";

  static String ENTER_YOUR_MOBILE_NUMBER() =>
      isEnglish ? "Enter your\nmobile number" : "Εισάγετε\nmobile number";

  static String LOGIN_DESCRIPTION() => isEnglish
      ? "Please enter your number to get started.\nAccess app features"
      : "Εισαγάγετε τον αριθμό σας για να ξεκινήσετε.\nΠρόσβαση στις λειτουργίες της εφαρμογής";

  static String LOGIN_AS_ADMIN() =>
      isEnglish ? "Login as admin" : "Συνδεθείτε ως διαχειριστής";

  static String LOGIN_SIGNUP_WITH_NUMBER() => isEnglish
      ? "Login/Signup with phone number"
      : "Σύνδεση / Εγγραφή με αριθμό τηλεφώνου";

  static String VERIFICATION_CODE() =>
      isEnglish ? "Verification code" : "Κωδικός επαλήθευσης";

  static String CHECK_MOBILE_ENTER_PHONE() => isEnglish
      ? "Check your mobile.\nEnter your mobile verification code"
      : "Ελέγξτε το κινητό σας.\nΕισαγάγετε τον κωδικό επαλήθευσης του κινητού σας";

  static String CHANGE_PHONE_NUMBER() =>
      isEnglish ? "Change Phone Number ?" : "Αλλαγή αριθμού τηλεφώνου;";

  static String BUSINESS_IMAGE() =>
      isEnglish ? "Bussiness image" : "Εικόνα προφίλ";

  static String ENTER_BUSINESS_NAME_REQUIRED() => isEnglish
      ? "Enter bussiness name (required)"
      : "Εισαγάγετε όνομα επιχείρησης (απαιτείται)";

  static String UPDATE_PROFILE() =>
      isEnglish ? "Update profile" : "Ανανέωση προφίλ";

  static String UPDATE_NOW() =>
      isEnglish ? "Update profile" : "Ανανέωση προφίλ";

  static String DONATION_BARRELS_UPDATED() => isEnglish ? "Donation" : "Δωρεά";

  static String MONTHLY_CALCULATION() => isEnglish ? "Monthwise" : "Μηνιαία";

  static String TAP_TO_CLOSE() =>
      isEnglish ? 'Tap back again to leave' : "«Πατήστε ξανά για να φύγετε";

  static String CHANGE_PASSWORD() =>
      isEnglish ? "Change password" : "Αλλαξε κωδικό";

  static String UPDATE_PASSWORD() =>
      isEnglish ? "Update password" : "Ενημέρωση κωδικού πρόσβασης";

  static String PASSWORD_UPDATED() =>
      isEnglish ? "Password updated" : "Ο κωδικός πρόσβασης ενημερώθηκε";

  static String OLD_PASWORD() => isEnglish ? "Old password" : "Παλιός κωδικός";

  static String NEW_PASWORD() => isEnglish ? "New password" : "Νέος κωδικός";
}
