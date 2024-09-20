CLASS zcl_17_demo_02 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_17_demo_02 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA result TYPE p LENGTH 16 DECIMALS 10.

    result = 5 + 3.
    out->write( result ).
    result = 5 - 3.
    out->write( result ).
    result = 5 * 3.
    out->write( result ).
    result = 5 / 3. " Bei type i => kommt 2 raus weil durch die inplizite typumwandlung afu 2 gerundet wird weil 1.66666 ist näher an 2
    out->write( result ).
     result = 5 DIV 3. " Ganzzahliger Quotient
    out->write( result ).
    result = 5 MOD 3. "mod => Modularer Operator
    out->write( result ).


    result = abs( -4 ).
    out->write( result ).

    result = round( val = '55.875'
                    dec = 2 ).
    out->write( result ).
    "Inkrementieren / Dekrementieren

    CLEAR result.
    result = result + 1.
    result += 1.
    out->write( result ).


  ENDMETHOD.
ENDCLASS.
