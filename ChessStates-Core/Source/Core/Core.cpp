#include "Core.h"
#include "SFML/Graphics.hpp"
#include <iostream>
#include <SFML/Window.hpp>

namespace Core {

	void PrintHelloWorld()
	{

		sf::RenderWindow window(sf::VideoMode(200, 200), "SFML is real!");
		while (window.isOpen())
		{
			sf::Event event;
			while (window.pollEvent(event))
			{
				if (event.type == sf::Event::Closed)
					window.close();
			}
			window.clear();
			window.display();
		}

		std::cout << "Hello World!\n";
		std::cin.get();
	}

}