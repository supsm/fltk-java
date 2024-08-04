#ifndef FL_swig_callback_helpers_H
#define FL_swig_callback_helpers_H

#ifndef Fl_Widget_H
#include "Fl_Widget.H"
#endif

void callback0_wrapper(Fl_Widget*);
void callback1_wrapper(Fl_Widget*, long);

bool unregister_callback0(Fl_Widget*);
bool unregister_callback1(Fl_Widget*);
bool unregister_callback_any(Fl_Widget*);

#endif
