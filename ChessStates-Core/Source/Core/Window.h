#pragma once
#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <string>
#include <memory>

namespace Core {
	class Window {
	public:
		Window(unsigned int Width, unsigned int Height, std::string Title);
	public:
		unsigned int m_Width = 1024;
		unsigned int m_Height = 1024;
		const unsigned int m_bits = 32;
		std::unique_ptr<sf::RenderWindow> m_Window = nullptr;
	};
}