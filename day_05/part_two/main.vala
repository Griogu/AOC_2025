long	get_max_from_min (string []tab, long min) {
	long left, right, max = 0;

	foreach (unowned var element in tab) {
		element.scanf ("%lu-%lu", out left, out right);
		if (left == min && right > max)
			max = right;
	}
	return max;
}

void	sort_long_tab (long []tab, int len) {
	for (int i = 0; i < len; i++) {
		for (int j = i + 1; j < len; j++) {
			if (tab[i] > tab[j]) {
				var tmp = tab[i];
				tab[i] = tab[j];
				tab[j] = tmp;
			}
		}
	}
}

void main (string []args) {
	string []range = args[1].split ("\n");
	long	left, right, result = 0;
	long	[]tab = new long[range.length];

	for (int i = 0; range[i] != null; i++) {
		range[i].scanf ("%lu-%lu", out left, out right);
		tab[i] = left;
	}
	sort_long_tab (tab, range.length);
	var min_range = tab[0];
	var max_range = get_max_from_min (range, min_range);
	for (int i = 1; i < range.length + 1; i++) {
		if ((min_range <= tab[i] <= max_range && get_max_from_min (range, tab[i]) > max_range)
				|| tab[i] <= min_range < max_range < get_max_from_min (range, tab[i]))
			max_range = get_max_from_min (range, tab[i]);
		if (tab[i] > max_range) {
			result += max_range - min_range + 1;
			min_range = tab[i];
			max_range = get_max_from_min (range, min_range);
		}
	}
	result += max_range - min_range + 1;
	print ("result : %lu\n", result);
}
