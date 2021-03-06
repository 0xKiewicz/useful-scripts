###################################################################################
# Generates a list of all possible combinations of ports and sends TCP connections#
# @_Kiewicz                                                                        #
###################################################################################
#!/usr/bin/env python

import argparse
import socket
import time
from itertools import permutations

def generate_permutations(p):
	perm = list(permutations(p))
	return perm

def knock(ports, target, delay):
	portlist = generate_permutations(ports)
	for i in portlist:
	
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		print("Knocking :" + str(i))
		for j in range(int(len(i))):

			try:
				print("[+] Knocking port: " + str(i[j])) 
				s.connect((target, i[j]))
				time.sleep(delay)
			except:
				# Errors will happen 
				print()
		# Wait 2 seconds between each iteration
		time.sleep(2)
	print("[i] FINISH. Check if you have opened that secret door!")

def main():
	parser = argparse.ArgumentParser(prog='SKnocker', description='A simple port knocker')
	parser.add_argument('-t', '--target', help='Target IP address', required=True)
	parser.add_argument('-p','--ports', nargs='+', type=int, help='Ports to knock (order does not matter)', required=True)
	parser.add_argument('-d', '--delay', type=int, default=250, help='Time in ms between knocks (default: 250ms)')
	
	args = parser.parse_args()

	print("Generating all permutations and start knocking...")
	knock(args.ports, args.target, args.delay)

if __name__ == '__main__':
	main()
