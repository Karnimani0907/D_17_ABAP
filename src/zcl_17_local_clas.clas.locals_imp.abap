class lcl_connection DEFINITION.

  PUBLIC SECTION.
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    CLASS-DATA conn_counter TYPE i.

    METHODS get_output
    RETURNING VALUE(r_output) TYPE string_table.

    METHODS  set_attributes
    IMPORTING
i_carrier_id TYPE /dmo/carrier_id
i_connection_id TYPE /dmo/connection_id
RAISING
cx_abap_invalid_value.


ENDCLASS.
class lcl_connection IMPLEMENTATION.



  METHOD set_attributes.
IF carrier_id IS INITIAL or connection_id  iS INITIAL.
RAISE EXCEPTION Type CX_ABAP_INVALID_VALUE.
ENDIF.
  ENDMETHOD.

  METHOD get_output.
    APPEND |------------------------------| TO r_output.
    APPEND |Carrier: { carrier_id }| TO r_output.
    APPEND |Connection: { connection_id }| TO r_output.
  ENDMETHOD.

ENDCLASS.
