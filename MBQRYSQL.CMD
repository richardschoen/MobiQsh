             CMD        PROMPT('SQL Query Src and Export CSV')
             PARM       KWD(SRCFILE) TYPE(QUAL1) MAX(1) PROMPT('SQL +
                          source file' 2)
             PARM       KWD(SRCMBR) TYPE(*CHAR) LEN(10) DFT(*NONE) +
                          EXPR(*YES) CASE(*MONO) PROMPT('Source +
                          member' 3)
             PARM       KWD(IFSFILE) TYPE(*CHAR) LEN(255) DFT(*NONE) +
                          SPCVAL((*NONE *NONE)) MAX(1) PROMPT('SQL +
                          IFS source file' 4)
             PARM       KWD(PARMS) TYPE(*CHAR) LEN(100) RSTD(*NO) +
                          MAX(30) EXPR(*YES) CASE(*MIXED) +
                          INLPMTLEN(32) PROMPT('SQL placeholder +
                          parm name' 5)
             PARM       KWD(PARMVALS) TYPE(*CHAR) LEN(100) RSTD(*NO) +
                          MAX(30) EXPR(*YES) CASE(*MIXED) +
                          INLPMTLEN(32) PROMPT('SQL parm +
                          replacement value' 6)
             PARM       KWD(OUTFILE) TYPE(QUAL2) MIN(0) MAX(1) +
                          PROMPT('Temp file to receive results' 7)
             PARM       KWD(EMPTYERROR) TYPE(*CHAR) LEN(4) +
                          RSTD(*YES) DFT(*YES) VALUES(*NO *YES) +
                          MIN(0) MAX(1) PROMPT('Escape error if no +
                          result data' 8)
             PARM       KWD(NAMING) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*SYS) VALUES(*SYS *SQL) MIN(0) MAX(1) +
                          PROMPT('Naming' 9)
             PARM       KWD(PROMPT) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) MIN(0) MAX(1) +
                          PROMPT('Prompt RUNSQL' 10)
             PARM       KWD(CRTIDCOL) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) MIN(0) MAX(1) +
                          PROMPT('Create row identity column' 11)
             PARM       KWD(IDCOLNAME) TYPE(*CHAR) DFT(RECID) MIN(0) +
                          MAX(1) CASE(*MIXED) PROMPT('Record ID +
                          column name' 12)
             PARM       KWD(DLTTMPSRC) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*YES) VALUES(*NO *YES) MIN(0) MAX(1) +
                          PROMPT('Delete temp source file after' 13)
    /*       PARM       KWD(SQLLOC) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*SQLSTMT) VALUES(*SQLSTMT *SRCMBR +
                          *IFSFILE) MIN(0) MAX(1) PROMPT('SQL +
                          source from location type' 1)    */
             PARM       KWD(SQL) TYPE(*CHAR) LEN(5000) DFT(*SRCMBR) +
                          SPCVAL((*SRCMBR *SRCMBR) (*IFSFILE +
                          *IFSFILE)) EXPR(*YES) CASE(*MIXED) +
                          PROMPT('SQL query' 1)
             PARM       KWD(DLTCMTLINE) TYPE(*CHAR) LEN(4) +
                          RSTD(*YES) DFT(*YES) VALUES(*NO *YES) +
                          MIN(0) MAX(1) PROMPT('Del comment line +
                          from temp src' 14)
             PARM       KWD(DSPTMPSRC) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) MIN(0) MAX(1) +
                          PROMPT('Display temp source member' 15)
             PARM       KWD(EXPORTIFS) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Export results to +
                          IFS file' 16)
             PARM       KWD(TOSTMF) TYPE(*CHAR) LEN(255) +
                          DFT('/tmp/@@prefix_@@timestamp.csv') +
                          MIN(0) MAX(1) CASE(*MIXED) PROMPT('To +
                          destination IFS output file' 17)
             PARM       KWD(PREFIX) TYPE(*CHAR) LEN(50) +
                          DFT('qrysrcexp') MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Destination IFS file +
                          prefix' 18)
             PARM       KWD(MBROPT) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*ADD) VALUES(*ADD *REPLACE) MIN(0) +
                          MAX(1) CASE(*MONO) PROMPT('Replace or add +
                          records' 19)
             PARM       KWD(RCDDLM) TYPE(*CHAR) LEN(10) DFT(*CRLF) +
                          SPCVAL((*EOR *EOR) (*CRLF *CRLF) (*LFCR +
                          *LFCR) (*CR *CR) (*LF *LF)) CASE(*MIXED) +
                          PROMPT('Record delimiter' 20)
             PARM       KWD(STRDLM) TYPE(*CHAR) LEN(10) +
                          DFT(*DBLQUOTE) SPCVAL((*DBLQUOTE +
                          *DBLQUOTE) (*NONE *NONE)) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('String delimiter' 21)
             PARM       KWD(FLDDLM) TYPE(*CHAR) LEN(10) DFT(',') +
                          SPCVAL((*TAB *TAB)) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Field delimiter' 22)
             PARM       KWD(DTAFMT) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*DLM) VALUES(*FIXED *DLM) MIN(0) +
                          MAX(1) CASE(*MIXED) PROMPT('Data format' 23)
             PARM       KWD(ADDCOLNAME) TYPE(*CHAR) LEN(10) +
                          RSTD(*YES) DFT(*SQL) VALUES(*SQL *SYS +
                          *NONE) MIN(0) MAX(1) CASE(*MIXED) +
                          PROMPT('Add column names' 24)
             PARM       KWD(RMVBLANK) TYPE(*CHAR) LEN(10) RSTD(*YES) +
                          DFT(*BOTH) VALUES(*NONE *SYS *NONE *BOTH +
                          *LEADING *TRAILING *EOR) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Remove blanks' 25)
             PARM       KWD(STRESCCHR) TYPE(*CHAR) LEN(10) +
                          RSTD(*YES) DFT(*STRDLM) SPCVAL((*STRDLM +
                          *STRDLM) (*NONE *NONE)) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Remove blanks' 26)
             PARM       KWD(NULLIND) TYPE(*CHAR) LEN(4) RSTD(*YES) +
                          DFT(*NO) VALUES(*NO *YES) MIN(0) MAX(1) +
                          CASE(*MIXED) PROMPT('Null field +
                          indicator' 27)
             PARM       KWD(DSPIFSFILE) TYPE(*CHAR) LEN(4) +
                          RSTD(*YES) DFT(*NO) VALUES(*NO *YES) +
                          MIN(0) MAX(1) CASE(*MIXED) +
                          PROMPT('Display exported IFS file' 28)
             PARM       KWD(DLTOUTFILE) TYPE(*CHAR) LEN(4) +
                          RSTD(*YES) DFT(*YES) VALUES(*NO *YES) +
                          MIN(0) MAX(1) CASE(*MIXED) PROMPT('Delete +
                          outfile after export' 29)
 QUAL2:      QUAL       TYPE(*NAME) LEN(10) DFT(SQLTMP0001) EXPR(*YES)
             QUAL       TYPE(*NAME) LEN(10) DFT(QTEMP) EXPR(*YES) +
                          PROMPT('Library')
 QUAL1:      QUAL       TYPE(*NAME) LEN(10) DFT(*NONE) SPCVAL((*NONE +
                          *NONE)) MIN(0) EXPR(*YES)
             QUAL       TYPE(*NAME) LEN(10) DFT(*LIBL) SPCVAL((*LIBL +
                          *LIBL)) EXPR(*YES) PROMPT('Library')
