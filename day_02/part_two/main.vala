void	main(string []args) {
	string []tab, elements;
	string? tmp = null, tmp2 = null;
	long first_element, second_element, result = 0;

	tab = args[1].split(",");
	foreach (var number in tab) {
		elements = number.split("-");

		first_element = elements[0].to_long();
		second_element = elements[1].to_long();

		var elem = elements[0];

		while (first_element <= second_element) {
			elem = first_element.to_string();
			var middle = elem.length / 2;
			if (elem.length % 2 == 0) {
				tmp = elem[:middle];
				tmp2 = elem[middle:];
			}
			if (tmp != null && tmp2 != null && strcmp(tmp, tmp2) == 0) {
				result += elem.to_long();
			}

			first_element++;
			tmp = null;
			tmp2 = null;
		}
	}
	print ("result : %lu\n", result);
}
