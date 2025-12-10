void	main (string []args) {
	string content;
	FileUtils.get_contents ("content", out content);

	string []tab = content.split ("\n");
	var operator = tab[tab.length - 2][0];
	long result = 0;
	long tmp_result = tab[tab.length - 2][0] == '+' ? 0 : 1;
	for (long i = 0; i < tab[0].length; i++) {
		if (tab[tab.length - 2][i] != ' ') {
			operator = tab[tab.length - 2][i];
			tmp_result = operator == '+' ? 0 : 1;
		}
		var tmp = "";
		for (long j = 0; j < tab.length - 2; j++)
			tmp += tab[j][i].to_string ();
		if (operator == '+' && long.parse (tmp) != 0)
			tmp_result += long.parse (tmp);
		else if (operator == '*' && long.parse (tmp) != 0)
			tmp_result *= long.parse (tmp);
		if (long.parse (tmp) == 0)
			result += tmp_result;
	}
	result += tmp_result;
	print ("result : %lu\n", result);
}
