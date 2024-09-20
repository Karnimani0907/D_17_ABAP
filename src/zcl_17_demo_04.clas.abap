CLASS zcl_17_demo_04 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_demo_04 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data flight_date type /dmo/flight_date value '20230917'.
  data carrier_id type /dmo/carrier_id value 'LH'.

  "Logische Operatoren: AND, OR, NOT
  "Vergleichsoperatoren: <, <=, >, >=, =, <>
  if ( flight_date >= '20240101' and flight_date < '20250101' ) or carrier_id <> 'AA'. " Das logisches UND bindet stärker

  out->write( 'IF 1 erfüllt' ).

  ELSE.
  out->write( 'IF 2 erfüllt' ).
  endif.

  IF flight_date BETWEEN '20240101' AND '20251231'.
      out->write( 'IF 2 erfüllt' ).
    ENDIF.

    carrier_id = ' '.
    IF carrier_id IS INITIAL. " carrier_id = ''. initalwert
      out->write( 'IF 3 erfüllt' ).
    ENDIF.
     carrier_id = 'lH'.
    CASE carrier_id.
      WHEN 'lh' OR 'lH' OR 'Lh' OR 'LH'.
        out->write( 'Lufthansa' ).
      WHEN 'aa' OR 'Aa' OR 'aA' OR 'AA'.
        out->write( 'American Airlines' ).
      WHEN OTHERS.
        out->write( carrier_id ).
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
