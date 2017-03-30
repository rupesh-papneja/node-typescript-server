# node-typescript-server
1. mkdir src
2. npm init -y
3. npm install typings typescript --global
4. set PATH=%USERPROFILE%\AppData\Roaming\npm;%PATH%
5. typings init -y
6. tsc --init

7. change in tsconfig.json

{
    "compilerOptions": {
        "module": "commonjs",
        "target": "es5",
        "noImplicitAny": false,
        "sourceMap": true,
        "watch": true
    },
    "exclude": [
        "node_modules"
    ]
}

8. npm install typings --save

9. create tasks.json by  (ctrl+shift+p) Configure Task Runner - >  TypeScript – tsconfig.json

10. for windows change in tasks.json command and args attribute 

{
    // See https://go.microsoft.com/fwlink/?LinkId=733558

    // for the documentation about the tasks.json format
 
   "version": "0.1.0",

    "command": "node",

    "isShellCommand": true,

    "args": ["${workspaceRoot}\\node_modules\\typescript\\bin\\tsc"],

    "showOutput": "silent",

    "problemMatcher": "$tsc"

}

11. Add a .typingsrc to setup proxy at the root of the project folder with below two lines

proxy=http://proxy.threatpulse.net:8080
rejectUnauthorized=false


12. execute the below commands 

typings install dt~node --save --global

typings search node

13. stop and start compiler in visual stuio code

14. Add a index.ts under src folder

15. Add a launch.json by (ctrl+shift+p) Open launch.json, update with below content

{
    "version": "0.2.0",

    "configurations": [
        
     {

            "name": "Launch",

            "type": "node",

            "request": "launch",

            "program": "${workspaceRoot}/src/index.ts",

            "stopOnEntry": false,

            "args": [],

            "cwd": "${workspaceRoot}",

            "preLaunchTask": null,

            "runtimeExecutable": null,

            "runtimeArgs": [

                "--nolazy"

            ],

            "env": {

                "NODE_ENV": "development"

            },

            "console": "internalConsole",

            "sourceMaps": true,

            "outFiles": [ ]

        },

        {

            "name": "Attach",

            "type": "node",

            "request": "attach",

            "port": 5858,

            "address": "localhost",

            "restart": false,

            "sourceMaps": false,

            "localRoot": "${workspaceRoot}",

            "remoteRoot": null

        }
    ]

}

16. npm install eslint --save-dev
17. npm install eslint-plugin-import  --save-dev
18. npm install eslint-plugin-node  --save-dev
19. npm install eslint-plugin-promise  --save-dev
20. npm install eslint-plugin-standard  --save-dev


