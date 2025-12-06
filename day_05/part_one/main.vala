void	main(string []args) {
	string	[]range = args[1].split ("\n");
	string	[]ingredients = args[2].split ("\n");
	long	left, right, result = 0;

	foreach (var ingredient in ingredients) {
		foreach (var elem in range) {
			elem.scanf("%lu-%lu", out left, out right);
			if (left < ingredient.to_long () < right) {
				result++;
				break ;
			}
		}
	}
	print (@"result : $result\n");
}
