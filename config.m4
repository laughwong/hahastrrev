dnl $Id$
dnl config.m4 for extension hahastrrev

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(hahastrrev, for hahastrrev support,
dnl Make sure that the comment is aligned:
dnl [  --with-hahastrrev             Include hahastrrev support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(hahastrrev, whether to enable hahastrrev support,
dnl Make sure that the comment is aligned:
[  --enable-hahastrrev           Enable hahastrrev support])

if test "$PHP_HAHASTRREV" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-hahastrrev -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/hahastrrev.h"  # you most likely want to change this
  dnl if test -r $PHP_HAHASTRREV/$SEARCH_FOR; then # path given as parameter
  dnl   HAHASTRREV_DIR=$PHP_HAHASTRREV
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for hahastrrev files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       HAHASTRREV_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$HAHASTRREV_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the hahastrrev distribution])
  dnl fi

  dnl # --with-hahastrrev -> add include path
  dnl PHP_ADD_INCLUDE($HAHASTRREV_DIR/include)

  dnl # --with-hahastrrev -> check for lib and symbol presence
  dnl LIBNAME=hahastrrev # you may want to change this
  dnl LIBSYMBOL=hahastrrev # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $HAHASTRREV_DIR/$PHP_LIBDIR, HAHASTRREV_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_HAHASTRREVLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong hahastrrev lib version or lib not found])
  dnl ],[
  dnl   -L$HAHASTRREV_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(HAHASTRREV_SHARED_LIBADD)

  PHP_NEW_EXTENSION(hahastrrev, hahastrrev.c, $ext_shared)
fi
