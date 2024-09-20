CLASS zcl_17_local_clas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_local_clas IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA connections      TYPE REF TO lcl_connection.
    DATA connection_table TYPE TABLE OF REF TO lcl_connection.

    connections = NEW lcl_connection( ).

    TRY.
        connections->set_attributes( i_carrier_id    = 'AA'
                                     i_connection_id = 0017 ).

        APPEND connections TO connection_table.
      CATCH cx_abap_invalid_value.
        out->write( 'Method call failed' ).
    ENDTRY.
    connections->conn_counter = 2.
    APPEND connections TO connection_table.

    connections = NEW #( ).

    connections->carrier_id    = 'AA'.
    connections->connection_id = 0600.
    connections->conn_counter  = 3.
    APPEND connections TO connection_table.

    connections = NEW #( ).

    connections->carrier_id    = 'LG'.
    connections->connection_id = 0500.
    connections->conn_counter  = 4.
    APPEND connections TO connection_table.

    LOOP AT connection_table INTO connections.
      out->write( connections->get_output( ) ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
