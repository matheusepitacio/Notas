export class Notas {
    nomeDisciplina: string;
    codigoDisciplina: string;
    codigoTurma: string;
    avaliacoes: Map<string, number>;
    media: number;

    constructor() {
        this.clean();
    }

    clean(): void {
        this.nomeDisciplina = "";
        this.codigoDisciplina = "";
        this.codigoTurma = "";
        this.avaliacoes = new Map<string, number>();
        this.media = undefined;
    }

    clone(): Notas {
        var notas: Notas = new Notas();
        notas.copyFrom(this);
        return notas;
    }

    copyFrom(from: Notas): void {
        this.nomeDisciplina = from.nomeDisciplina;
        this.codigoDisciplina = from.codigoDisciplina;
        this.codigoTurma = from.codigoDisciplina;
        this.copyAvaliacoesFrom(from.avaliacoes);
        this.media = from.media;
    }

    copyAvaliacoesFrom(from: Map<string, number>): void {
        this.avaliacoes = new Map<string, number>();
        for (let key in from) {
            this.avaliacoes[key] = from[key];
        }
    }

    calculaMedia(): number {
        var media: number = 0.0;
        var unidades: number = 0;
        for (let key in this.avaliacoes) {
            media += this.avaliacoes[key];
            unidades++;
        }
        if (unidades == 0) {
            media = undefined;
        } else {
            media = media / unidades;
        }
        return media;
    }
}