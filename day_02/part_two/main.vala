void	main(string []args) {
	string []tab, elements;
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
				var tmp = elem[:middle];
				var tmp2 = elem[middle:];
				if (tmp == tmp2) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 3;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				var tmp3 = elem[middle * 2:];
				if (tmp == tmp2 && tmp == tmp3) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 4;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				var tmp4 = elem[middle * 3:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 5;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				tmp4 = elem[middle * 3:middle * 4];
				var tmp5 = elem[middle * 4:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4 && tmp == tmp5) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 6;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				tmp4 = elem[middle * 3:middle * 4];
				tmp5 = elem[middle * 4:middle * 5];
				var tmp6 = elem[middle * 5:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4 && tmp == tmp5 && tmp == tmp6) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 7;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				tmp4 = elem[middle * 3:middle * 4];
				tmp5 = elem[middle * 4:middle * 5];
				tmp6 = elem[middle * 5:middle * 6];
				var tmp7 = elem[middle * 6:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4 && tmp == tmp5 && tmp == tmp6 && tmp == tmp7) {
					result += elem.to_long();
					first_element++;
					continue ;
				}
			}
			else if (elem.length % 2 == 1) {
				middle = elem.length / 3;
				var tmp = elem[:middle];
				var tmp2 = elem[middle:middle * 2];
				var tmp3 = elem[middle * 2:];
				if (tmp == tmp2 && tmp2 == tmp3) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 5;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				var tmp4 = elem[middle * 3:middle * 4];
				var tmp5 = elem[middle * 4:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4 && tmp == tmp5) {
					result += elem.to_long();
					first_element++;
					continue ;
				}

				middle = elem.length / 7;
				tmp = elem[:middle];
				tmp2 = elem[middle:middle * 2];
				tmp3 = elem[middle * 2:middle * 3];
				tmp4 = elem[middle * 3:middle * 4];
				tmp5 = elem[middle * 4:middle * 5];
				var tmp6 = elem[middle * 5:middle * 6];
				var tmp7 = elem[middle * 6:];
				if (tmp == tmp2 && tmp == tmp3 && tmp == tmp4 && tmp == tmp5 && tmp == tmp6 && tmp == tmp7) {
					result += elem.to_long();
					first_element++;
					continue ;
				}
			}
			first_element++;
		}
	}
	print ("result : %lu\n", result);
}
