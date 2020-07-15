# Suffix suffices, right?
# 
# Hint for beginners: 
# Can you see the two assert functions in the attached python script? 
# These are describing the preconditions to be met.
# These statements read the secret content of the file named flag.txt and check if they are the correct flag or not. 
# Your task is to find a string that satisfies these conditions. Actually, only one golden value can satisfy these conditions, so if you do it correctly, you'll get the correct flag then.


assert(len(open('flag.txt', 'rb').read()) <= 50)
assert(str(int.from_bytes(open('flag.txt', 'rb').read(), byteorder='big') << 10000).endswith('1002773875431658367671665822006771085816631054109509173556585546508965236428620487083647585179992085437922318783218149808537210712780660412301729655917441546549321914516504576'))
