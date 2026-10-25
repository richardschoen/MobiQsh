             CMD        PROMPT('View File or SQL Select Result')
             PARM       KWD(FILE) TYPE(QUAL2) MIN(1) PROMPT('File +
                          name')
             PARM       KWD(SQL) TYPE(*CHAR) LEN(500) DFT(*NONE) +
                          EXPR(*YES) CASE(*MIXED) PROMPT('SQL to +
                          execute')
             PARM       KWD(OPTION) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*) VALUES(* *PRINT *OUTFILE) +
                          EXPR(*YES) CASE(*MONO) PROMPT('Option')
             PARM       KWD(SPLFNAME) TYPE(*CHAR) LEN(10) +
                          DFT(MBVIEWTBL) PROMPT('Spool file name')
             PARM       KWD(USRDTA) TYPE(*CHAR) LEN(10) DFT(*NONE) +
                          SPCVAL((*NONE ' ')) PROMPT('User data')
             PARM       KWD(PRTTXT) TYPE(*CHAR) LEN(30) DFT(*NONE) SPCVAL((*NONE ' ')) CASE(*MIXED) +
                          PROMPT('Print text')
             PARM       KWD(PRTHOLD) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*YES) VALUES(*NO *YES) SPCVAL((*NONE +
                          ' ')) CASE(*MIXED) PROMPT('Hold spool file')
             PARM       KWD(OUTQ) TYPE(QUAL3) MIN(1) PROMPT('Print +
                          to outq')
             PARM       KWD(PAGEWIDTH) TYPE(*CHAR) LEN(5) DFT(378) +
                          SPCVAL((132 132) (198 198) (378 378)) +
                          PROMPT('Page width')
             PARM       KWD(OUTFILE) TYPE(QUAL4) MIN(1) PROMPT('File +
                          to receive output')
             PARM       KWD(MBROPT) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*REPLACE) VALUES(*ADD *REPLACE) +
                          PROMPT('Replace or add records')
             PARM       KWD(IFSFILE) TYPE(*CHAR) LEN(255) DFT(*NONE) +
                          PROMPT('IFS PDF output file name')
             PARM       KWD(REPLACE) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) PROMPT('Replace +
                          existing PDF if found')
 QUAL2:      QUAL       TYPE(*NAME) LEN(10) DFT(*SQL) SPCVAL((*SQL +
                          *SQL)) EXPR(*YES)
             QUAL       TYPE(*NAME) LEN(10) DFT(*LIBL) +
                          SPCVAL((*LIBL)) EXPR(*YES) PROMPT('Library')
 QUAL3:      QUAL       TYPE(*NAME) LEN(10) DFT(*SAME) +
                          SPCVAL((*SAME)) EXPR(*YES)
             QUAL       TYPE(*NAME) LEN(10) DFT(*LIBL) +
                          SPCVAL((*LIBL)) EXPR(*YES) PROMPT('Library')
 QUAL4:      QUAL       TYPE(*NAME) LEN(10) DFT(TMPVIEWTBL) +
                          SPCVAL((*SAME)) EXPR(*YES)
             QUAL       TYPE(*NAME) LEN(10) DFT(QTEMP) +
                          SPCVAL((*LIBL)) EXPR(*YES) PROMPT('Library')
