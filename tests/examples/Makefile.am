
noinst_PROGRAMS = gstwidget gtksink

gstwidget_SOURCES = gstwidget.c
gstwidget_CFLAGS = -I$(top_srcdir)/src -I$(top_builddir)/src \
	$(GTK_GST_WIDGET_CFLAGS)
gstwidget_LDADD = $(top_builddir)/src/libgtkgst-1.0.la \
	$(GTK_GST_WIDGET_LIBS)

gtksink_SOURCES = gtksink.c
gtksink_CFLAGS = -I$(top_srcdir)/src -I$(top_builddir)/src \
	$(GTK_GST_WIDGET_CFLAGS) -DPLUGIN_BUILD_DIR="\"$(abs_top_srcdir)/src/.libs/\""
gtksink_LDADD = $(top_builddir)/src/libgtkgst-1.0.la \
	$(GTK_GST_WIDGET_LIBS)

if ENABLE_GL
noinst_PROGRAMS += gstglwidget gtkglsink

gstglwidget_SOURCES = gstglwidget.c
gstglwidget_CFLAGS = -I$(top_srcdir)/src -I$(top_builddir)/src \
	$(GTK_GST_WIDGET_CFLAGS)
gstglwidget_LDADD = $(top_builddir)/src/libgtkgst-1.0.la \
	$(GTK_GST_WIDGET_LIBS)

gtkglsink_SOURCES = gtkglsink.c
gtkglsink_CFLAGS = -I$(top_srcdir)/src -I$(top_builddir)/src \
	$(GTK_GST_WIDGET_CFLAGS) -DPLUGIN_BUILD_DIR="\"$(abs_top_srcdir)/src/.libs/\""
gtkglsink_LDADD = $(top_builddir)/src/libgtkgst-1.0.la \
	$(GTK_GST_WIDGET_LIBS)
endif
