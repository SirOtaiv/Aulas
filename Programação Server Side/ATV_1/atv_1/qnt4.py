nota = []
soma = 0
qnt_nota = 4
for i in range(qnt_nota):
    nota.append(input('Insira a nota '+str(int(i)+1)+': '))
    soma = soma + int(nota[i])
media = int(soma/qnt_nota)
print('A media e '+ str(media))