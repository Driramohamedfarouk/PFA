# Convert twitter files into x-stream type 1 inputs
# Arguments <name of matrix market file> <output file name>
import sys
import struct
import random

# Choose one
add_rev_edges = False
# add_rev_edges = True

random.seed(0)

with open(sys.argv[1], "r") as infile, open(sys.argv[2], "wb") as outfile, open(sys.argv[2] + ".ini", "w") as outfile_meta:
    outfile_meta.write("[graph]\n")
    outfile_meta.write("type=1\n")
    outfile_meta.write("name=" + sys.argv[2] + "\n")

    s = struct.Struct('I I')
    edges = 0
    vertices = 0
    for line in infile:
        if line[0] == '#':
            continue  # skip comment lines

        vector = line.strip().split("\t")
        if not all(map(str.isnumeric, vector)):  # skip non-numeric lines
            continue

        vector = list(map(int, vector))
        print(vector)
        #vector.append(random.random())  # Edge weight
        if vector[0] > vertices:
            vertices = vector[0]
        if vector[1] > vertices:
            vertices = vector[1]
        edges = edges + 1
        outfile.write(s.pack(*vector))
        if add_rev_edges:
            edges = edges + 1
            tmp = vector[0]
            vector[0] = vector[1]
            vector[1] = tmp
            outfile.write(s.pack(*vector))

    vertices = vertices + 1
    outfile_meta.write("vertices=" + str(vertices) + "\n")
    outfile_meta.write("edges=" + str(edges) + "\n")
