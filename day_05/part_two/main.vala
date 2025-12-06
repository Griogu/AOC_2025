long	get_range_max (string []tab, long min) {
	long left, right;

	foreach (unowned var element in tab) {
		element.scanf("%lu-%lu", out left, out right);
		if (left == min)
			return right;
	}
	return 0;
}

void	sort_long_tab (long []tab, int len) {
	for (int i = 0; i < len; i += 2) {
		for (int j = i + 2; j < len; j += 2) {
			if (tab[i] > tab[j] || (tab[i] == tab[j] && tab[i + 1] > tab[j + 1])) {
				var tmp = tab[j];
				tab[j] = tab[i];
				tab[i] = tmp;
				tmp = tab[j + 1];
				tab[j + 1] = tab[i + 1];
				tab[i + 1] = tmp;
			}
		}
	}
}

void	main(string []args) {
	string	[]range = args[1].split ("\n");
	long	left = 0, right = 0, result = 0, max = 0, min_range = 0, max_range = 0;
	long	[]tab = new long[range.length * 2];

	var i = 0;
	foreach (unowned var element in range) {
		element.scanf("%lu-%lu", out left, out right);
		if (right > max)
			max = right;
		tab[i] = left;
		tab[i + 1] = right;
		i += 2;
	}
	sort_long_tab (tab, range.length * 2);
	// foreach (unowned var element in tab) {
		// print (@"$element\n");
	// }
	// foreach (unowned var element in range) {
		// element.scanf("%lu-%lu", out left, out right);
		// if (left == 21889219483178)
			// print (@"$element\n");
	// }
	
	min_range = tab[0];
	max_range = tab[1];

	for (i = 2; i <= range.length * 2; i += 2) {
		// if (tab[i] == 40986764964814)
			// print (@"(min_range : $min_range, max_range : $max_range, tab[i] : $(tab[i]))\n");
		if (min_range < tab[i] <= max_range <= tab[i + 1])
			max_range = tab[i + 1];
		if (tab[i] > max_range) {
			print (@"($min_range, $max_range)\n");
			result += max_range - min_range + 1;
			min_range = tab[i];
			max_range = tab[i + 1];
		}
	}

	result += max_range - min_range + 1;

	print (@"result : $result\n");
}
