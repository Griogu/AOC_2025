void	main (string []args) {
	string content;
	FileUtils.get_contents ("content", out content);

	string []tab = content.split ("\n");

	long result = 0;
	for (var j = 0; tab[j] != null; j++) {
		for (var i = 0; tab[j][i] != '\0'; i++) {
			if (tab[j][i] == 'S')
				tab[j + 1].data[i] = '|';
			if (tab[j][i] == '^' && tab[j - 1][i] == '|') {
				tab[j].data[i - 1] = '|';
				tab[j].data[i + 1] = '|';
			}
			if (j != 0 && tab[j - 1][i] == '|' && tab[j][i] != '^')
				tab[j].data[i] = '|';
		}
	}
	var new_tab = new long[tab.length, tab[0].length + 1];
	for (var i = 0; i < tab.length; i++) {
		for (var j = 0; j < tab[0].length; j++) {
			if (tab[i][j] == '.')
				new_tab[i, j] = 0;
			if (tab[i][j] == 'S') {
				new_tab[i, j] = 1;
				new_tab[i + 1, j] = 1;
			}
			if (tab[i][j] == '^') {
				new_tab[i, j] = 0;
				new_tab[i,  j - 1] += new_tab[i - 1, j];
				new_tab[i,  j + 1] += new_tab[i - 1, j];
			}
			if (i != 0 && new_tab[i - 1, j] != 0 && tab[i][j] != '^' && tab[i][j - 1] == '^')
				new_tab[i, j] += new_tab[i - 1, j];
			else if (i != 0 && new_tab[i - 1, j] != 0 && tab[i][j] != '^')
				new_tab[i, j] = new_tab[i - 1, j];
		}
	}
	for (var i = 0; i < tab.length - 1; i++) {
		for (var j = 0; j < tab[0].length; j++) {
			if (i == tab.length - 2)
				result += new_tab[i, j];
		}
	}
	print ("result : %lu\n", result);
}
