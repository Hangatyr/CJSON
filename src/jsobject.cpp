#include "jsobject.h"

namespace JSON{
	
	JSObject::JSObject(){
		m_type = JSType::JSOBJECT;
	}

	JSType JSObject::getType(){
		return m_type;
	}

	const std::string JSObject::toString(){
		std::string result="Hello from Object";
		return result;
	}

	JSObject::~JSObject(){
	}

}
