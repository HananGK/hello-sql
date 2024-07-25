import mysql.connector

def print_user(user):

    config = {
        'host': '127.0.0.1', 
        'port': '3306',
        'database': 'hello_mysql',
        'user': 'root',
        'password': 'Cursocurso1;',
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    #query = 'SELECT * FROM users;'
    #query = 'SELECT * FROM users WHERE name ="' + user + '";'
    query = 'SELECT * FROM users WHERE name =%s;' #indicar parámetro tipo string
    print(query)
    #cursor.execute(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()


print_user('Hanan')
#print_user('"; UPDATE users SET age = "15" WHERE user_id=1; --')
