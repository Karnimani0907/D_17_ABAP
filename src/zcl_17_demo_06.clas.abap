CLASS zcl_17_demo_06 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_demo_06 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Deklaration einer 'Liste'

    DATA numbers TYPE TABLE OF i. " List<Integer> numbers = new ArrayList<>();

    " Einfügen von Datensätzen
    numbers = VALUE #( ( 6 ) ( 7 ) ( 254 ) ).

    APPEND 42 TO numbers.
    APPEND -3 TO numbers.
    APPEND 7 TO numbers.
    APPEND 7 TO numbers.
    APPEND 12 TO numbers.
    APPEND 9 TO numbers.
    APPEND -5 TO numbers.

    " Lesen von Datensätzen
    TRY.
        out->write( |Zeile 3: { numbers[ 3 ] } | ). "Index basiert
      CATCH cx_sy_itab_line_not_found INTO DATA(x).
      out->write( x->get_text(  ) ).
    ENDTRY.

     " Länge
    out->write( |Länge der Liste: { lines( numbers ) }| ).


    " Ausgabe
    out->write( numbers ).
  ENDMETHOD.
ENDCLASS.
