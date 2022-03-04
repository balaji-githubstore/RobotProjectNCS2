*** Settings ***
Library     DatabaseLibrary

Suite Setup      Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Suite Teardown   Disconnect From Database

*** Test Cases ***
TC1
    Table Must Exist    Products

    ${rowcount}     Row Count    Select * from Products
    Log To Console    ${rowcount}

TC2
    @{output}     Query    select * from Products order by product_id
    Log To Console    ${output}
    Log To Console    ${output}[0]

TC3
    ${RoCout}       Row Count    select * from Products where product_id>= 10 and product_id<=20
    Log To Console    ${RoCout}

TC4
    @{lists}    Query     select * from Products where product_id>= 10 and product_id<=20   
    Log To Console    ${lists}

#Validation
TC5
    Row Count Is Equal To X    select * from Products where product_id>= 10 and product_id<=20    3
    Row Count Is Greater Than X    select * from Products where product_id>= 10 and product_id<=20    2
    Row Count Is Less Than X    select * from Products where product_id>= 10 and product_id<=20    5
    Row Count Is 0    select * from Products where product_id=50000
    Check If Exists In Database     select * from Products
    Check If Not Exists In Database     select * from Products where product_id=500

# delete, update, insert
TC6
    Execute Sql String    update Products set productname='LaptopX' where product_id=1
    Row Count Is Equal To X    select * from Products where productname='LaptopX'     1
     @{output}     Query    select * from Products where productname='LaptopX'
    Log To Console    ${output}


TC7
    Execute Sql String    Insert into Products (product_id,productname,description) values (5001,'PhoneX','mobile')
    Row Count Is Equal To X    select * from Products where product_id=5001    1

TC8
#    Execute Sql String    Insert into Products (product_id,productname,description) values (50001,'Aradhana','Laptop')
   Execute Sql String     Delete from Products where product_id=1998
   Execute Sql String         Insert into Products (product_id,productname,description) values (1998,'Yash','9918989')



    Execute Sql String    Insert into Products (product_id,productname,description) values (4001,'NIKHIL','LAppy')
    Row Count Is Equal To X    slect * from Products where product_id=10000    1


