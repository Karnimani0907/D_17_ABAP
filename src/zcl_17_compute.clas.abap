CLASS zcl_17_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_compute IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA number1 type i value -12.
  DATA number2 type i value 3.
  DATA result TYPE p LENGTH 16 DECIMALS 10.

  result = number1 / number2.
  DATA output TYPE string.
  output =  |{ number1 } / { number2 } = { result }| .
  out->write( output ).
  ENDMETHOD.
ENDCLASS.
