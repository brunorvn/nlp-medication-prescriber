import pgf

gr = pgf.readPGF("FoodsRGL.pgf")
eng = gr.languages["FoodsEngRGL"]
bra = gr.languages["FoodsBraRGL"]

name = input("Write a sentence in English: ")
try:
    i = eng.parse(name)
    p, e = i.__next__()
    print(e)
    i = bra.parse(name)
    p, e = i.__next__()

    bra_translation = bra.linearize(e)

    print("You have written: " + eng.linearize(e))
    print("Tradução para Brasileiro: " + bra_translation)

except pgf.ParseError:
    print("This is not a valid sentence of FoodsEngRGL.")
