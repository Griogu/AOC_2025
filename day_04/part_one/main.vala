void	main (string []args) {
	string []tab = args[1].split ("\n");
	int	result = 0;

	for (int y = 0; tab[y] != null; y++) {
		for (int x = 0; tab[y][x] != '\0'; x++) {
			var counter = 0;
			if (tab[y][x] == '@') {
				if (y != 0 && x != 0 && tab[y - 1][x - 1] == '@')
					counter++;
				if (y != 0 && tab[y - 1][x] == '@')
					counter++;
				if (y != 0 && x != tab[y].length && tab[y - 1][x + 1] == '@')
					counter++;
				if (x != 0 && tab[y][x - 1] == '@')
					counter++;
				if (x != tab[y].length && tab[y][x + 1] == '@')
					counter++;
				if (y != tab.length - 1 && x != 0 && tab[y + 1][x - 1] == '@')
					counter++;
				if (y != tab.length - 1 && tab[y + 1][x] == '@')
					counter++;
				if (y != tab.length - 1 && x != tab[y].length && tab[y + 1][x + 1] == '@')
					counter++;
				if (counter < 4)
					result++;
			}
		}
	}
	print (@"$result\n");
}
