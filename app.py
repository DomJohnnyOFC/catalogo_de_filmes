
from flask import Flask, jsonify, render_template
from psycopg2.extras import RealDictCursor

from database import criar_conexao

app = Flask(__name__)


# Busca os filmes sem repetir títulos iguais
def buscar_filmes():
    conn = criar_conexao()

    try:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("""
                SELECT *
                FROM (
                    SELECT DISTINCT ON (LOWER(TRIM(titulo))) *
                    FROM filmes
                    ORDER BY LOWER(TRIM(titulo)), id DESC
                ) AS filmes_unicos
                ORDER BY id DESC;
            """)

            return cursor.fetchall()

    finally:
        conn.close()


# Página inicial
@app.route("/")
def home():
    filmes = buscar_filmes()
    return render_template("index.html", filmes=filmes)


# Listagem de filmes
@app.route("/filme", methods=["GET"])
def listar_filmes():
    filmes = buscar_filmes()
    return render_template("index.html", filmes=filmes)


# Excluir filme
@app.route("/deletar/<int:id>", methods=["POST"])
def deletar_filme(id):
    conn = criar_conexao()

    try:
        with conn.cursor() as cursor:
            cursor.execute(
                "DELETE FROM filmes WHERE id = %s RETURNING id",
                (id,)
            )
            filme_excluido = cursor.fetchone()

        if filme_excluido is None:
            conn.rollback()
            return jsonify({
                "sucesso": False,
                "mensagem": "Filme não encontrado."
            }), 404

        conn.commit()

        return jsonify({
            "sucesso": True,
            "mensagem": "Filme excluído com sucesso!"
        }), 200

    except Exception:
        conn.rollback()
        app.logger.exception("Erro ao excluir filme.")

        return jsonify({
            "sucesso": False,
            "mensagem": "Não foi possível excluir o filme."
        }), 500

    finally:
        conn.close()


# Testar conexão com o banco
@app.route("/teste/db", methods=["GET"])
def testar_conexao():
    conn = criar_conexao()

    try:
        with conn.cursor() as cursor:
            cursor.execute("SELECT 1")

        return jsonify({
            "mensagem": "Banco conectado com sucesso!"
        }), 200

    finally:
        conn.close()


if __name__ == "__main__":
    app.run(debug=True)
