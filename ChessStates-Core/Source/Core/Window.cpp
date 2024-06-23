#include "Window.h"
#include <iostream>

Core::Window::Window(unsigned int Width = 1024, unsigned int Height = 1024,std::string Title = std::string("Chess"))
{
	 m_Width = Width;
	 m_Height = Height;
	 m_Window = std::make_unique<sf::RenderWindow>(sf::VideoMode(Width, Height, 32), Title);
	 while (m_Window->isOpen())
	 {
		 sf::Event event;
		 while(m_Window->pollEvent(event))
		 {
			 if (event.type == sf::Event::Closed)
				{m_Window->close();}
		 }
		 m_Window->clear();
		 m_Window->display();
	 }
}
