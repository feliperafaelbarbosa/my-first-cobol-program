      ******************************************************************
      * PROGRAMADOR: FELIPE RAFAEL BARBOSA 
      * DATA: 28/09/2025
      * OBJETIVO: PRIMEIRO PROGRAMA COBOL
      ****************************************************************** 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG001A.
      *------------------------------------------------------------------ 
       DATA DIVISION.  
       FILE SECTION.  
       WORKING-STORAGE SECTION.  
      * YYYYMMDD 
       01 WS-DATA    PIC X(08) VALUE SPACES.  
       01 WS-DATA2   PIC X(10) VALUE SPACES.
       01 WS-DATA3   REDEFINES WS-DATA2.
           05 WS-DATA3-DIA    PIC X(02).
           05 FILLER          PIC X(01).
           05 WS-DATA3-MES    PIC X(02).
           05 FILLER          PIC X(01).
           05 WS-DATA3-ANO    PIC X(04).
      * TIME
       01 WS-TIME    PIC X(12) VALUE SPACES.
       01 WS-TIME2   PIC X(10) VALUE SPACES.
       01 WS-TIME3   REDEFINES WS-TIME2.
           05 WS-TIME3-HOR    PIC X(02).
           05 FILLER          PIC X(01).
           05 WS-TIME3-MIN    PIC X(02).
           05 FILLER          PIC X(01).
           05 WS-TIME3-SEG    PIC X(02).

       01 WS-NOME   PIC X(25) VALUE SPACES.
      *----------------------------------------------------------------- 
       PROCEDURE DIVISION.
       
       0001-PROCESSAR.  
           DISPLAY "INICIO DO PROGRAMA"  
           PERFORM 0002-MENSAGEM 
           PERFORM 0003-NOME 
           PERFORM 9999-FINALIZAR 
           .
       0001-END.
      *----------------------------------------------------------------- 
       0002-MENSAGEM.
           DISPLAY "0002-MENSAGEM" 
           DISPLAY "OLA, SEJA BEM VINDO!"
           ACCEPT WS-DATA FROM DATE YYYYMMDD

           ACCEPT WS-TIME FROM TIME
      *     DISPLAY "DATA: " WS-DATA 
           MOVE WS-DATA(1:4) TO WS-DATA3-ANO 
           MOVE WS-DATA(5:2) TO WS-DATA3-MES 
           MOVE WS-DATA(7:2) TO WS-DATA3-DIA 
      *     DISPLAY "ANO: " WS-DATA3-ANO
      *     DISPLAY "MES: " WS-DATA3-MES
      *     DISPLAY "DIA: " WS-DATA3-DIA
           MOVE '/' TO WS-DATA3(3:1)
           MOVE '/' TO WS-DATA3(6:1)
           DISPLAY "DATA: " WS-DATA3

           MOVE WS-TIME(1:2) TO WS-TIME3-HOR 
           MOVE WS-TIME(3:2) TO WS-TIME3-MIN 
           MOVE WS-TIME(5:2) TO WS-TIME3-SEG 

           MOVE ':' TO WS-TIME3(3:1)
           MOVE ':' TO WS-TIME3(6:1)
          
      *     DISPLAY "TIME: " WS-TIME
           DISPLAY "HORA: " WS-TIME3
           .
       0002-END.
      *----------------------------------------------------------------- 
       0003-NOME.
           DISPLAY "0003-NOME" 
           MOVE "FELIPE RAFAEL BARBOSA" TO WS-NOME
           DISPLAY "NOME: " WS-NOME
           .  
       0003-END.  
      *----------------------------------------------------------------- 
       9999-FINALIZAR.  
           DISPLAY "FIM DO PROGRAMA" 
           STOP RUN
           .  
       9999-END.
