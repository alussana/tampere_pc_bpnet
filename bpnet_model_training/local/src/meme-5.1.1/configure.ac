## $Id$
##
## Process this file with autoconf to produce a configure script.
##
##

AC_PREREQ([2.69])
AC_INIT([meme],[5.1.1])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_SRCDIR(src/alphtype.c)
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_LINKS([ \
 etc/alphabet_utilities.js:etc/alphabet_utilities.js \
 etc/ame_icon.png:etc/ame_icon.png \
 etc/ame_template.js:etc/ame_template.js \
 etc/block_diagram.js:etc/block_diagram.js \
 etc/centrimo_graph.js:etc/centrimo_graph.js \
 etc/centrimo_icon.png:etc/centrimo_icon.png \
 etc/centrimo_template.js:etc/centrimo_template.js \
 etc/cisml-to-gff.xsl:etc/cisml-to-gff.xsl \
 etc/cisml-to-gff3.xsl:etc/cisml-to-gff3.xsl \
 etc/cisml-to-html.xsl:etc/cisml-to-html.xsl \
 etc/cisml-to-text.xsl:etc/cisml-to-text.xsl \
 etc/delay_draw.js:etc/delay_draw.js \
 etc/dreme_icon.png:etc/dreme_icon.png \
 etc/dreme_template.js:etc/dreme_template.js \
 etc/eps_context.js:etc/eps_context.js \
 etc/mast_template.js:etc/mast_template.js \
 etc/mcast_template.js:etc/mcast_template.js \
 etc/memechip_icon.png:etc/memechip_icon.png \
 etc/meme-chip_template.js:etc/meme-chip_template.js \
 etc/meme_template.js:etc/meme_template.js \
 etc/momo_template.js:etc/momo_template.js \
 etc/motif_logo.js:etc/motif_logo.js \
 etc/simple-shared-doc.js:etc/simple-shared-doc.js \
 etc/spamo_graph.js:etc/spamo_graph.js \
 etc/spamo_template.js:etc/spamo_template.js \
 etc/tgene_doc.js:etc/tgene_doc.js \
 etc/tgene_template.js:etc/tgene_template.js \
 etc/utilities.js:etc/utilities.js \
 etc/ame_template.css:etc/ame_template.css \
 etc/block_diagram.css:etc/block_diagram.css \
 etc/centrimo_template.css:etc/centrimo_template.css \
 etc/cisml.css:etc/cisml.css \
 etc/dreme_template.css:etc/dreme_template.css \
 etc/mast_template.css:etc/mast_template.css \
 etc/mcast_template.css:etc/mcast_template.css \
 etc/meme.css:etc/meme.css \
 etc/meme-chip_template.css:etc/meme-chip_template.css \
 etc/meme_icon.png:etc/meme_icon.png \
 etc/meme_template.css:etc/meme_template.css \
 etc/momo_icon.png:etc/momo_icon.png \
 etc/momo_template.css:etc/momo_template.css \
 etc/new_icon.png:etc/new_icon.png \
 etc/prior30.plib:etc/prior30.plib \
 etc/spamo_icon.png:etc/spamo_icon.png \
 etc/spamo_template.css:etc/spamo_template.css \
 etc/template.eps:etc/template.eps \
 etc/tgene_template.css:etc/tgene_template.css \
 etc/tgene_icon.png:etc/tgene_icon.png \
 etc/tomtom_template.css:etc/tomtom_template.css \
 etc/tomtom_template.js:etc/tomtom_template.js \
 etc/tomtom_icon.png:etc/tomtom_icon.png \
 scripts/Alphabet.pm:scripts/Alphabet.pm \
 scripts/CheckingSAX.pm:scripts/CheckingSAX.pm \
 scripts/CombDynProg.pm:scripts/CombDynProg.pm \
 scripts/DiffJSON.pm:scripts/DiffJSON.pm \
 scripts/DremeSAX.pm:scripts/DremeSAX.pm \
 scripts/ExecUtils.pm:scripts/ExecUtils.pm \
 scripts/HtmlMonolithWr.pm:scripts/HtmlMonolithWr.pm \
 scripts/HypergeometricDynProg.pm:scripts/HypergeometricDynProg.pm \
 scripts/JsonRdr.pm:scripts/JsonRdr.pm \
 scripts/JsonWr.pm:scripts/JsonWr.pm \
 scripts/MastSAX.pm:scripts/MastSAX.pm \
 scripts/MemeSAX.pm:scripts/MemeSAX.pm \
 scripts/MotifInDremeXML.pm:scripts/MotifInDremeXML.pm \
 scripts/MotifInMemeXML.pm:scripts/MotifInMemeXML.pm \
 scripts/MotifUtils.pm:scripts/MotifUtils.pm \
 scripts/PriorUtils.pm:scripts/PriorUtils.pm \
 scripts/ReadFastaFile.pm:scripts/ReadFastaFile.pm \
 scripts/TomtomSAX.pm:scripts/TomtomSAX.pm \
 scripts/alphabet.py:scripts/alphabet.py \
 scripts/alphabet_py3.py:scripts/alphabet_py3.py \
 scripts/hypergeometric.py:scripts/hypergeometric.py \
 scripts/hypergeometric_py3.py:scripts/hypergeometric_py3.py \
 scripts/sequence.py:scripts/sequence.py \
 scripts/sequence_py3.py:scripts/sequence_py3.py \
 tests/common/At.s:tests/common/At.s \
 tests/common/INO_up800.s:tests/common/INO_up800.s \
 tests/common/Jaspar-subset.meme:tests/common/Jaspar-subset.meme \
 tests/common/Jaspar-subset2.meme:tests/common/Jaspar-subset2.meme \
 tests/common/Klf1-200-100-shuffled.py2.fa:tests/common/Klf1-200-100-shuffled.py2.fa \
 tests/common/Klf1-200-100-shuffled.py3.fa:tests/common/Klf1-200-100-shuffled.py3.fa \
 tests/common/Klf1-200-100.combined.fa:tests/common/Klf1-200-100.combined.fa \
 tests/common/Klf1-200-100.combined.nofasta.fa:tests/common/Klf1-200-100.combined.nofasta.fa \
 tests/common/Klf1-200-100.fa:tests/common/Klf1-200-100.fa \
 tests/common/Klf1-200-100.no_fasta.fa:tests/common/Klf1-200-100.no_fasta.fa \
 tests/common/Klf1-200.fa:tests/common/Klf1-200.fa \
 tests/common/Klf1.fa:tests/common/Klf1.fa \
 tests/common/MCM1.fasta:tests/common/MCM1.fasta \
 tests/common/Makefile.am:tests/common/Makefile.am \
 tests/common/Makefile.in:tests/common/Makefile.in \
 tests/common/Puf3p-20.s:tests/common/Puf3p-20.s \
 tests/common/Puf3p-200.s:tests/common/Puf3p-200.s \
 tests/common/Puf3p.s:tests/common/Puf3p.s \
 tests/common/adh.s:tests/common/adh.s \
 tests/common/alphabet_dna.txt:tests/common/alphabet_dna.txt \
 tests/common/alphabet_rna.txt:tests/common/alphabet_rna.txt \
 tests/common/chr22.fasta:tests/common/chr22.fasta \
 tests/common/crp0-test.fasta:tests/common/crp0-test.fasta \
 tests/common/crp0.fasta:tests/common/crp0.fasta \
 tests/common/crp0.meme.html:tests/common/crp0.meme.html \
 tests/common/crp0.meme.txt:tests/common/crp0.meme.txt \
 tests/common/crp0.meme.xml:tests/common/crp0.meme.xml \
 tests/common/crp0.s:tests/common/crp0.s \
 tests/common/dna_with_covalent.alph:tests/common/dna_with_covalent.alph \
 tests/common/dna_with_covalent.bg:tests/common/dna_with_covalent.bg \
 tests/common/dna_with_covalent.fa:tests/common/dna_with_covalent.fa \
 tests/common/dna_with_covalent.meme:tests/common/dna_with_covalent.meme \
 tests/common/dros.fasta:tests/common/dros.fasta \
 tests/common/dros.oops.html:tests/common/dros.oops.html \
 tests/common/extended_dna.alph:tests/common/extended_dna.alph \
 tests/common/farntrans5.s:tests/common/farntrans5.s \
 tests/common/lex0.s:tests/common/lex0.s \
 tests/common/lipo-test.fasta:tests/common/lipo-test.fasta \
 tests/common/lipo.fasta:tests/common/lipo.fasta \
 tests/common/lipo.meme.html:tests/common/lipo.meme.html \
 tests/common/lipo.meme.old.html:tests/common/lipo.meme.old.html \
 tests/common/lipocalin.s:tests/common/lipocalin.s \
 tests/common/mini-drosoph.s:tests/common/mini-drosoph.s \
 tests/common/non-uniform.bg:tests/common/non-uniform.bg \
 tests/common/noq.s:tests/common/noq.s \
 tests/common/nr.freq:tests/common/nr.freq \
 tests/common/nt.freq:tests/common/nt.freq \
 tests/common/psp_test.psp:tests/common/psp_test.psp \
 tests/common/psp_test.s:tests/common/psp_test.s \
 tests/common/sample.meme:tests/common/sample.meme \
 tests/common/simple.aln:tests/common/simple.aln \
 tests/common/simple.meme:tests/common/simple.meme \
 tests/common/test.aln:tests/common/test.aln \
 tests/common/test_tree.txt:tests/common/test_tree.txt \
 tests/common/uprot.freq:tests/common/uprot.freq \
 tests/common/yeast.nc.1.freq:tests/common/yeast.nc.1.freq \
 tests/common/yeast.nc.3.freq:tests/common/yeast.nc.3.freq \
 tests/common/yeast.nc.6.freq:tests/common/yeast.nc.6.freq \
 tests/common/motif.Puf3p/dreme.html:tests/common/motif.Puf3p/dreme.html \
 tests/common/motif.Puf3p/dreme.txt:tests/common/motif.Puf3p/dreme.txt \
 tests/common/motif.Puf3p/dreme.xml:tests/common/motif.Puf3p/dreme.xml \
 tests/common/motif.Puf3p/meme.html:tests/common/motif.Puf3p/meme.html \
 tests/common/motif.Puf3p/meme.txt:tests/common/motif.Puf3p/meme.txt \
 tests/common/motif.Puf3p/meme.xml:tests/common/motif.Puf3p/meme.xml \
 tests/common/motif.crp0/dreme.html:tests/common/motif.crp0/dreme.html \
 tests/common/motif.crp0/dreme.txt:tests/common/motif.crp0/dreme.txt \
 tests/common/motif.crp0/dreme.xml:tests/common/motif.crp0/dreme.xml \
 tests/common/motif.crp0/meme.html:tests/common/motif.crp0/meme.html \
 tests/common/motif.crp0/meme.txt:tests/common/motif.crp0/meme.txt \
 tests/common/motif.crp0/meme.xml:tests/common/motif.crp0/meme.xml \
 tests/meme-chip/JASPAR_CORE_2014_vertebrates.meme:tests/meme-chip/JASPAR_CORE_2014_vertebrates.meme \
 tests/meme-chip/Klf1.100.fa:tests/meme-chip/Klf1.100.fa \
 tests/motiph/MCM1.meme.html:tests/motiph/MCM1.meme.html \
 tests/motiph/spiked.aln:tests/motiph/spiked.aln \
 tests/motiph/spiked.fasta:tests/motiph/spiked.fasta \
 tests/motiph/yeast.tree:tests/motiph/yeast.tree \
])
AM_INIT_AUTOMAKE([1.13 subdir-objects])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES])
AC_PREFIX_DEFAULT(${HOME})

# Checks for programs.
AC_PROG_CC
AC_PROG_CC_C_O
LT_INIT
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PATH_PROG(LD, ld)
AC_PATH_PROG(SED, sed)
AC_PATH_PROG(SENDMAIL, sendmail, [/usr/lib/sendmail], [$PATH:/usr/lib:/usr/sbin])
AC_PATH_PROG(PERL, perl)
AC_PATH_PROG(CONVERT, convert)
AC_PATH_PROG(GHOSTSCRIPT, gs)
AC_PATH_PROG(XML2_CONFIG, xml2-config)
AC_PATH_PROG(XSLT_CONFIG, xslt-config)
AC_PATH_PROG(ANT, ant)

AC_DEFINE_UNQUOTED(HOSTNAME, "`hostname | head -n 1`", [Build host name])

# Checks for libraries.
AC_CHECK_LIB([m], 
             [isnan, sqrt, log, exp, fabs, pow, floor, ceil], 
             [], 
             [AC_MSG_WARN([Math library not found])])
AC_CHECK_LIB([z], 
             [compress], 
             [], 
             [AC_MSG_WARN([Math library not found])])

# Checks for header files.
AC_HEADER_STDC
AC_HEADER_SYS_WAIT
AC_CHECK_HEADERS([arpa/inet.h ctype.h fcntl.h limits.h netdb.h netinet/in.h stdlib.h string.h strings.h sys/socket.h sys/time.h unistd.h ])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_HEADER_STDBOOL
AC_TYPE_PID_T
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_DIAGNOSE([obsolete],[your code may safely assume C89 semantics that RETSIGTYPE is void.
Remove this warning and the `AC_CACHE_CHECK' when you adjust the code.])dnl
AC_CACHE_CHECK([return type of signal handlers],[ac_cv_type_signal],[AC_COMPILE_IFELSE(
[AC_LANG_PROGRAM([#include <sys/types.h>
#include <signal.h>
],
		 [return *(signal (0, 0)) (0) == 1;])],
		   [ac_cv_type_signal=int],
		   [ac_cv_type_signal=void])])
AC_DEFINE_UNQUOTED([RETSIGTYPE],[$ac_cv_type_signal],[Define as the return type of signal handlers
		    (`int' or `void').])

AC_FUNC_STAT
AC_CHECK_FUNCS([floor getcwd gethostbyname isascii memset pow rint socket sqrt strchr strcspn strdup strspn strstr])
AC_CHECK_FUNCS([strlcpy], [have_strlcpy=yes], [have_strlcpy=no])
AM_CONDITIONAL(WANT_STRLCPY, test ["$have_strlcpy" = no])

# Check for compiler-specific settings
LARGE_FILE_SUPPORT=`getconf LFS_CFLAGS`
if test "${GCC}" = "yes"; then
  ac_cc_opt="-O3"
  ac_cc_debug_opt="-O0"
  ac_cc_warn="-Wall -Wno-unused"
  ac_cc_debug="-ggdb"
  # Check for OS X llvm (clang) compiler
  if `gcc --version |grep llvm >/dev/null`; then
    ac_cc_debug="-g"
  fi
  CFLAGS="-std=gnu89 $ac_cc_warn -DUNIX -D__USE_FIXED_PROTOTYPES__ $LARGE_FILE_SUPPORT"
else
  ac_cc_opt="-O"
  ac_cc_debug_opt=""
  ac_cc_warn=""
  ac_cc_debug="-g"
  CFLAGS="$ac_cc_warn -DUNIX -D__USE_FIXED_PROTOTYPES__ $LARGE_FILE_SUPPORT"
fi

# Set up default libxml2 settings
# check for installed copy of libxml2
build_libxml2="yes"
if test -n "$XML2_CONFIG"; then
  # Require at least version 2.6
  required_libxml2_version="2006000"
  LIBXML2_VERSION="`$XML2_CONFIG --version | \
    awk 'BEGIN { FS = "."; } { printf "%d", ($1 * 1000 + $2) * 1000 + $3;}'`"
  if test -n "$LIBXML2_VERSION" && \
     test "$LIBXML2_VERSION"  -ge "$required_libxml2_version"; then 
    build_libxml2="no"
    LIBXML2_LIBS="`$XML2_CONFIG --libs`"
    LIBXML2_CFLAGS="`$XML2_CONFIG --cflags`"
  fi
fi
if test -z "$LIBXML2_LIBS"; then
  AC_MSG_WARN([libxml2 library not found])
  LIBXML2_LIBS="\${top_builddir}/src/libxml2/libxml2.la"
  LIBXML2_CFLAGS="-I\${top_srcdir}/src/libxml2/include"
fi

# Set up default libxslt settings
# check for installed copy of libxslt
build_libxslt="yes"
if test -n "$XSLT_CONFIG"; then
  build_libxslt="no"
  LIBXSLT_LIBS="`$XSLT_CONFIG --libs` -lexslt"
  LIBXSLT_CFLAGS="`$XSLT_CONFIG --cflags`"
fi
if test -z "$LIBXSLT_LIBS"; then
  AC_MSG_WARN([libxslt library not found])
  LIBEXSLT_LIBS="\${top_builddir}/src/libexslt/libexslt.la"
  LIBXSLT_LIBS="\${top_builddir}/src/libxslt/libxslt.la"
  LIBEXSLT_CFLAGS="-I\${top_srcdir}/src/libexslt"
  LIBXSLT_CFLAGS="-I\${top_srcdir}/src/"
fi

# who is installing 
USER=`whoami`

# Check for platform-specific settings
case $host in
   *cygwin*)
      AC_DEFINE(Cygwin, [], [Using cygwin])
      MACHID="cygwin"
      # Increase the stack size on cygwin
      # The default stack on cygwin is only 2MB
      # which is not enough.
      CFLAGS="$CFLAGS -Wl,--stack,9000000 "
      ;;
   *darwin*)
      AC_DEFINE(MACOSX, [], [Using MacOS X])
      MACHID="darwin"
      ;;
   *linux*)
      AC_DEFINE(Linux, [], [Using Linux])
      MACHID="linux"
      ;;
   *aix*)
      ac_mpicc_flags="-O3 -qstrict -qarch=pwr3 -qtune=pwr3"
      AC_DEFINE(AIX, [], [Using AIX])
      MACHID="aix"
      if /usr/sbin/lsattr -EHl proc0 | grep POWER >/dev/null 2>&1; then
          MACHID=rs6000
      fi
      ;;
   *cray*)
      ac_mpicc_flags="-O3 -h msglevel_3"
      AC_DEFINE(cray3e, [], [Using cray3e])
      MACHID="cray"
      ;;
   *irix6*)
      ac_mpicc_flags="-O3"
      AC_DEFINE(IRIX64, [], [Using IRIX64])
      MACHID="irix"
      ;;
   *irix*)
      ac_mpicc_flags="-O3"
      MACHID="irix"
      ;;
   *solaris*|*sunos*)
      if test "${CC}" != "gcc"; then
          ac_cc_opt="-O -Xa"
      fi
      AC_DEFINE(SunOS, [], [Using SunOS])
      AC_CHECK_LIB([nsl], [gethostbyname], [], [AC_MSG_ERROR([Nsl library not found])])
      AC_CHECK_LIB([socket], [socket], [], [AC_MSG_ERROR([Socket library not found])])
      LIBS="-lsocket -lnsl -lm"
      MACHID="solaris"
      ;;
esac

####################################
# Check for configuration switches
####################################

# set default source url -- change this if the master MEME SUITE website ever moves to a new URL.
MASTER_URL="http://meme-suite.org"
# set default developer contact -- change this if the master MEME SUITE contact email ever changes.
MASTER_CONTACT="meme-suite@uw.edu"

# Enable optimization by default
OPT_FLAGS="$ac_cc_opt"

# debugging
# if specified then change optimisation to a level approprate to debugging (may be overriden by --enable-opt)
AC_ARG_ENABLE(
    debug,
    [  --enable-debug           Produce an executable with debugging symbols. Default is disabled.],
    [if test "$enableval" = "yes"; then
        DEBUG_FLAGS="$ac_cc_debug";
        OPT_FLAGS="$ac_cc_debug_opt";
     fi],
    [DEBUG_FLAGS=""])

# optimization
# if specified we want to override the debugging optimisation flags
# if set to "no" then we don't specifify and let the compiler do its default
AC_ARG_ENABLE(
    opt,
    [  --enable-opt             Produce an executable with optimization. Default enabled. Must specify no to disable.],
    [if test "$enableval" = "yes"; then
       OPT_FLAGS="$ac_cc_opt";
     elif test "$enableval" = "no"; then
       OPT_FLAGS="";
     fi],
    [])

# get mpi info, and check if parallel version can be compiled
AC_ARG_WITH(
    mpidir,
    [  --with-mpidir=MPIDIR		Set MPI installation path. Default is path of found mpicc.],
    [mpidir="$withval";
       MPICC="";
       MPIRUN="";
       AC_PATH_PROGS(MPICC, mpicc openmpicc mpcci mpicc-openmpi-mp, [], [$mpidir/bin])
       AC_CHECK_FILE("$MPICC", , 
         AC_MSG_ERROR(MPI compiler not found under user specified directory $mpidir!)  )
       AC_PATH_PROGS(MPIRUN, mpirun openmpirun, [], [$mpidir/bin])
       AC_CHECK_FILE("$MPIRUN", , 
         AC_MSG_ERROR(MPI runtime not found under user specified directory $mpidir!)  )
       MPILIBDIR=$mpidir/lib;
       MPIINC="-DMPI -I$mpidir/include";
       AC_CHECK_LIB([mpi], [MPI_Comm_rank])
       parallel="yes";],
    [
     AC_PATH_PROGS(MPICC, mpicc openmpicc mpcc)
     AC_PATH_PROGS(MPIRUN, mpirun openmpirun)
     if test "$MPICC" = ""; then
        MPILIBDIR="";
        MPIINC="";
        parallel="no";
     else
        mpidir=`echo $MPICC | sed -e 's/\/bin\/.*//'`
        MPILIBDIR="$mpidir/lib"
        MPIINC="-DMPI -I$mpidir/include"
        AC_CHECK_LIB([mpi], [MPI_Comm_rank])
        parallel="yes";
     fi])

# enable only serial installation
AC_ARG_ENABLE(
    serial,
    [  --enable-serial          Produce only serial executables. Default parallel and serial.],
    serial=$enableval, serial=no)
if test "$serial" = "yes"; then
    parallel="no";
fi

# For potentially parallel programs, the correct version (serial or parallel)
# is built in the /parallel directory.  That is why MPICC is set to CC below.
if test "$parallel" = "yes"; then
   MPIFLAGS="-DPARALLEL $ac_mpicc_flags"
   lammpi=`strings $MPICC | grep liblam`;
   openmpi=`strings $MPICC | grep openmpi`;
   if test -n "$lammpi" ; then
      MPI_CMD="\${prefix}/bin/lrun -n";
      MPITYPE="lam"
      LAMBIN="$mpidir/bin"
   else
      MPI_CMD="${MPIRUN} -np";
      MPITYPE="mpich"
   fi
else
  MPICC=${CC}
  MPIINC=""
  MPILIBDIR=""
  MPIFLAGS=""
fi

AM_CONDITIONAL(PARALLEL, test ["$parallel" != no])
AM_CONDITIONAL(PARALLEL_IS_LAM, test -n ["$lammpi"]) 

AC_ARG_ENABLE(
    webservice,
    [  --enable-webservice=deploy_dir       Deploy the MEME service on an existing Opal 2.5+ installation],
    [ if test "" = "$CATALINA_HOME"; then
        AC_MSG_ERROR(Please ensure you have the environment variable \$CATALINA_HOME set to the base apache-tomcat directory.)
      else
        case $enableval in
          yes       ) OPAL_DEPLOY="$CATALINA_HOME/deploy";;
          [/]*      ) OPAL_DEPLOY=$enableval;;
          *         ) OPAL_DEPLOY="$CATALINA_HOME/$enableval";;
        esac
      fi
    ],OPAL_DEPLOY="")
AM_CONDITIONAL(WEBSERVICE, test ["" != "$OPAL_DEPLOY"])

# enable website installation
AC_ARG_ENABLE(
    web,
    [  --enable-web=opal_url      Build website applications. Default is disabled.  Specify the Opal URL for the service to communicate with.],
    [ if test "x$enableval" = "xyes"; then
        OPAL_URL="$MASTER_URL/opal2/services"
        AC_MSG_WARN(Opal URL not specified with --enable-web option!  Defaulting to $MASTER_URL/opal2/services)
      else
        OPAL_URL="$enableval"
      fi
    ],OPAL_URL="no")
AM_CONDITIONAL(WEBSITE, test ["x$OPAL_URL" != "xno"])
AM_CONDITIONAL(WEB, test ["x$OPAL_DEPLOY" != "x" -o "x$OPAL_URL" != "xno"])

# enable building of included libxml2
AC_ARG_ENABLE(
    build_libxml2,
    [  --enable-build-libxml2     Build included version of libxml2. Default is to use pre-existing locally installed copy.],
    build_libxml2=$enableval; \
    LIBXML2_LIBS="\${top_builddir}/src/libxml2/libxml2.la"; \
    LIBXML2_CFLAGS="-I\${top_srcdir}/src/libxml2/include" , )
AM_CONDITIONAL(BUILD_LIBXML2, test ["$build_libxml2" = yes])

# enable building of included libxslt
AC_ARG_ENABLE(
    build_libxslt,
    [  --enable-build-libxslt     Build included version of libxslt. Default is to use pre-existing locally installed copy.],
    build_libxslt=$enableval; \
    LIBEXSLT_LIBS="\${top_builddir}/src/libexslt/libexslt.la"; \
    LIBXSLT_LIBS="\${top_builddir}/src/libxslt/libxslt.la"; \
    LIBEXSLT_CFLAGS="-I\${top_srcdir}/src/libexslt"; \
    LIBXSLT_CFLAGS="-I\${top_srcdir}/src/" , )
AM_CONDITIONAL(BUILD_LIBXSLT, test ["$build_libxslt" = yes])

# set website url
AC_ARG_WITH(
    url,
    [  --with-url=URL		Set URL for the website. Default is to use source URL.],
    [URL=$withval],
    [URL="$MASTER_URL"])
AC_DEFINE_UNQUOTED(SITE_URL, ["$URL"], [The site URL])

# set alternate website url
AC_ARG_WITH(
    alt_url,
    [  --with-alt-url=URL		Set URL for the alternate website. Default is no alternate website.],
    [ALT_URL=$withval],
    [ALT_URL=""])
AC_DEFINE_UNQUOTED(ALT_URL, ["$ALT_URL"], [The alternate site URL])

# set source url
AC_ARG_WITH(
    source_url,
    [  --with-source-url=URL		Set URL for the source of the MEME SUITE source code and databases.],
    [SOURCE_URL=$withval],
    [SOURCE_URL="$MASTER_URL"])
AC_DEFINE_UNQUOTED(SOURCE_URL, ["$SOURCE_URL"], [The URL of the MEME SUITE source code and databases.])

AC_ARG_WITH(
    prev_url,
    [  --with-prev-url=URL		Set URL for the previous version link. Default is to have no link to a previous version.],
    [PREV_URL=$withval],
    [PREV_URL=""])

# set previous version
AC_ARG_WITH(
    prev_ver,
    [  --with-prev-ver=VERSION	Set version for the previous version link. Default is to have no link to a previous version.],
    [PREV_VER=$withval],
    [PREV_VER=""])

# set notices url
AC_ARG_WITH(
    notices,
    [  --with-notices=URL		Set URL for important website notices (a relative URL is preferred). Default is to check for notices.txt at the website URL.],
    [NOTICES_URL=$withval],
    [NOTICES_URL="./notices.txt"])

# set news url
AC_ARG_WITH(
    news,
    [  --with-news=URL		Set URL for unimportant website news (a relative URL is preferred). Default is to check for news.txt at the website URL.],
    [NEWS_URL=$withval],
    [NEWS_URL="./news.txt"])

# set website quota
AC_ARG_WITH(
    quota,
    [  --with-quota=COUNT/TIME	Set the quota limit for job submissions through the website as a COUNT of submissions during TIME seconds. Default is to have no quota limits.],
    [QUOTA=$withval],
    [QUOTA=""])

# set previous url
# set data lifetime
AC_ARG_WITH(
   expiry,
   [  --with-expiry=DAYS		Set the number of days that the website should expect jobs to exist. Default is 4 days.],
   [EXPIRY=$withvar],
   [EXPIRY="4"])
    
# set go server url
AC_ARG_WITH(
    goserver_url,
    [  --with-goserver-url=URL	Set URL for the Gene Ontology website GO term details page. Use GO_TERM_ID to indicate where the GO term identifer should be substituted. Default http://amigo.geneontology.org/cgi-bin/amigo/term_details?term=GO_TERM_ID],
    [GOSERVER_URL=$withval],
    [GOSERVER_URL="http://amigo.geneontology.org/cgi-bin/amigo/term_details?term=GO_TERM_ID"])
    
# set contact for website
AC_ARG_WITH(
    contact,
    [  --with-contact=EMAIL	Set email of website administrator. Default is to have no site contact.],
    [CONTACT=$withval],
    [CONTACT=""])

# set developer contact for website
AC_ARG_WITH(
    dev_contact,
    [  --with-dev-contact=EMAIL	Set email of developers. Default is current MEME SUITE email address.],
    [DEV_CONTACT=$withval],
    [DEV_CONTACT="$MASTER_CONTACT"])

# set database location
AC_ARG_WITH(
    db,
    [  --with-db=DBDIR		Set path to databases. Default $prefix/share/meme${version}/db.],
    [MEME_DB=$withval
    AC_CHECK_FILE("$MEME_DB", , 
      AC_MSG_ERROR(user specified database directory $MEME_DB not found!) ) ],
    [MEME_DB="\${datarootdir}/\${PACKAGE_NAME}-${PACKAGE_VERSION}/db"])

# set logs location
AC_ARG_WITH(
    logs,
    [  --with-logs=LOGDIR		Set path to logs. Default $prefix/var/meme${version}/LOGS.],
    [MEME_LOGS=$withval
    AC_CHECK_FILE("$MEME_LOGS", , 
      AC_MSG_ERROR(user specified log directory $MEME_LOGS not found!) ) ],
    [MEME_LOGS="\${localstatedir}/\${PACKAGE_NAME}-${PACKAGE_VERSION}/LOGS"])

# set tempfile location
AC_ARG_WITH(
    temp,
    [  --with-temp=TEMPDIR		Set path to create temporary files.],
    [MEME_TEMP=$withval
    AC_CHECK_FILE("$MEME_TEMP", , 
      AC_MSG_ERROR(user specified temp directory $MEME_TEMP not found!) ) ],
    [MEME_TEMP=""])

# set path to Perl
AC_ARG_WITH(
    perl,
    [  --with-perl=NAME		Set path to Perl. Default is to take from user's PATH.],
    [PERL=$withval
    AC_CHECK_FILE("$PERL", , 
      AC_MSG_ERROR(user specified Perl binary $PERL not found!) ) ],
    [AC_PATH_PROG(PERL, perl)])
AC_DEFINE_UNQUOTED(PERL, "$PERL", [Path to Perl] )

# set path to Python
AC_ARG_WITH(
    python,
    [  --with-python=NAME		Set path to Python. Default is to take from user's PATH.],
    [PYTHON=$withval
    AC_CHECK_FILE("$PYTHON", , 
      AC_MSG_ERROR(user specified Python binary $PYTHON not found!) ) ],
    [AC_PATH_PROG(PYTHON, python)])
AC_DEFINE_UNQUOTED(PYTHON, "$PYTHON", [Path to Python] )
AM_PATH_PYTHON([2.7])
AM_CONDITIONAL([HAVE_PYTHON], test ["x$PYTHON" != "x"])
AM_CONDITIONAL([HAVE_PYTHON_3], test [ ${PYTHON_VERSION:0:1} -ge 3 ] )

# set path to convert utility
AC_ARG_WITH(
    convert,
    [  --with-convert=NAME		Set path to convert utility. Default is to take from user's PATH.],
    [CONVERT=$withval
    AC_CHECK_FILE("$CONVERT", , 
      AC_MSG_ERROR(user specified convert utility $CONVERT not found!) ) ],
    [AC_PATH_PROG(CONVERT, convert)])
AC_DEFINE_UNQUOTED(CONVERT_PATH, "$CONVERT", [Path to convert utility] )


# set path to ghostscript utility (to replace convert)
AC_ARG_WITH(
    gs,
    [  --with-gs=NAME		Set path to ghostscript utility. Default is to take from user's PATH.],
    [GHOSTSCRIPT=$withval
    AC_CHECK_FILE("$GHOSTSCRIPT", , 
      AC_MSG_ERROR(user specified Ghostscript binary $GHOSTSCRIPT not found!) ) ],
    [AC_PATH_PROG(GHOSTSCRIPT, gs)])
AC_DEFINE_UNQUOTED(GHOSTSCRIPT_PATH, "$GHOSTSCRIPT", [Path to ghostscript utility] )

# set wall time limit 
AC_ARG_WITH(
    maxtime,
    [  --with-maxtime=TIME		Set wall time limit (sec) a web-submitted job may use. Default 18000.],
    [MAXTIME=$withval],
    [MAXTIME="18000"])

AM_CONDITIONAL(METAMEME_EXTERNAL, test ["$CONVERT" != "" -a "$DOT" != ""])
CFLAGS="$CFLAGS $DEBUG_FLAGS $OPT_FLAGS"
MEME_DIRECTORY="\${prefix}"

AC_SUBST(MEME_DIRECTORY)
AC_SUBST(MACHID)
AC_SUBST(MEME_PORT)
AC_SUBST(MAST_PORT)
AC_SUBST(DEBUG_FLAGS)
AC_SUBST(OPT_FLAGS)
AC_SUBST(LIBS)
AC_SUBST(XBUILD)
AC_SUBST(MPICC)
AC_SUBST(MPIRUN)
AC_SUBST(MPIINC)
AC_SUBST(MPI_CMD)
AC_SUBST(MPILIBDIR)
AC_SUBST(MPIFLAGS)
AC_SUBST(MPITYPE)
AC_SUBST(VERSION)
AC_SUBST(LD)
AC_SUBST(LAMBIN)
AC_SUBST(URL)
AC_SUBST(ALT_URL)
AC_SUBST(SOURCE_URL)
AC_SUBST(PREV_VER)
AC_SUBST(PREV_URL)
AC_SUBST(NOTICES_URL)
AC_SUBST(NEWS_URL)
AC_SUBST(QUOTA)
AC_SUBST(EXPIRY)
AC_SUBST(GOSERVER_URL)
AC_SUBST(CONTACT)
AC_SUBST(DEV_CONTACT)
AC_SUBST(SENDMAIL)
AC_SUBST(HOSTNAME)
AC_SUBST(WEBSERVICE)
AC_SUBST(MEME_DB)
AC_SUBST(MEME_LOGS)
AC_SUBST(MEME_TEMP)
AC_SUBST(MAXTIME)
AC_SUBST(LIBXML2_CFLAGS)
AC_SUBST(LIBXML2_LIBS)
AC_SUBST(LIBXSLT_CFLAGS)
AC_SUBST(LIBEXSLT_CFLAGS)
AC_SUBST(LIBXSLT_LIBS)
AC_SUBST(LIBEXSLT_LIBS)
AC_SUBST(OPAL_URL)
AC_SUBST(ANT)
AC_SUBST(OPAL_DEPLOY)
AC_SUBST(CATALINA_HOME)

AC_CONFIG_FILES([Makefile \
    doc/Makefile \
    doc/css/Makefile \
    doc/examples/Makefile \
    doc/examples/compute_prior_dist_example_output_files/Makefile \
    doc/examples/sample_opal_scripts/Makefile \
    doc/images/Makefile \
    doc/js/Makefile \
    etc/Makefile \
    src/filters/Makefile \
    src/filters/purge/Makefile \
    src/filters/dust/Makefile \
    scripts/Makefile \
    src/Makefile \
    src/libxml2/Makefile \
    src/libxml2/include/Makefile \
    src/libxml2/include/libxml/Makefile \
    src/libxslt/Makefile \
    src/libexslt/Makefile \
    src/parallel/Makefile \
    tests/Makefile \
    tests/ame/Makefile \
    tests/centrimo/Makefile \
    tests/clustalw2fasta/Makefile \
    tests/common/Makefile \
    tests/common/motif.crp0/Makefile \
    tests/common/motif.Puf3p/Makefile \
    tests/create-priors/Makefile \
    tests/draw-mhmm/Makefile \
    tests/dreme/Makefile \
    tests/fasta-center/Makefile \
    tests/fimo/Makefile \
    tests/glam2/Makefile \
    tests/glam2scan/Makefile \
    tests/gomo/Makefile \
    tests/mast/Makefile \
    tests/mcast/Makefile \
    tests/meme/Makefile \
    tests/meme-chip/Makefile \
    tests/mhmm/Makefile \
    tests/mhmms/Makefile \
    tests/mhmmscan/Makefile \
    tests/momo/Makefile \
    tests/motiph/Makefile \
    tests/psp-gen/Makefile \
    tests/qvalue/Makefile \
    tests/scaffold/Makefile \
    tests/spamo/Makefile \
    tests/scripts/Makefile \
    tests/tgene/Makefile \
    tests/tomtom/Makefile \
    tests/web/Makefile \
    website/Makefile \
    website/templates/Makefile])
AC_OUTPUT

# Raise warning if a EPS to PNG conversion utility can't be found.
if test "(" -z "$GHOSTSCRIPT" -o ! -e "$GHOSTSCRIPT" ")" -a "(" -z "$CONVERT" -o ! -e "$CONVERT" ")"
then
  AC_MSG_WARN( \
    [Neither Ghostscript or convert utilities were found. Png images won''t be generated from encapsulated postscript.] \
  )
fi

# Check for required Perl Modules
MISSING_PERL_MODULES="`$PERL $srcdir/scripts/dependencies.pl`"
if test "`echo "$MISSING_PERL_MODULES" | wc -l`" -ne 4
then
  AC_MSG_WARN( \
    [$MISSING_PERL_MODULES] \
  )
else
  AC_MSG_NOTICE( \
    [All required and optional Perl modules were found.] \
  )
fi


echo \
"
        ========================
        Configuration parameters
        ========================

  Install path:               ${prefix}
  Install UID:                ${MEME_USER}
  Version:                    ${VERSION}
  C compiler:                 ${CC}
  C compiler flags:           ${CFLAGS}
  Linker:                     ${LD}
  Special Libs:               ${LIBS}
  MPICC                       ${MPICC}
  MPIRUN                      ${MPIRUN}
  MPI_CMD                     ${MPI_CMD}
  MPIINC                      ${MPIINC}
  MPILIBDIR                   ${MPILIBDIR}
  MPIFLAGS                    ${MPIFLAGS}
  SOURCE URL:		      ${SRC_URL}
  WEBSITE URL:                ${URL}
  ALTERNATE WEBSITE URL:      ${ALT_URL}
  PREVIOUS VERSION URL:       ${PREV_URL}
  SERVER CONTACT:             ${CONTACT}
  DEVELOPER CONTACT:          ${DEV_CONTACT}
  GO-SERVER URL:              ${GOSERVER_URL}
  XBUILD:                     ${XBUILD}
  PERL:                       ${PERL}
  PYTHON:                     ${PYTHON}
  PYTHON VERSiON:             ${PYTHON_VERSION}
  CONVERT:                    ${CONVERT}
  GHOSTSCRIPT:                ${GHOSTSCRIPT}
  BUILD LIBXML2:              ${build_libxml2}
  LIBXML2 compiler flags:     ${LIBXML2_CFLAGS}
  LIBXML2 libs:               ${LIBXML2_LIBS}
  BUILD LIBXSLT:              ${build_libxslt}
  LIBXSLT compiler flags:     ${LIBXSLT_CFLAGS}
  LIBXSLT libs:               ${LIBXSLT_LIBS}
  MEME DB:                    ${MEME_DB}
  MEME LOGS:                  ${MEME_LOGS}
  MEME TEMP FILES:            ${MEME_TEMP}
  OPAL URL:                   ${OPAL_URL}
  OPAL DEPLOY DIRECTORY:      ${OPAL_DEPLOY}

  Run the following commands to compile, test and install meme:
        make   
        make test
        make install

  Then make sure that the following two directories are added to 
  your PATH variable:
        ${prefix}/bin
        ${prefix}/libexec/meme-${VERSION}

  This can often be done by editing the file named .profile to add 
  the following line:
	export PATH=${prefix}/bin:${prefix}/libexec/meme-${VERSION}:\$PATH
"
