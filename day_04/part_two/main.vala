void	main (string []args) {
	string []tab = args[1].split ("\n");
	int	result = -1, last_result = 0;

	while (result != 0) {
		result = 0;
		for (int y = 0; tab[y] != null; y++) {
			for (int x = 0; tab[y][x] != '\0'; x++) {
				var counter = 0;
				if (tab[y][x] == '@') {
					if (y != 0 && x != 0 && (tab[y - 1][x - 1] == '@' || tab[y - 1][x - 1] == 'X'))
						counter++;
					if (y != 0 && (tab[y - 1][x] == '@' || tab[y - 1][x] == 'X'))
						counter++;
					if (y != 0 && x != tab[y].length && (tab[y - 1][x + 1] == '@' || tab[y - 1][x + 1] == 'X'))
						counter++;
					if (x != 0 && (tab[y][x - 1] == '@' || tab[y][x - 1] == 'X'))
						counter++;
					if (x != tab[y].length && (tab[y][x + 1] == '@' || tab[y][x + 1] == 'X'))
						counter++;
					if (y != tab.length - 1 && x != 0 && (tab[y + 1][x - 1] == '@' || tab[y + 1][x - 1] == 'X'))
						counter++;
					if (y != tab.length - 1 && (tab[y + 1][x] == '@' || tab[y + 1][x] == 'X'))
						counter++;
					if (y != tab.length - 1 && x != tab[y].length && (tab[y + 1][x + 1] == '@' || tab[y + 1][x + 1] == 'X'))
						counter++;
					if (counter < 4) {
						tab[y].data[x] = 'X';
						result++;
					}
				}
			}
		}
		foreach (unowned var elem in tab) {
			for (int i = 0; elem[i] != '\0'; i++) {
				if (elem[i] == 'X')
					elem.data[i] = '.';
			}
		}
		last_result += result;
	}
	print (@"$last_result\n");
}
