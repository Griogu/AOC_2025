long	get_min (string []tab, long last_min) {
	long left, right, min = last_min;
	var tmp = 0;
	foreach (unowned var element in tab) {
		element.scanf("%lu-%lu", out left, out right);
		if (left <= last_min)
			continue ;
		if (tmp == 0)
			min = left;
		if (last_min < left < min)
			min = left;
		tmp++;
	}
	if (last_min == min)
		return 0;
	return min;
}

long	get_range_max (string []tab, long min) {
	long left, right;

	foreach (unowned var element in tab) {
		element.scanf("%lu-%lu", out left, out right);
		if (left == min)
			return right;
	}
	return 0;
}

void	main(string []args) {
	string	[]range = args[1].split ("\n");
	long	left = 0, right = 0, result = 0, max = 0, min_range = 0, max_range = 0;

	foreach (unowned var element in range) {
		element.scanf("%lu-%lu", out left, out right);
		if (right > max)
			max = right;
	}
	var i  = get_min  (range, 0);
	left = i;
	right = 0;
	min_range = i;
	max_range = get_range_max (range, min_range);
	print (@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa $min_range ui $max_range\n");
	while (max_range != max) {
		left = get_min (range, left);
		right = get_range_max (range, left);
		if (left > max_range) {
			print (@"($min_range, $max_range)\n");
			result += max_range - min_range + 1;
			min_range = get_min (range, max_range);
			max_range = get_range_max (range, min_range);
		}
		else if (left < max_range < right)
			max_range = right;
	}
	if (max_range == max)
		result += max_range - min_range + 1;

	print (@"result : $result\n");
}
