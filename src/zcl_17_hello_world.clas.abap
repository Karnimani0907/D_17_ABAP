CLASS zcl_17_hello_world DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_hello_world IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello World 2' ). " Ausgabe => richtige leerzeichen setzen, leerzeichen vor und nachdem STRING => Zeichenkette"
  ENDMETHOD.
ENDCLASS.
