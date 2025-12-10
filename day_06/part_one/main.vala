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
		long tmp = numbers[0, i];
		for (int j = 1; j < tab.length - 1; j++) {
			if (operator[i][0] == '*')
				tmp *= numbers[j, i];
			else if (operator[i][0] == '/')
				tmp /= numbers[j, i];
			else if (operator[i][0] == '+')
				tmp += numbers[j, i];
			else if (operator[i][0] == '-')
				tmp -= numbers[j, i];
		}
		result += tmp;
	}

	print ("result : %lu", result);
}
