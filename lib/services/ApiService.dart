import 'package:flutter/material.dart';

class ApiService{
 List<String> questionaire(){
   List<String> questions = ['Does your swine have a high temperature/fever?',
    'If your swine have a high fever, did you moved it to the other pens?',
    'Does your swine lose appetite or not eating?',
    'Does your swine looks sleepy or weak and always lie down?',
    'Does your swine experiencing weakness or cannot stand up?',
    'Does your swine vomit after eating?',
    'Is there any different color in the food that the swine vomits?',
    'Does your swine experiencing Diarrhea?',
    'If your swine is having Diarrhea, did you gave it any first aid like Vitamins?',
    'Does your swine has bluish-purple area or hemorrhages on ears, abdomen or hind legs?',
    'Does your swine experiencing reddening of the skin on the chest, abdomen, tail or legs?',
    'Did you noticed something like pimples on your swine’s ears and snout?',
    'Does your swine have red/blotchy skin lesions?',
    'Does your swine having difficulty/labored breathing?',
    'Is your swine coughing?',
    'Did you noticed some ocular or nasal discharge on your swine?',
    'Does your swine discharge a bloody froth from the nose/mouth?',
    'Does the area around your swine’s tail is soiled with bloody feces?',
    'Do you have a sow that experienced miscarriage or abortion while it’s pregnant?',
    ' If you noticed any of the symptoms above, did you transferred the swine to the other pens to isolate it from the other swines?'];
   return questions;
 }
}