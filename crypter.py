import ast, string, random

chrs = list(string.ascii_letters+string.digits+'@#$_&-+/*!?')

def set_key(key):
    global rand_chrs
    rand_chrs = chrs.copy()
    random.seed(key)
    random.shuffle(rand_chrs)

set_key(1)

def encrypt(phrase:str):
    enc = [rand_chrs[chrs.index(char)] for char in phrase.encode('utf-8').hex()]
    return ''.join(enc)

def decrypt(code): 
    dec = [chrs[rand_chrs.index(char)] for char in code]
    try:
        return bytes.fromhex(''.join(dec)).decode('utf-8')
    except: 
        return ''.join(dec)



