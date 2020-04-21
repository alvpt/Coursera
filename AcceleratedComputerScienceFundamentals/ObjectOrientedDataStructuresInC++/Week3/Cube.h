#pragma once

namespace uiuc{
	class Cube {
		public:
			Cube();
			
			double getVolume();
			double getSurfaceArea();
			void setLength(double length);
			
		private:
			double length_;
	};
}
