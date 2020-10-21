#include <string>
#include "Empregado.hpp"

class Engenheiro : public Empregado {

  public:  
    int getProjetos() { return this->projetos; }
	int projetos;
};

