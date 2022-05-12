from tkinter import *
from tkinter.messagebox import *


# programme factorielle
def calculate():
    fact = 1
    N = input.get()
    acceptable_result = False

    while acceptable_result is not True:
        try:
            N = int(N)
        except ValueError:
            showerror("ATTENTION", "La valeur que vous avez entré est invalide veuillez inscrire un nombre entier")
            break
        if N > 0:
            for i in range(1, N + 1):
                fact = fact * i
                acceptable_result = True
        elif N < 0:
            showerror("ATTENTION", "Vous ne pouvez pas inscrire de valeurs négatives, veuillez relancer le programme")
            break

        showinfo("Résultat du calcul", f"La factorielle de {N} est {fact}")


# création d'une première fenêtre
window = Tk()
# personnalisation de la fenêtre
# changer le titre
window.title("Calcul Factorielle")
# changer la taille
window.geometry("480x360")
window.minsize(480, 360)
# changer le fond d'écran
window.config(background='#0E3B6E')
# créer une frame
frame = Frame(window, bg='#0E3B6E')

# message afficher (label)
label_title = Label(frame, text="Entrez un nombre entier", font=("Montserrat", 30), bg='#0E3B6E', fg='white')
label_title.pack()
# Entrée
value = StringVar()
input = Entry(frame, textvariable=value, width=30, font=("Montserrat", 25))
input.pack()
# bouton
calculate_button = Button(frame, text="Calculer", command=calculate, font=("Montserrat", 25), fg='#0E3B6E')
calculate_button.pack(pady=25, fill=X)

# afficher la frame
frame.pack(expand=YES)
# afficher
window.mainloop()
