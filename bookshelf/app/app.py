# app.py
from flask import Flask, render_template, request, redirect, session, flash


class Book:
    """Book class for the application"""

    def __init__(
        self,
        title: str,
        height: float = 0.0,
        width: float = 0.0,
        available: bool = True,
        shelf: int = 1,
    ) -> None:
        self.title = title
        self.height = height
        self.width = width
        self.available = available
        self.estante = shelf

    def __repr__(self):
        return f"{self.__class__.__name__}: \nTitle: {self.title},\nHeight: {self.height},\nWidth: {self.width},\nStatus: {'Avaliable' if self.available else 'Not Available'}"


book1 = Book("Flask for Dummies")
book2 = Book("Python for Dummies")
book3 = Book("MySQL for Dummies")
estante = [book1, book2, book3]
secret = "123mudar"

# flask app
app = Flask(__name__)
app.secret_key = secret


@app.route("/")
def index():
    """Página inicial da aplicação"""
    return render_template(
        "index.html", titulo="Estante de livros do Rielson", estante=estante
    )


@app.route("/novo")
def novo():
    """Função para criar novo livro na estante"""
    return render_template("novo.html", titulo="Novo Livro")


@app.route("/insert", methods=["GET", "POST"])
def salvar():
    """Método para salvar um novo livro"""
    titulo = request.form["title"]
    height = float(request.form["height"])
    width = float(request.form["width"])
    available = bool(request.form["available"])
    book = Book(titulo, height, width, available)
    estante.append(book)
    return redirect("/")


@app.route("/login")
def login():
    """Página de entrada com login e senha."""
    return render_template("login.html")


@app.route(
    "/autenticar",
    methods=[
        "POST",
    ],
)
def autenticar():
    if "admin" == request.form["senha"]:
        session["usuario_logado"] = request.form["usuario"]
        flash(session["usuario_logado"] + "logado com sucesso.")
        return redirect("/")
    else:
        flash("Invalid login credentials")
        return redirect("/login")


@app.route("/logout")
def logout():
    session["usuario_logado"] = None
    flash("Logout Success")
    return redirect("/")


def main():
    """main function to start Flask App"""
    app.run(debug=True)


if __name__ == "__main__":
    main()
