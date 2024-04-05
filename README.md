Install node js module in sap bas terminal:

$>npm install express body-parser hbs @sap/hana-client --save

to run app in sap bas (npm run start), change script in package.json:

  "scripts": {
  
    "start": "node index.js"
    
  },

to run app in vs code (your local pc):

$> node index.js

![alt text](https://github.com/jenizar/hanadb-crud-app-with-node-js-express/blob/master/screenshot/sap_hanadb_menu.PNG)

![alt text](https://github.com/jenizar/hanadb-crud-app-with-node-js-express/blob/master/screenshot/sap_bas_npm_run_start.PNG)

references:

1. https://www.npmjs.com/package/@sap/hana-client

2. https://github.com/hendisantika/crud-bootstrap-mysql-nodejs/tree/master

3. https://techsolutionstuff.com/post/node-js-express-crud-example-with-mysql

4. https://github.com/Pankaj-Str/CurdAppNodejs/tree/main

5. https://community.sap.com/t5/technology-blogs-by-members/run-nodejs-in-sap-btp-and-locally-part-1/ba-p/13552757

5. https://stackoverflow.com/questions/49368756/nodejs-and-mysql-how-to-use-nodejs-variable-in-mysql-insert-statement
