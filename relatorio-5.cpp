#include <iostream>
#include <string>
using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;

public:
    Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

    void imprimirNome() {
        cout << "O nome: " << nome << endl;
    };

    virtual void imprimirIdade() {
        cout << "Idade: " << idade << endl;
    };
};

class Aluno : public Pessoa {
private:
    string matricula;

public:
    Aluno(string nome, int idade, string matricula) : Pessoa(nome, idade), matricula(matricula) {}

    void imprimirIdade() {
        cout << "A idade do aluno: " << idade << endl;
    };

    void imprimirMatricula() {
        cout << "A matricula do aluno: " << matricula << endl;
    };
};

class Professor : public Pessoa {
public:
    Professor(string nome, int idade) : Pessoa(nome, idade) {}

    void imprimirIdade()  {
        cout << "A idade do professor: " << idade << endl;
    };
};

int main() {
    Aluno aluno1("Joao", 20, "12345");
    Professor professor1("Dr. Silva", 45);
    Pessoa pessoa1("Carlos", 30);

    aluno1.imprimirNome();
    aluno1.imprimirIdade();
    aluno1.imprimirMatricula();

    professor1.imprimirNome();
    professor1.imprimirIdade();

    pessoa1.imprimirNome();
    pessoa1.imprimirIdade();

    return 0;
}
