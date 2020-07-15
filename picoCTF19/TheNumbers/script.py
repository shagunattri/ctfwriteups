import string

a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

k = [
16,9,3,15,3,20,6,20,8,5,14,21,13,2,3,18,19,13,1,19,15,14
]

print(''.join([a[n-1] for n in k]))
print(''.join([a[n] for n in k]))

