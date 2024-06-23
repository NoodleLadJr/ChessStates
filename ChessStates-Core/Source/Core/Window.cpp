#include "Window.h"
#include <iostream>

Core::Window::Window(unsigned int Width = 1024, unsigned int Height = 1024,std::string Title = std::string("Chess"))
{
	 m_Width = Width;
	 m_Height = Height;
	 m_Window = std::make_unique<sf::RenderWindow>(sf::VideoMode(Width, Height, 32), Title);

	 AddTexture(std::string("Res/Board.png"), 1024, 1024);

	 std::cout << m_Shapes.size() << std::endl;
	 while (m_Window->isOpen())
	 {
		 sf::Event event;
		 while(m_Window->pollEvent(event))
		 {
			 //TODO: write function to handle all events
			 if (event.type == sf::Event::Closed)
				{m_Window->close();}
		 }
		 m_Window->clear();
		 m_Window->draw(*m_Shapes[0]);
		 m_Window->display();
	 }
}

void Core::Window::AddTexture(std::string Filepath,unsigned int Width, unsigned int Height)
{
	sf::Texture* tex = new sf::Texture();
	tex->loadFromFile("Res/Board.png");
	auto sprite = new sf::Sprite();
	sprite->setTexture(*tex);

	m_Shapes.push_back(sprite);
}
