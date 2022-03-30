# ER

## Entity

- Users
  - userno PK 
  - userfirstname Not Null varchar(10)
  - usermiddlename 
  - userlastname Not Null
  - usernickname Unique Not Null
  - useremail
  - usergender
  - userpwd Not Null
  - userdob
  - usernote1
  - usernote2
- Tasks
  - taskno PK
  - taskcontent
  - taskdeadline
  - taskorder
  - taskisimportant
  - taskisfinished
  - userno FK
- UserChangeRecords
  - chgno PK
  - chgtime
  - chgentry
  - chgbefore
  - chgafter
  - chgpwd
  - chgpwdbefore
  - chgpwdafter
  - userno FK
- UserLoginActivityRecords
  - actno PK
  - acttime
  - acttype
  - userno FK