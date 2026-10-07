from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route('/')
def home():
    return "<h1>Hello World!</h1>"


@app.route('/usuario', methods=['GET'])
def buscar_usuario():
    usuario = {
        "nome": "Renan",
        "idade": 40,
        "telefone": "(19) 988446677"
    }

    return jsonify(usuario)


@app.route('/produto', methods=['POST'])
def cadastrar_produto():
    dados = request.get_json()

    if not dados:
        return jsonify({
            "erro": "Dados inválidos"
        }), 400

    print(f"Novo produto: {dados}")

    return jsonify({
        "message": "Produto cadastrado com sucesso",
        "produto_cadastrado": dados
    }), 201


@app.route('/produto', methods=['PUT'])
def atualizar_produto():
    produto = {
        "id": 1,
        "nome": "Caneta azul",
        "preco": 1.5,
        "descricao": "Caneta esferográfica",
        "marca": "Bic"
    }

    dados = request.get_json()

    if not dados:
        return jsonify({
            "erro": "Dados inválidos"
        }), 400

    if dados.get('id') == produto['id']:
        produto = dados
        print(f'Produto atualizado: {produto}')
        return jsonify({"message": "Produto atualizado com sucesso!"}), 200
    else:
        return jsonify({"message": "produto não encontrado"}), 404

        print(f"Produto atualizado: {produto}")

        return jsonify({
            "message": "Produto atualizado com sucesso!",
            "produto_atualizado": produto
        }), 200

    return jsonify({
        "erro": "Produto não encontrado"
    }), 404


if __name__ == '__main__':
    app.run(debug=True)