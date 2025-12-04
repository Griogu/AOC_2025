void	main(string []args) {
	string []tab, elements;
	string tmp = null, tmp2 = null;
	long first_element, second_element, result = 0;

	tab = args[1].split(",");
	for (size_t i = 0; tab[i] != null; i++) {
		elements = tab[i].split("-");

		first_element = elements[0].to_long();
		second_element = elements[1].to_long();

		while (first_element <= second_element) {
			elements[0] = first_element.to_string();
			if (elements[0].length % 2 == 0) {
				tmp = elements[0].substring(0, elements[0].length / 2);
				tmp2 = elements[0].substring(elements[0].length / 2, elements[0].length / 2);
			}
			if (tmp != null && tmp2 != null && strcmp(tmp, tmp2) == 0) {
				result += elements[0].to_long();
			}

			first_element++;
			tmp = null;
			tmp2 = null;
		}
	}

	print ("result : %lu\n", result);
}
