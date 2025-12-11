void	main (string []args) {
	string content;
	FileUtils.get_contents ("content", out content);

	string []tab = content.split ("\n");

	var result = 0;
	for (int j = 0; tab[j] != null; j++) {
		for (int i = 0; tab[j][i] != '\0'; i++) {
			if (tab[j][i] == 'S')
				tab[j + 1].data[i] = '|';
			if (tab[j][i] == '^' && tab[j - 1][i] == '|') {
				tab[j].data[i - 1] = '|';
				tab[j].data[i + 1] = '|';
				result++;
			}
			if (j != 0 && tab[j - 1][i] == '|' && tab[j][i] != '^')
				tab[j].data[i] = '|';
		}
	}
	foreach (unowned var element in tab) {
		print (element + "\n");
	}
	print ("result : %d\n", result);
}
