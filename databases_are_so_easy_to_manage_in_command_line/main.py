''' Script checks if a given argv is among the arglist '''

import sys

if len(sys.argv) >= 2:
	arglist = ["create", "print", "insert", "delete"]
	arg1 = str(sys.argv[1])

	if (sys.argv[1]) in arglist:
		print str(sys.argv[1])
	else:
		print "Undefined action %s" % (arg1)
else:
	print "Please enter an action"
