import mysql.connector

def main():
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="d1"
    ) 
    print(mydb)
    mycursor = mydb.cursor()
    mycursor.execute("SELECT r_date FROM t1 where name = 'Daniel'" )
    r_date = mycursor.fetchall()[-1][0]
    if r_date is None:
        print('Patron has already issueed one book. Do not allow them to issue another book.')
    else:
        print('Go ahead.')


if __name__ == '__main__':
    main()
    