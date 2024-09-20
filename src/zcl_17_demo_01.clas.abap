CLASS zcl_17_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_demo_01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " String, Character
    " Integer, Byte, Short, Long
    " Float, Double
    " Boolean
    " Date, Time
    TYPES ty_first_name     TYPE string.                 " Bsp. 'Daniel'
    TYPES ty_last_name      TYPE c LENGTH 20.            " Bsp. 'Appenmaier'
    TYPES ty_iuser          TYPE n LENGTH 6.             " Bsp. '054906'
    TYPES ty_birth_date     TYPE d.                      " Bsp. '19820104'
    TYPES ty_birth_time     TYPE t.                      " Bsp. '043023'

    " Ganze Zahlen
    TYPES ty_number         TYPE i.                      " Bsp. -476

    " Kommazahlen
    TYPES ty_salary_in_euro TYPE p LENGTH 16 DECIMALS 2. " Bsp. '54223.34' => 29 Ziffern => ((16 * 2) -1{Plus v Minus}) - nachkommastellen

    " Boolscher Wahrheitswert
    TYPES ty_error_flag     TYPE c LENGTH 1.             " Bsp.'X' oder 'Nix'

    " Dekleration und Initialisierung/Wertzuweisung => Mann muss nicht Initialisieren

    " DATA(birth_date) = '20030508'. " Da werden keine leerzeichen gebraucht

    CONSTANTS pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.

    "-----
    " Deklaration und Wertzuweisung
    "-----
    DATA first_name TYPE string.
    DATA last_name  TYPE ty_last_name.
    DATA birth_city TYPE /dmo/city.
    DATA iuser      TYPE ty_iuser VALUE '054906'. " Wert wird direkt mit zugewiesen
    DATA number     TYPE ty_number.

    first_name = 'Daniel'.
    last_name = 'Appenmaier'.
    birth_city = 'Weingarten'.
    number = '863'.

    FINAL(birth_date) = '19820104'.



    CLEAR iuser.

    out->write( first_name ).
    out->write( last_name ).
    out->write( iuser ).
    out->write( number ).
    out->write( birth_date ).
    out->write( birth_city ).
    out->write( pi ).
  ENDMETHOD.
ENDCLASS.
