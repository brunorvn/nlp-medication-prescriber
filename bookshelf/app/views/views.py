# views/task_views.py
from flask import render_template
from models.models import Book, Shelf

shelves = [Shelf(id_number=1), Shelf(id_number=2)]
books = [
    Book("Flask for Dummies", 10.0, 5.0, False, shelves[0]),
    Book("Python Mastery", 12.5, 6.5, True, shelves[1]),
]


def index():
    """Index

    Returns:
        Template 'index.html'
    """
    return render_template("index.html", books=books)
