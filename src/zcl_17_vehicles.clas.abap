CLASS zcl_17_vehicles DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_vehicles IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA vehicle  TYPE REF TO lcl_vehicle. " Vehicle vehicle;
    DATA vehicles TYPE TABLE OF REF TO lcl_vehicle.                       " List<Vehicle> vehicles = new ArrayList<>();

    vehicle = NEW #( ). " vehicle = new Vehicle();
    vehicle->make         = 'Porsche'.
    vehicle->model        = '911'.
    vehicle->speed_in_kmh = 50.
    APPEND vehicle TO vehicles.

    vehicle = NEW #( ). "Inferenz:
    vehicle->make         = 'Audi'.
    vehicle->model        = 'A4'.
    vehicle->speed_in_kmh = 100.
    APPEND vehicle TO vehicles.

    vehicle = NEW #( ).
    vehicle->make         = 'Opel'.
    vehicle->model        = 'Zafira Life'.
    vehicle->speed_in_kmh = 180.
    APPEND vehicle TO vehicles.

    LOOP AT vehicles INTO vehicle.
      out->write( vehicle->make ).
    ENDLOOP.


    vehicles[ 1 ]->accelerate( 50 ).
    vehicles[ 2 ]->brake( 150 ).

    out->write( vehicles ).

  ENDMETHOD.
ENDCLASS.
