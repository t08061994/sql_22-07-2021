create table customerDetails(id integer identity(1,1),name nvarchar(30),mobileNumber nvarchar(10),emailId nvarchar(30),pan nvarchar(15),aadhar nvarchar(12))

alter table customerDetails add address nvarchar(300)

select * from customerDetails

/*'insert into customerDetails (name ,mobileNumber ,emailId ,pan,aadhar,address)values ('''||
naresh||
''','''||
9999999999||
''','''||
test@test.com||
''','''||
DFSG5678DF||
''','''||
111122223333||
''','''||
Hyderabad||
''')'*/

update customerDetails set emailId='naresh@test.com' where id='1'

update customerDetails set address='kolkata' where pan='7887QRF'
/*

'update customerDetails set emailId='''||
naresh@test.com||
''' where id='''||
1||
''''

*/

delete from  customerDetails where id='1'

truncate table customerDetails
sp_help customerDetails

select * from customerDetails where pan='7887QRF'

insert into customerDetails (id ,name ,mobileNumber ,emailId ,pan,aadhar)
values ('1','naresh','9999999999','test@test.com','DFSG5678DF','222233334444'),
('2','sharth','888888888','sharth@test.com','GHRT577','112222223333'),
('3','shekar','7777777777','shekar@test.com','455GHFDF','444455556666'),
('4','madhu','666666666','madhu@test.com','78945FH','555566667777'),
('5','naresh','9999999999','test@test.com','ET56GJHF','888899990000')

insert into customerDetails (name ,mobileNumber ,emailId ,pan,aadhar)
values ('naresh','9999999999','test@test.com','DFSG5678DF','222233334444'),
('sharth','888888888','sharth@test.com','GHRT577','112222223333'),
('shekar','7777777777','shekar@test.com','455GHFDF','444455556666'),
('madhu','666666666','madhu@test.com','78945FH','555566667777'),
('naresh','9999999999','test@test.com','ET56GJHF','888899990000')

drop table customerDetails










select * from customerdetails
drop table customerdetailss

create table customerdetailss(id nvarchar(10),name nvarchar(30),mobileNo nvarchar(10),Mailid nvarchar(30),pan nvarchar(15))
--creeat storedprocedure
create proc FetchCustomerData(@inputPan nvarchar(10))
as
Begin
select * from customerdetails where pan=@inputPan;


end

--execute procedure
FetchCustomerData 'ET56GJHF'
exec FetchCustomerData 'ET56GJHF'
execute FetchCustomerData 'ET56GJHF'


--kudvenkat youtabe channel




create table DBLogs( id integer identity(1,1),
        Application nvarchar(100),
		RequestTimestamp  nvarchar(100) ,
		RequestPayload  nvarchar(max),
		RequestPayloadTP  nvarchar(max),
		ResponsePayloadTP  nvarchar(max),
		ResponsePayload  nvarchar(max),
		ResponseTimestamp  nvarchar(100),
		ExceptionDetails  nvarchar(max))

		select * from DBLogs