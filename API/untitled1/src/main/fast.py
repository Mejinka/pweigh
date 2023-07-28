with open('output.txt', 'w') as f:
    for i in range(1, 14):
        f.write(f"final TextEditingController result{i} = TextEditingController();\n")
