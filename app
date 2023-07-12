#!/bin/python

import crypter
from getpass import getpass



while True:
  
    print(f' 1 - Cifrar', ' 2 - Decifrar', ' 3 - Sair\033[m', sep='\n')
    option = input(' Quer qual? ')
    if option == '1':
        txt = input(f' Escreva alguma coisa:\n \033[7m')
        key = getpass(f'\033[m Sua chave: ')

        if key.isnumeric():
            crypter.set_key(int(key))
        else:
            print(f' Apenas chaves numericos!')
            continue

        print(' ', crypter.encrypt(txt))

    if option == '2':
        enc = input(' Cole aqui para decifrar:\n')
        key = getpass(' Digite a chave: ')

        if key.isnumeric():
            crypter.set_key(int(key))
            
        print(' ', crypter.decrypt(enc))   
            

    if option == '3':
        break
