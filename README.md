# README - Fast Light Tool Kit Java Bindings Version 1.4.0
Provides Java Native Interface (JNI) bindings for [fltk](https://github.com/fltk/fltk), generated with [swig](https://www.swig.org).

![Build](https://github.com/supsm/fltk-java/actions/workflows/build.yml/badge.svg)

## WHAT IS FLTK?

    The Fast Light Tool Kit is a cross-platform C++ GUI toolkit for
    UNIX®/Linux® (X11 or Wayland), Microsoft® Windows®, and macOS®.
    FLTK provides modern GUI functionality without the bloat and
    supports 3D graphics via OpenGL® and its built-in GLUT
    emulation. It was originally developed by Mr. Bill Spitzak
    and is currently maintained by a small group of developers
    across the world with a central repository on GitHub.

    For more information see README.txt:
    https://github.com/fltk/fltk/blob/master/README.txt


## Usage
The JNI library will need to be loaded in java with `System.loadLibrary` before any native functions can be used (see [**Build**](#build)). If there is a `lib` prefix to the library name, it (usually) does not need to be included in the `System.loadLibrary` call.  
Most C++ FLTK code can be fairly easily translated into java. There are a few things to keep in mind:
- Use `obj.delete()` to invoke the C++ destructor of widgets, which will remove the widget from rendering, delete its children (if it is a group), etc. In cases where `delete` would not be called in C++ (for example if you rely on the parent's destructor), `.delete()` does not need to be called in java.
  - If `.delete()` is called on an object already deleted **from the java side** (i.e. `.delete()` was specified elsewhere in java code), nothing will happen and there will be no double-free issues.
  - If `.delete()` is called on an object deleted **from the native side** (e.g. a widget's parent was deleted, which caused the widget itself to also be deleted), you may run into double-frees. If you plan to manually delete children and their parents, **make sure to delete the children before the parent**.
- Widget labels provided in the constructor or via `.label()` is not recommended, since the label text will follow java lifetimes (literals are immediately invalidated). Instead, use `.copy_label()` which internally stores a copy of the label text that is freed when the widget is deleted.
  - Other FLTK functions that accept `const char*` (which is `String` on the java side) should also be used with caution. Generally, prefer functions where the string is copied rather than user-managed.
- Objects returned from the native side also need to be manually deleted, if it is specified that the user should manage memory.
- Callbacks need to be registered with `fltk.register_callback(obj, cb)` rather than `obj.callback(cb)`. Java classes should implement either the `Fl_Callback0_Base` or the `Fl_Callback1_Base` interface. The callback should be an object of such a class, and can contain state.
  - `Fl_Callback` which has `void*` user data is currently inaccessible. It may be added in the future with support for an arbitrary java `Object` as user data.
- FLTK classes cannot be (correctly) extended currently, but this may change in the future.

## Build
FLTK-java uses CMake, similar to [upstream fltk](https://github.com/fltk/fltk). There are minor source changes and a different set of default options, but everything else should be identical. Changing build options may require modifying `swig/fltk.i`.  
[Swig](https://www.swig.org) is used to generate JNI bindings (tested with 4.1.1). Create the `swig-java` directory in repo root (git doesn't allow empty directories) and invoke swig **before** CMake is configured: `swig -java -c++ -package org.fltk -outdir swig-java -DSWIGWORDSIZE64 swig/fltk.i`. Generated java files will be located in `swig-java`, which will need to be included in your java project at `org/fltk/`.  
A JDK needs to be installed for CMake to find JNI headers. After CMake configure/build, the JNI library itself (.dll, .so, .dylib, etc) will be located somewhere in the CMake build directory, named `fltk-jni` (or `libfltk-jni`).  
