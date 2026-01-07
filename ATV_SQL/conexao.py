import mysql.connector

class Conexao:
    @staticmethod
    def conectar():
        return mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "admin",
            database = "teste"
        )
    
#teste de conexao
if __name__ == "__main__":
    conexao = Conexao.conectar()
    if conexao.is_connected():
        print("Conexão bem-sucedida!")
        conexao.close()
    else:
        print("Falha na conexão.")
    

    

