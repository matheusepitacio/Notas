export class Aluno {
  nome: string;
  cpf: string;
  email: string;
  metas: Map<string,string>;
  notas: Map<string,number>; 

  constructor() {
    this.clean();
  }

  clean(): void {
    this.nome = "";
    this.cpf = "";
    this.email = "";
    this.metas = new Map<string,string>();
    this.notas = new Map<string,number>();
  }

  clone(): Aluno {
    var aluno: Aluno = new Aluno();
    aluno.copyFrom(this);
    return aluno;
  }

  copyFrom(from: Aluno): void {
    this.nome = from.nome;
    this.cpf = from.cpf;
    this.email = from.email;
    this.copyMetasFrom(from.metas);
    this.copyNotasFrom(from.notas);
  }

  copyMetasFrom(from: Map<string,string>): void {
    this.metas = new Map<string,string>();
    for (let key in from) {
      this.metas[key] = from[key];
    }
  }
  
  copyNotasFrom(from: Map<string,number>): void {
    this.notas = new Map<string,number>();
    for (let key in from) {
      this.notas[key] = from[key];
    }
  }
}
