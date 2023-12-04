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

programa = True

while programa:
    input_medicine = input("olá usuário, escolha um remedio, digite ")
    if input_medicine == "0":
        programa = False
    output_class1 = ["REMEDIO1"]
    output_class2 = ["REMEDIO2"]
    output_class3 = ["REMEDIO3"]

    if input_medicine in output_class1:
        print("Remedio está disponível para retirada.")
    elif input_medicine in output_class2:
        print("Remedio existe, mas não pode ser alcançado pelo braço.")
    elif input_medicine in output_class3:
        print("Remedio não está disponível, devo incluir outro remédio?")
        if yes:
            input("Digite o nome do remédio.")
    else:
        print()
