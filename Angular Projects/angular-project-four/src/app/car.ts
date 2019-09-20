export class Car {
    constructor(
        public brand: string,
        public model: string,
        public year: number,
        public cost: number,
        public sold: number,
        public id ?: string) {}
}