int	get_max_len_tab (long [,]numbers, int i, int len) {
	var result = 0;

	for (int j = 0; j < len; j++) {
		if (numbers[j, i].to_string ().length > result)
			result = numbers[j, i].to_string ().length;
	}
	return result;
}

void	main (string []args) {
	string []tab = args[1].split ("\n");
	string []operator = /\s+/.split (tab[tab.length - 1]._strip ());
	long [,]numbers = new long[tab.length - 1, operator.length];
	int	counter = 0;
	long result = 0;

	foreach (unowned var element in tab) {
		var tmp = /\s+/.split (element._strip ());
		for (int i = 0; tmp[i] != null; i++)
			numbers[counter, i] = tmp[i].to_long ();
		counter++;
		if (counter == tab.length - 1)
			break ;
	}
	for (int i = 0; i < operator.length; i++) {
		var column = new long[tab.length - 1];
		var max_len = get_max_len_tab (numbers, i, tab.length - 1);
		long tmp_result = 1;
		for (int j = 0; j < tab.length - 1; j++) {
			column[j] = numbers[j, i];
		}
		var tmp2 = new long[tab.length - 1];
		for (int j = 0; j < tab.length - 1; j++) {
			for (int k = 0; k < max_len; k++) {
				if (column[k] != 0) {
					var tmp = column[k] % 10;
					column[k] /= 10;
					var tmp3 = @"$(tmp2[j])$tmp";
					tmp2[j] = tmp3.to_long ();
				}
			}
			if (operator[i][0] == '*')
				tmp_result *= tmp2[j];
			else if (operator[i][0] == '/')
				tmp_result /= tmp2[j];
			else if (operator[i][0] == '+')
				tmp_result += tmp2[j];
			else if (operator[i][0] == '-')
				tmp_result -= tmp2[j];
		}
		print (@"tmp : $tmp_result\n");
		result += tmp_result;
	}

	print ("result : %lu\n", result);
}
