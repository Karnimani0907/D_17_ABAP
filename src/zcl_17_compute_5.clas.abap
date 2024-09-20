CLASS zcl_17_compute_5 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_compute_5 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Declarations
    " -------------------------

    DATA number1 TYPE i.
    DATA number2 TYPE i.

    DATA result  TYPE p LENGTH 8 DECIMALS 2.
    DATA op      TYPE c LENGTH 1 VALUE '/'.

    " Input Values
    " -------------------------

    number1 = 3.
    number2 = 9.

    " Calculation
    " -------------------------
    CASE op.
      WHEN '+'.
        result = number1 + number2.
      WHEN '-'.
        result = number1 - number2.
      WHEN '*'.
        result = number1 * number2.
      WHEN '/'.

       TRY.
        result = number1 / number2.
       CATCH CX_SY_ZERODIVIDE INTO FINAL(x).
       out->write( x->get_text( ) ).
       ENDTRY.
      WHEN OTHERS.
        result = 'Keine Ahnung'.
    ENDCASE.


*    DATA(result) = number1 / number2.

    DATA(output) = |{ number1 } { op } { number2 } = { result }|.

    " Output
    " -------------------------

    out->write( output ).
  ENDMETHOD.
ENDCLASS.
