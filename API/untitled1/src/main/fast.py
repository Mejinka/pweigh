with open('output.txt', 'w') as f:
    for i in range(0, 14):
        f.write(f"     idMapas{i}desc = data_mapas[0][idMapas{i}desc_index])\n")
