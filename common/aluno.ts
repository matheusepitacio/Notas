export class Aluno {
  nome: string;
  cpf: string;
  email: string;
  metas: Map<string, string>;
  notas: Map<string, number>;
  media: number;

  constructor() {
    this.clean();
  }

  clean(): void {
    this.nome = "";
    this.cpf = "";
    this.email = "";
    this.metas = new Map<string, string>();
    this.notas = new Map<string, number>();
    this.media = undefined;
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
    this.media = from.media;
  }

  copyMetasFrom(from: Map<string, string>): void {
    this.metas = new Map<string, string>();
    for (let key in from) {
      this.metas[key] = from[key];
    }
  }

  copyNotasFrom(from: Map<string, number>): void {
    this.notas = new Map<string, number>();
    for (let key in from) {
      this.notas[key] = from[key];
    }
  }

  calculaMedia(): number {
    var media: number = 0.0;
    var unidades: number = 0;
    for (let key in this.notas) {
      media += this.notas[key];
      unidades++;
    }
    if (unidades == 0) {
      media = undefined;
    } else {
      media = media / unidades;
    }
    this.media = media;
    return media;
  }
}
