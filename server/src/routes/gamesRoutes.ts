import { Router } from 'express';
import gameController from '../controllers/carritoController'
class gamesRoutes{

public router: Router = Router();

constructor(){
    this.config();
}

config():void{
    this.router.get('/', gameController.list);
    this.router.get('/:id', gameController.getOne);
    this.router.post('/', gameController.create);
    this.router.put('/:id', gameController.update);
    this.router.delete('/:id', gameController.delete)
}

}
const gamesRouter=new gamesRoutes();
export default gamesRouter.router;