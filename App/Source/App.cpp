#include "Core/Window.h"
#include <iostream>;
#include <string>
int main()
{
	std::cout << std::string("Adniel") << std::endl;
	Core::Window wind = Core::Window(1024,1024,std::string("Chess"));
}