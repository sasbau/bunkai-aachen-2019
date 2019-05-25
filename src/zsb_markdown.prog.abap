*&---------------------------------------------------------------------*
*& Report zsb_markdown
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsb_markdown.

data(lo_markdown) = NEW ZMARKDOWN( ).
lo_markdown->set_breaks_enabled( abap_true ).

DATA(lv_markdown1) = |# abapGit bunkai Aachen\n| &
 |-------------------------\n| &
 |'This is the repository for the abapGit bunkai community event taking place in Aachen on 25th May 2019.\n| &
 |\n| &
 |What to do?\n| &
 |\n| &
 |Fork this repo\n| &
 |* Create reports, classes etc. using [abap-markdown](https://github.com/koemaeda/abap-markdown)\n| &
 |* Create pull request\n| &
 |* We'll merge everything what's created during this event\n| &
 |\n|.


DATA(lv_string) = lo_markdown->text( lv_markdown1 ).


cl_demo_output=>display_html( lv_string ).
