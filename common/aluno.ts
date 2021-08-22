export class Aluno {
  nome: string;
  cpf: string;
  email: string;
  metas: Map<string, string>;
  notas: Map<string, number>;
  media: string;

  constructor() {
    this.clean();
  }

  clean(): void {
    this.nome = "";
    this.cpf = "";
    this.email = "";
    this.metas = new Map<string, string>();
    this.notas = new Map<string, number>();
    this.media = this.calculaMedia();
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
    this.media = this.calculaMedia();
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
      if (from[key] > 10) {
        from[key] = 10;
      } else if (from[key] < 0) {
        from[key] = 0;
      }
      this.notas[key] = from[key];
    }
  }

  calculaMedia(): string {
    var media: number = 0.0;
    var incompleto: boolean = false;
    var unidades: number = 0;
    var resp: string = '';
    for (let key in this.notas) {
      if (this.notas[key] == null) {
        incompleto = true;
      }
      media += this.notas[key];
      unidades++;
    }
    if (unidades < 3 || incompleto) {
      resp = undefined;
    } else {
      resp = (media / unidades).toFixed(2);
    }
    return resp;
  }
}
