badString = "UA"

result = set([])

tmpList = [""] * 7

for i in range(6):
	tmpList[i] = badString[0];
	tmpList[i + 1] = badString[1];

	for k1 in "AUGC":
		for k2 in "AUGC":
			for k3 in "AUGC":
				for k4 in "AUGC":
					for k5 in "AUGC":
						tmpList[(i+2) % 7] = k1
						tmpList[(i+3) % 7] = k2
						tmpList[(i+4) % 7] = k3
						tmpList[(i+5) % 7] = k4
						tmpList[(i+6) % 7] = k5
						result.add("".join(tmpList))

print(6 * 4**5)
print(len(result))
print(6 * 4**5 - len(result))