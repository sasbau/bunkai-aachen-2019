CLASS zsb_cl_testing DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: do_something.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsb_cl_testing IMPLEMENTATION.
  METHOD do_something.
    DATA: lv_msg TYPE  th_popup.
    lv_msg = 'Hallo'.
    CALL FUNCTION 'TH_POPUP'
      EXPORTING
        client  = '100'     " Client
        user    = sy-uname    " User
        message = lv_msg.    " Message
  ENDMETHOD.

ENDCLASS.
