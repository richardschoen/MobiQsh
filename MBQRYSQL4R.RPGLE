**free
       //-------------------------------------------------------------------------------------------
       // MBQRYSQL4R  -  Scan and Replace to set timestamp in IFS file path   comments.
       //-------------------------------------------------------------------------------------------

       // Program DS
       Dcl-Ds *N psds;
          PROGID *PROC;
       End-Ds;

       // Program *entry parameter list prototype
       Dcl-pi MBQRYSQL4R;
          p_ifsfile CHAR(255);
          p_date10  CHAR(10);
          p_time9   CHAR(9);
          p_rtnifsfile char(255);
          p_rtnerror CHAR(1);
          p_prefix char(50);
       End-pi;


       DCL-S posfound int(10);
       DCL-S datetime varchar(100);

       // Initialize parm arrays from passed in values
       *inlr=*on;
       p_rtnerror='0';
       p_rtnifsfile='';

       // Monitor for errors
       Monitor;

         datetime=%trim(p_date10) + '_' + %trim(p_time9);
         p_rtnifsfile = %scanrpl('@@TIMESTAMP':datetime:p_ifsfile);
         p_rtnifsfile = %scanrpl('@@timestamp':datetime:p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@DATE':%trim(p_date10):p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@date':%trim(p_date10):p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@TIME':%trim(p_time9):p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@time':%trim(p_time9):p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@PREFIX':%trim(p_prefix):p_rtnifsfile);
         p_rtnifsfile = %scanrpl('@@prefix':%trim(p_prefix):p_rtnifsfile);

       // Monitor for errors
       On-Error;
          p_rtnerror='1';
          p_rtnifsfile='';
          *inlr=*on;
          return;
     Endmon;

     // Exit
     *inlr=*on;
     return;
