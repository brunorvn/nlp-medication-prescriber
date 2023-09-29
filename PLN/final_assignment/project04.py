import pgf

gr = pgf.readPGF("MedicalPrescriptionEng.pgf")
eng = gr.languages["FoodsEngRGL"]

name = input("Write a sentence in English: ")
try:
    i = eng.parse(name)
    p, e = i.__next__()
    print(e)
    print("You have written: " + eng.linearize(e))
except pgf.ParseError:
    print("This is not a valid sentence of FoodsEngRGL.")
