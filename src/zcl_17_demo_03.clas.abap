CLASS zcl_17_demo_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_demo_03 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  DATA word1 TYPE string VALUE 'Hello'.
  DATA word2 TYPE string VALUE 'World'.

  DATA date TYPE d VALUE '20030508'.

 out->write( |{ word1 } { word2 }| ). "Zeichenketten-template
 out->write( |Datum: { date DATE = ISO }| ). " Anstatt iso geht auch USER

  ENDMETHOD.
ENDCLASS.
