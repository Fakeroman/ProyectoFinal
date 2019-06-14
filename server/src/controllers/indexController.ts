import {Request,Response } from 'express';

class IndexController {
    public index(req:Request, res:Response) {
        res.json({text: 'API Is /api/carrito'})
    } 
}

export const indexController = new IndexController();