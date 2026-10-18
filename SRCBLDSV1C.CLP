/* Rebuild Service Program */
             PGM

             DCL        VAR(&DESTFILE) TYPE(*CHAR) LEN(10) +
                          VALUE(SOURCE)
             DCL        VAR(&DESTLIB) TYPE(*CHAR) LEN(10) +
                          VALUE(MOBIQSH)
             DCL        VAR(&TGTRLS) TYPE(*CHAR) LEN(10) +
                          VALUE(*CURRENT)

 /** Add libraries to library list */
             ADDLIBLE   LIB(&DESTLIB)
             MONMSG     MSGID(CPF0000)

             CRTRPGMOD  MODULE(&DESTLIB/&DESTLIBSRV) +
                          SRCFILE(&DESTLIB/&DESTFILE) +
                          DBGVIEW(*SOURCE)

             CRTSRVPGM  SRVPGM(&DESTLIB/&DESTLIBSRV) +
                          MODULE(&DESTLIB/&DESTLIBSRV) +
                          EXPORT(*SRCFILE) SRCFILE(&DESTLIB/SOURCE) +
                          SRCMBR(&DESTLIBSRVD) BNDSRVPGM(*NONE) +
                          BNDDIR(*NONE) ACTGRP(*CALLER)

             /* Delete binding directory */
             DLTBNDDIR  BNDDIR(&DESTLIB/&DESTLIBSRV)
             MONMSG     MSGID(CPF0000)

             CRTBNDDIR  BNDDIR(&DESTLIB/&DESTLIBSRV) TEXT('Binding +
                          Directory for &DESTLIBSRV Service Program') +

             ADDBNDDIRE BNDDIR(&DESTLIB/&DESTLIBSRV) +
                          OBJ((&DESTLIB/&DESTLIBSRV *SRVPGM *IMMED)) +
                          POSITION(*LAST)

             ENDPGM
