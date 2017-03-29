import express = require("express");

let customerRouter = express.Router();
customerRouter.get('/', (request: express.Request, response: express.Response) => {
    let testData = {
        firstName: "The",
        lastName: "Burge"
    }

    response.status(200).send(testData);
});
// add more route handlers here
// e.g. customerRouter.post('/', (req,res,next)=> {/*...*/})
export = customerRouter;