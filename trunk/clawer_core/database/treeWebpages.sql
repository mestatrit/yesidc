select RPAD(' ', LEVEL * 8) || wb.code,
       wb.ID,
       wb.CODE_TYPE,
       wb.CODE,
       wb.NAME,
       wb.memo,
       wb.CODE_LEVEL,
       wb.SORT_LIST,
       wb.CREATE_DATE,
       wb.UPDATE_DATE,
       wb.CREATE_USER,
       wb.UPDATE_USER
  FROM WEB_ELEMENTS wb
CONNECT BY PRIOR id = code_type
 START WITH CODE = 'types'
for update
