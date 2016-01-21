#ifndef JSON_OBJECT
#define JSON_OBJECT

#include "jsontypes.h"
#include <string>

namespace JSON{

class JSObject{
	private:
		JSType m_type;
	public:
		JSObject();
		virtual ~JSObject();
		JSType getType();
		const std::string toString(); 
};

}//namespace
#endif
