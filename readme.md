# Create project setup
Create a project directory and navigate into it then initialize a Node.js project:

    npm init -y
    npm install prisma --save-dev

You can now invoke the Prisma CLI by prefixing it with npx:

    npx prisma

Create your Prisma schema file:

    npx prisma init

Set the url field of the datasource block in your Prisma schema to your database connection URL:

    postgresql://USER:PASSWORD@HOST:PORT/DATABASE?schema=SCHEMA

Map your data model to the database schema:

    npx prisma migrate dev --name init
