import { connection } from "./Connection";
import { Request as RequestObj, Response } from "express";
import { FieldPacket, RowDataPacket } from "mysql2";

export type Request<T> = RequestObj & { body: T };

interface Crud<Model> {
  create(req: Request<Model>, res: Response): Promise<void>;

  read(req: RequestObj, res: Response): Promise<void>;

  readAll(req: RequestObj, res: Response): Promise<void>;

  update(req: Request<Model>, res: Response): Promise<void>;

  delete(req: RequestObj, res: Response): Promise<void>;
}

abstract class Dao<Model> implements Crud<Model> {
  createMethod: string;
  updateMethod: string;
  deleteMethod: string;
  readMethod: string;
  readAllMethod: string;

  protected constructor(
    createMethod: string,
    updateMethod: string,
    deleteMethod: string,
    readMethod: string,
    readAllMethod: string
  ) {
    this.createMethod = createMethod;
    this.updateMethod = updateMethod;
    this.deleteMethod = deleteMethod;
    this.readMethod = readMethod;
    this.readAllMethod = readAllMethod;
  }

  abstract procedureParams(resource: Model): any[];

  async create(req: Request<Model>, res: Response): Promise<void> {
    try {
      const body: Model = req.body;
      await connection.execute(
        `CALL ${this.createMethod}`,
        this.procedureParams(body)
      );
      res.status(201).json(body);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }

  async read(req: RequestObj, res: Response): Promise<void> {
    try {
      const id = req.params.id;
      const [[[data]]] = (await connection.execute(`CALL ${this.readMethod}`, [
        id,
      ])) as [[[RowDataPacket]], FieldPacket[]];
      res.status(200).json(data);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }

  async readAll(req: RequestObj, res: Response): Promise<void> {
    try {
      const [[data]] = (await connection.execute(
        `CALL ${this.readAllMethod}`
      )) as [[RowDataPacket[]], FieldPacket[]];
      res.status(200).json(data);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }

  async update(req: Request<Model>, res: Response): Promise<void> {
    try {
      const { id } = req.params;
      const body: Model = req.body;
      await connection.execute(`CALL ${this.updateMethod}`, [
        id,
        ...this.procedureParams(body),
      ]);
      res.status(200).json(body);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }

  async delete(req: Request<Model>, res: Response): Promise<void> {
    try {
      const id = req.params.id;
      await connection.execute(`CALL ${this.deleteMethod}`, [id]);
      res.status(200).json(id);
    } catch (e) {
      console.error(e);
      res.status(500).json(e);
    }
  }
}

export default Dao;
