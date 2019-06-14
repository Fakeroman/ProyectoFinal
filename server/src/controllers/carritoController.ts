import {Request,Response } from 'express';
import pool from '../database';
import { request } from 'https';
class GamesController {

     public async list(req:Request, res:Response) {
        const Products = await pool.query('SELECT * FROM Producto')
        res.json(Products);
    } 

    public async create(req:Request,res:Response):Promise<void>{
        await pool.query('INSERT INTO Producto set ?',[req.body]);
        
        res.json({message: 'product save'});
    }

    public delete(req:Request,res:Response){
        res.json({text: 'Eliminando adeudo' + req.params.id});
    }
    public update(req:Request,res:Response){
        res.json({text: 'actualizando adeudo' + req.params.id});
    }
    public getOne(req:Request,res:Response){
        res.json({text: 'This is the product' + req.params.id})
    }
}


const gameController = new GamesController();
export default gameController;