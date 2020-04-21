#include "Cube.h"
#include <iostream>

namespace uiuc{

	Cube::Cube(){
		length_ = 1;
	}
}

int main() {
	
	uiuc::Cube c;
	std::cout << "Volume: " << c.getVolume() << std::endl;
	return 0;	
	
}
