"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class IndexController {
    index(req, res) {
        res.json({ text: 'API Is /api/carrito' });
    }
}
exports.indexController = new IndexController();
