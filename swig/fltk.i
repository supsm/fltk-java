%module(directors = "1") fltk

%{
#include "../FL/Fl.H"
#include "../FL/Fl_Adjuster.H"
#include "../FL/Fl_Anim_GIF_Image.H"
#include "../FL/fl_ask.H"
#include "../FL/fl_attr.h"
#include "../FL/Fl_Bitmap.H"
#include "../FL/Fl_BMP_Image.H"
#include "../FL/Fl_Box.H"
#include "../FL/Fl_Browser.H"
#include "../FL/Fl_Browser_.H"
#include "../FL/Fl_Button.H"
#include "../FL/fl_callback_macros.H"
#include "../FL/fl_casts.H"
#include "../FL/Fl_Chart.H"
#include "../FL/Fl_Check_Browser.H"
#include "../FL/Fl_Check_Button.H"
#include "../FL/Fl_Choice.H"
#include "../FL/Fl_Clock.H"
#include "../FL/Fl_Color_Chooser.H"
#include "../FL/Fl_Copy_Surface.H"
#include "../FL/Fl_Counter.H"
#include "../FL/Fl_Device.H"
#include "../FL/Fl_Dial.H"
#include "../FL/Fl_Double_Window.H"
#include "../FL/fl_draw.H"
#include "../FL/Fl_Export.H"
#include "../FL/Fl_File_Browser.H"
#include "../FL/Fl_File_Chooser.H"
#include "../FL/Fl_File_Icon.H"
#include "../FL/Fl_File_Input.H"
#include "../FL/Fl_Fill_Dial.H"
#include "../FL/Fl_Fill_Slider.H"
#include "../FL/Fl_Flex.H"
#include "../FL/Fl_Float_Input.H"
#include "../FL/Fl_GIF_Image.H"
#include "../FL/Fl_Gl_Window.H"
#include "../FL/Fl_Grid.H"
#include "../FL/Fl_Group.H"
#include "../FL/Fl_Help_Dialog.H"
#include "../FL/Fl_Help_View.H"
#include "../FL/Fl_Hold_Browser.H"
#include "../FL/Fl_Hor_Fill_Slider.H"
#include "../FL/Fl_Hor_Nice_Slider.H"
#include "../FL/Fl_Hor_Slider.H"
#include "../FL/Fl_Hor_Value_Slider.H"
#include "../FL/Fl_ICO_Image.H"
#include "../FL/Fl_Image.H"
#include "../FL/Fl_Image_Surface.H"
#include "../FL/Fl_Input.H"
#include "../FL/Fl_Input_.H"
#include "../FL/Fl_Input_Choice.H"
#include "../FL/Fl_Int_Input.H"
#include "../FL/Fl_JPEG_Image.H"
#include "../FL/Fl_Light_Button.H"
#include "../FL/Fl_Line_Dial.H"
#include "../FL/Fl_Menu.H"
#include "../FL/Fl_Menu_.H"
#include "../FL/Fl_Menu_Bar.H"
#include "../FL/Fl_Menu_Button.H"
#include "../FL/Fl_Menu_Item.H"
#include "../FL/Fl_Menu_Window.H"
#include "../FL/fl_message.H"
#include "../FL/Fl_Multiline_Input.H"
#include "../FL/Fl_Multiline_Output.H"
#include "../FL/Fl_Multi_Browser.H"
#include "../FL/Fl_Multi_Label.H"
#include "../FL/Fl_Native_File_Chooser.H"
#include "../FL/Fl_Nice_Slider.H"
#include "../FL/Fl_Object.H"
#include "../FL/Fl_Output.H"
#include "../FL/Fl_Overlay_Window.H"
#include "../FL/Fl_Pack.H"
#include "../FL/Fl_Paged_Device.H"
#include "../FL/Fl_PDF_File_Surface.H"
#include "../FL/Fl_Pixmap.H"
#include "../FL/Fl_Plugin.H"
#include "../FL/Fl_PNG_Image.H"
#include "../FL/Fl_PNM_Image.H"
#include "../FL/Fl_Positioner.H"
#include "../FL/Fl_Preferences.H"
#include "../FL/Fl_Progress.H"
#include "../FL/Fl_Radio_Button.H"
#include "../FL/Fl_Radio_Light_Button.H"
#include "../FL/Fl_Radio_Round_Button.H"
#include "../FL/Fl_Rect.H"
#include "../FL/Fl_Repeat_Button.H"
#include "../FL/Fl_Return_Button.H"
#include "../FL/Fl_RGB_Image.H"
#include "../FL/Fl_Roller.H"
#include "../FL/Fl_Round_Button.H"
#include "../FL/Fl_Round_Clock.H"
#include "../FL/Fl_Scheme.H"
#include "../FL/Fl_Scheme_Choice.H"
#include "../FL/Fl_Scroll.H"
#include "../FL/Fl_Scrollbar.H"
#include "../FL/Fl_Secret_Input.H"
#include "../FL/Fl_Select_Browser.H"
#include "../FL/Fl_Shared_Image.H"
#include "../FL/Fl_Shortcut_Button.H"
#include "../FL/fl_show_colormap.H"
#include "../FL/fl_show_input.H"
#include "../FL/Fl_Simple_Counter.H"
#include "../FL/Fl_Single_Window.H"
#include "../FL/Fl_Slider.H"
#include "../FL/Fl_Spinner.H"
#include "../FL/fl_string_functions.h"
#include "../FL/Fl_SVG_File_Surface.H"
#include "../FL/Fl_SVG_Image.H"
#include "../FL/Fl_Sys_Menu_Bar.H"
#include "../FL/Fl_Table.H"
#include "../FL/Fl_Table_Row.H"
#include "../FL/Fl_Tabs.H"
#include "../FL/Fl_Terminal.H"
#include "../FL/Fl_Text_Buffer.H"
#include "../FL/Fl_Text_Display.H"
#include "../FL/Fl_Text_Editor.H"
#include "../FL/Fl_Tile.H"
#include "../FL/Fl_Tiled_Image.H"
#include "../FL/Fl_Toggle_Button.H"
#include "../FL/Fl_Toggle_Light_Button.H"
#include "../FL/Fl_Toggle_Round_Button.H"
#include "../FL/Fl_Tooltip.H"
#include "../FL/Fl_Tree.H"
#include "../FL/Fl_Tree_Item.H"
#include "../FL/Fl_Tree_Item_Array.H"
#include "../FL/Fl_Tree_Prefs.H"
#include "../FL/fl_types.h"
#include "../FL/fl_utf8.h"
#include "../FL/Fl_Valuator.H"
#include "../FL/Fl_Value_Input.H"
#include "../FL/Fl_Value_Output.H"
#include "../FL/Fl_Value_Slider.H"
#include "../FL/Fl_Widget.H"
#include "../FL/Fl_Widget_Surface.H"
#include "../FL/Fl_Window.H"
#include "../FL/Fl_Wizard.H"
#include "../FL/Fl_XBM_Image.H"
#include "../FL/Fl_XPM_Image.H"
%}

%wrapper
%{
extern "C++"
{
#include <cstdint>
#include <utility>
#include <vector>

template<typename KeyT, typename ValueT>
class vector_map
{
private:
	std::vector<std::pair<KeyT, ValueT>> data;

public:
	ValueT* find(const KeyT& key)
	{
		for (auto& p : data)
		{
			if (p.first == key)
			{
				return &p.second;
			}
		}
		return nullptr;
	}
	const ValueT* find(const KeyT& key) const
	{
		for (const auto& p : data)
		{
			if (p.first == key)
			{
				return &p.second;
			}
		}
		return nullptr;
	}

	template<typename T1, typename T2>
	bool emplace(T1&& key, T2&& value)
	{
		ValueT* val = find(key);
		if (val != nullptr)
		{
			*val = std::forward<T2>(value);
			return false;
		}
		data.emplace_back(std::forward<T1>(key), std::forward<T2>(value));
		return true;
	}

	bool erase(const KeyT& key)
	{
		for (auto& p : data)
		{
			if (p.first == key)
			{
				std::swap(p, data.back());
				data.pop_back();
				return true;
			}
		}
		return false;
	}
};

class jobject_wrapper
{
private:
	bool skip_delete = false;

public:
	JNIEnv* env;
	jobject obj;
	jmethodID method;


	jobject_wrapper(JNIEnv* env, jobject obj, const char* method_name, const char* method_sig) :
		env(env), obj(env->NewGlobalRef(obj)), method(env->GetMethodID(env->GetObjectClass(obj), method_name, method_sig)) {}
	~jobject_wrapper()
	{
		cleanup();
	}

	// no copy
	jobject_wrapper(const jobject_wrapper& other) = delete;
	jobject_wrapper& operator=(const jobject_wrapper& other) = delete;

	// move
	jobject_wrapper(jobject_wrapper&& other) :
		env(other.env), obj(other.obj), method(other.method)
		{ other.skip_delete = true; }
	jobject_wrapper& operator=(jobject_wrapper&& other)
	{
		if (this != &other)
		{
			cleanup();
			env = other.env;
			obj = other.obj;
			method = other.method;
			other.skip_delete = true;
		}
		return *this;
	}

private:
	void cleanup()
	{
		if (!skip_delete)
		{
			env->DeleteGlobalRef(obj);
		}
	}
};

vector_map<Fl_Widget*, jobject_wrapper> callbacks0;
vector_map<Fl_Widget*, jobject_wrapper> callbacks1;

void callback0_wrapper(Fl_Widget* w)
{
	auto* ptr = callbacks0.find(w);
	if (ptr != nullptr)
	{
		jclass fl_widget_jclass = ptr->env->FindClass("org/fltk/Fl_Widget");
		jobject fl_widget_obj = ptr->env->NewObject(fl_widget_jclass, ptr->env->GetMethodID(fl_widget_jclass, "<init>", "(JZ)V"),
			reinterpret_cast<jlong>(w), static_cast<jboolean>(false));
		// TODO: GetMethodID here instead of storing it?
		ptr->env->CallVoidMethod(ptr->obj, ptr->method, fl_widget_obj);
	}
}
void callback1_wrapper(Fl_Widget* w, long l)
{
	auto* ptr = callbacks1.find(w);
	if (ptr != nullptr)
	{
		ptr->env->CallVoidMethod(ptr->obj, ptr->method, reinterpret_cast<jlong>(w), static_cast<jlong>(l));
	}
}


// TODO: register_callback with jobject as user_data (can use global ref and be cast to void*, but deleting ref may be tricky)
bool register_callback0(JNIEnv* env, Fl_Widget* w, jobject callback)
{
	w->callback(callback0_wrapper);
	return callbacks0.emplace(w, jobject_wrapper(env, callback, "handle", "(Lorg/fltk/Fl_Widget;)V"));
}
bool register_callback1(JNIEnv* env, Fl_Widget* w, jobject callback)
{
	w->callback(callback1_wrapper);
	return callbacks1.emplace(w, jobject_wrapper(env, callback, "handle", "(Lorg/fltk/Fl_Widget;I)V"));
}
bool register_callback1(JNIEnv* env, Fl_Widget* w, jobject callback, long user_data)
{
	w->callback(callback1_wrapper, user_data);
	return callbacks1.emplace(w, jobject_wrapper(env, callback, "handle", "(Lorg/fltk/Fl_Widget;I)V"));
}

bool unregister_callback0(Fl_Widget* w)
{
	return callbacks0.erase(w);
}
bool unregister_callback1(Fl_Widget* w)
{
	return callbacks1.erase(w);
}
bool unregister_callback_any(Fl_Widget* w)
{
	// rely on short circuit evaluation
	return (unregister_callback0(w) || unregister_callback1(w));
}
} // extern C++

JNIEXPORT jboolean JNICALL Java_org_fltk_fltkJNI_register_1callback0(JNIEnv* env, jclass, jlong w_ptr, jobject w_obj, jobject cb_obj)
{
	Fl_Widget* w = reinterpret_cast<Fl_Widget*>(w_ptr);
	bool res = register_callback0(env, w, cb_obj);
	return static_cast<jboolean>(res);
}
JNIEXPORT jboolean JNICALL Java_org_fltk_fltkJNI_register_1callback1_10(JNIEnv* env, jclass, jlong w_ptr, jobject w_obj, jobject cb_obj)
{
	Fl_Widget* w = reinterpret_cast<Fl_Widget*>(w_ptr);
	bool res = register_callback1(env, w, cb_obj);
	return static_cast<jboolean>(res);
}
JNIEXPORT jboolean JNICALL Java_org_fltk_fltkJNI_register_1callback1_11(JNIEnv* env, jclass, jlong w_ptr, jobject w_obj, jobject cb_obj, jlong user_data)
{
	Fl_Widget* w = reinterpret_cast<Fl_Widget*>(w_ptr);
	bool res = register_callback1(env, w, cb_obj, static_cast<long>(user_data));
	return static_cast<jboolean>(res);
}
%}

%pragma(java) jniclasscode =
%{
public final static native boolean register_callback0(long jarg1, Fl_Widget jarg1_, Fl_Callback0_Base jarg2);
public final static native boolean register_callback1_0(long jarg1, Fl_Widget jarg1_, Fl_Callback1_Base jarg2);
public final static native boolean register_callback1_1(long jarg1, Fl_Widget jarg1_, Fl_Callback1_Base jarg2, long user_data);
%}
%pragma(java) modulecode =
%{
public static boolean register_callback(Fl_Widget arg0, Fl_Callback0_Base arg1)
{
	return fltkJNI.register_callback0(Fl_Widget.getCPtr(arg0), arg0, arg1);
}
public static boolean register_callback(Fl_Widget arg0, Fl_Callback1_Base arg1)
{
	return fltkJNI.register_callback1_0(Fl_Widget.getCPtr(arg0), arg0, arg1);
}
public static boolean register_callback(Fl_Widget arg0, Fl_Callback1_Base arg1, long user_data)
{
	return fltkJNI.register_callback1_1(Fl_Widget.getCPtr(arg0), arg0, arg1, user_data);
}
%}

%header
%{
#define stat struct stat
%}

//%feature("director"); // allow all fltk classes to be extended. remove if performance is a concern (DOESNT WORK)

%typemap(javafinalize) SWIGTYPE "" // no finalize() method for any types (do not destruct on garbage collect, but it's probably going to be removed anyways)


// TODO: is it possible to not generate an interface proxy class at all?
%define %interface(CTYPE...)
%rename("%sSwigImpl") CTYPE;
%feature("interface", name="%(rstrip:[SwigImpl])s") CTYPE;
%enddef

%interface(Fl_Callback0_Base);
%interface(Fl_Callback1_Base);

%ignore *::callback;

%ignore *::vprintf;

%ignore Fl_Native_File_Chooser_FLTK_Driver;
%ignore Fl_Group::forms_end;

%ignore Fl_GIF_Image::on_frame_data;
%ignore Fl_GIF_Image::on_extension_data;

%rename(type_Table_Row) Fl_Table_Row::type() const;
%extend Fl_Table_Row { %proxycode %{ public short type() { throw new UnsupportedOperationException("Use type_Table_Row() instead"); } %} }
%rename(value_Shortcut_Button) Fl_Shortcut_Button::value();
%extend Fl_Shortcut_Button { %proxycode %{ public char value() { throw new UnsupportedOperationException("Use value_Shortcut_Button() instead"); } %} }
%rename(changed_Input_Choice) Fl_Input_Choice::changed() const;
%extend Fl_Input_Choice { %proxycode %{ public long changed() { throw new UnsupportedOperationException("Use changed_Input_Choice() instead"); } %} }
%rename(remove_Check_Browser) Fl_Check_Browser::remove(int);
%extend Fl_Check_Browser { %proxycode %{ public void remove(int i) { throw new UnsupportedOperationException("Use remove_Check_Browser(int) instead"); } %} }
%rename(test_shortcut_Menu_) Fl_Menu_::test_shortcut();
%extend Fl_Menu_ { %proxycode %{ public int test_shortcut() { throw new UnsupportedOperationException("Use test_shortcut_Menu_() instead"); } %} }
%rename(value_Scrollbar) Fl_Scrollbar::value() const;
%extend Fl_Scrollbar { %proxycode %{ public double value() { throw new UnsupportedOperationException("Use value_Scrollbar() instead"); } %} }

%ignore Fl_Input_::position;

%rename(wait_) Fl::wait;

%immutable Fl_Browser_::scrollbar;
%immutable Fl_Browser_::hscrollbar;
%immutable Fl_Scroll::scrollbar;
%immutable Fl_Scroll::hscrollbar;
%immutable Fl_Value_Input::input;


%inline
%{
struct Fl_Callback0_Base
{
	virtual void handle(Fl_Widget* w) = 0;
	virtual ~Fl_Callback0_Base() {}
};
struct Fl_Callback1_Base
{
	virtual void handle(Fl_Widget* w, long user_data) = 0;
	virtual ~Fl_Callback1_Base() {}
};

bool unregister_callback0(Fl_Widget*);
bool unregister_callback1(Fl_Widget*);
bool unregister_callback_any(Fl_Widget*);
%}

%include "../FL/fl_attr.h"
%include "../FL/fl_types.h"
%include "../FL/Fl_Export.H"
%include "../FL/platform_types.h"
%include "../FL/fl_casts.H"
%include "../FL/fl_utf8.h"
%include "../FL/Enumerations.H"
%include "../FL/Fl.H"
%include "../FL/Fl_Widget.H"
%include "../FL/Fl_Valuator.H"
%include "../FL/Fl_Image.H"
%include "../FL/Fl_Pixmap.H"
%include "../FL/Fl_GIF_Image.H"
%include "../FL/Fl_Group.H"
%include "../FL/Fl_Slider.H"
%include "../FL/Fl_Scrollbar.H"
%include "../FL/Fl_Browser_.H"
%include "../FL/Fl_Button.H"
%include "../FL/Fl_Light_Button.H"
%include "../FL/Fl_Multi_Label.H"
%include "../FL/Fl_Menu_Item.H"
%include "../FL/Fl_Menu_.H"
%include "../FL/Fl_Choice.H"
%include "../FL/Fl_Input_.H"
%include "../FL/Fl_Input.H"
%include "../FL/Fl_Value_Input.H"
%include "../FL/Fl_Box.H"
%include "../FL/Fl_Return_Button.H"
%include "../FL/Fl_Preferences.H"
%include "../FL/Fl_Plugin.H"
%include "../FL/Fl_Device.H"
%include "../FL/Fl_Bitmap.H"
%include "../FL/Fl_Window.H"
%include "../FL/Fl_Widget_Surface.H"
%include "../FL/Fl_Rect.H"
%include "../FL/Fl_Value_Slider.H"
%include "../FL/Fl_Single_Window.H"
%include "../FL/Fl_Output.H"
%include "../FL/Fl_Round_Button.H"

%include "../FL/Fl_Adjuster.H"
%include "../FL/Fl_Anim_GIF_Image.H"
%include "../FL/fl_ask.H"
%include "../FL/Fl_BMP_Image.H"
%include "../FL/Fl_Browser.H"
%include "../FL/fl_callback_macros.H"
%include "../FL/Fl_Chart.H"
%include "../FL/Fl_Check_Browser.H"
%include "../FL/Fl_Check_Button.H"
%include "../FL/Fl_Clock.H"
%include "../FL/Fl_Color_Chooser.H"
%include "../FL/Fl_Copy_Surface.H"
%include "../FL/Fl_Counter.H"
%include "../FL/Fl_Dial.H"
%include "../FL/Fl_Double_Window.H"
%include "../FL/fl_draw.H"
%include "../FL/Fl_File_Browser.H"
%include "../FL/Fl_File_Chooser.H"
%include "../FL/Fl_File_Icon.H"
%include "../FL/Fl_File_Input.H"
%include "../FL/Fl_Fill_Dial.H"
%include "../FL/Fl_Fill_Slider.H"
%include "../FL/Fl_Flex.H"
%include "../FL/Fl_Float_Input.H"
%include "../FL/Fl_Gl_Window.H"
%include "../FL/Fl_Grid.H"
%include "../FL/Fl_Help_Dialog.H"
%include "../FL/Fl_Help_View.H"
%include "../FL/Fl_Hold_Browser.H"
%include "../FL/Fl_Hor_Fill_Slider.H"
%include "../FL/Fl_Hor_Nice_Slider.H"
%include "../FL/Fl_Hor_Slider.H"
%include "../FL/Fl_Hor_Value_Slider.H"
%include "../FL/Fl_ICO_Image.H"
%include "../FL/Fl_Image_Surface.H"
%include "../FL/Fl_Input_Choice.H"
%include "../FL/Fl_Int_Input.H"
%include "../FL/Fl_JPEG_Image.H"
%include "../FL/Fl_Line_Dial.H"
%include "../FL/Fl_Menu.H"
%include "../FL/Fl_Menu_Bar.H"
%include "../FL/Fl_Menu_Button.H"
%include "../FL/Fl_Menu_Window.H"
%include "../FL/fl_message.H"
%include "../FL/Fl_Multiline_Input.H"
%include "../FL/Fl_Multiline_Output.H"
%include "../FL/Fl_Multi_Browser.H"
%include "../FL/Fl_Native_File_Chooser.H"
%include "../FL/Fl_Nice_Slider.H"
%include "../FL/Fl_Object.H"
%include "../FL/Fl_Overlay_Window.H"
%include "../FL/Fl_Pack.H"
%include "../FL/Fl_Paged_Device.H"
%include "../FL/Fl_PDF_File_Surface.H"
%include "../FL/Fl_PNG_Image.H"
%include "../FL/Fl_PNM_Image.H"
%include "../FL/Fl_Positioner.H"
%include "../FL/Fl_Progress.H"
%include "../FL/Fl_Radio_Button.H"
%include "../FL/Fl_Radio_Light_Button.H"
%include "../FL/Fl_Radio_Round_Button.H"
%include "../FL/Fl_Repeat_Button.H"
%include "../FL/Fl_RGB_Image.H"
%include "../FL/Fl_Roller.H"
%include "../FL/Fl_Round_Clock.H"
%include "../FL/Fl_Scheme.H"
%include "../FL/Fl_Scheme_Choice.H"
%include "../FL/Fl_Scroll.H"
%include "../FL/Fl_Secret_Input.H"
%include "../FL/Fl_Select_Browser.H"
%include "../FL/Fl_Shared_Image.H"
%include "../FL/Fl_Shortcut_Button.H"
%include "../FL/fl_show_colormap.H"
%include "../FL/fl_show_input.H"
%include "../FL/Fl_Simple_Counter.H"
%include "../FL/Fl_Spinner.H"
%include "../FL/fl_string_functions.h"
%include "../FL/Fl_SVG_File_Surface.H"
%include "../FL/Fl_SVG_Image.H"
%include "../FL/Fl_Sys_Menu_Bar.H"
%include "../FL/Fl_Table.H"
%include "../FL/Fl_Table_Row.H"
%include "../FL/Fl_Tabs.H"
%include "../FL/Fl_Terminal.H"
%include "../FL/Fl_Text_Buffer.H"
%include "../FL/Fl_Text_Display.H"
%include "../FL/Fl_Text_Editor.H"
%include "../FL/Fl_Tile.H"
%include "../FL/Fl_Tiled_Image.H"
%include "../FL/Fl_Toggle_Button.H"
%include "../FL/Fl_Toggle_Light_Button.H"
%include "../FL/Fl_Toggle_Round_Button.H"
%include "../FL/Fl_Tooltip.H"
%include "../FL/Fl_Tree.H"
%include "../FL/Fl_Tree_Item.H"
%include "../FL/Fl_Tree_Item_Array.H"
%include "../FL/Fl_Tree_Prefs.H"
%include "../FL/Fl_Value_Output.H"
%include "../FL/Fl_Wizard.H"
%include "../FL/Fl_XBM_Image.H"
%include "../FL/Fl_XPM_Image.H"
