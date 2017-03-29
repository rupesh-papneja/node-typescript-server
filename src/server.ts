import fs = require('fs');
import express = require('express');
import customerRouter = require("./routes/customerRouter");
import requestLogger = require("./middleware/requestLogger");

export class ServerApp {

    /**
     * 
     */
    constructor(private app: express.Express, private port: number){
        this.configureMiddleware(app);
        this.configureRoutes(app);
    }

    /**
     * 
     */
    private configureMiddleware(app: express.Express){
        app.use(requestLogger);
    }

    private configureRoutes(app: express.Express) {
        app.use("/customer", customerRouter );
        // mount more routers here
        // e.g. app.use("/organisation", organisationRouter);
    }

    public run() {
        this.app.listen(this.port);  
    }
}