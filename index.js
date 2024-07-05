const express = require('express');
const bodyParser = require('body-parser');
const { PrismaClient } = require('@prisma/client');
const session = require('express-session');

const app = express();
const prisma = new PrismaClient();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));
app.set('view engine', 'ejs');

app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true,
}));

app.use((req, res, next) => {
    res.locals.message = req.session.message;
    delete req.session.message;
    next();
});

app.get('/', async (req, res) => {
    const estudiantes = await prisma.estudiante.findMany();
    res.render('index', { estudiantes, message: res.locals.message });
});

app.post('/add', async (req, res) => {
    const { nombres, apellidos, codigo, ep } = req.body;
    try {
        await prisma.estudiante.create({
            data: { nombres, apellidos, codigo, ep },
        });
        req.session.message = { type: 'success', content: 'Registro insertado con éxito' };
    } catch (error) {
        req.session.message = { type: 'error', content: 'Error al insertar el registro' };
    }
    res.redirect('/');
});

app.post('/delete/:id', async (req, res) => {
    const id = parseInt(req.params.id);
    try {
        await prisma.estudiante.delete({ where: { id } });
        req.session.message = { type: 'success', content: 'Registro eliminado con éxito' };
    } catch (error) {
        req.session.message = { type: 'error', content: 'Error al eliminar el registro' };
    }
    res.redirect('/');
});

app.post('/update/:id', async (req, res) => {
    const id = parseInt(req.params.id);
    const { nombres, apellidos, codigo, ep } = req.body;
    console.log(`Actualizando estudiante con ID: ${id}`);
    console.log(`Datos recibidos: ${JSON.stringify(req.body)}`);
    try {
        await prisma.estudiante.update({
            where: { id },
            data: { nombres, apellidos, codigo, ep },
        });
        req.session.message = { type: 'success', content: 'Registro actualizado con éxito' };
    } catch (error) {
        console.error(`Error al actualizar el estudiante: ${error}`);
        req.session.message = { type: 'error', content: 'Error al actualizar el registro' };
    }
    res.redirect('/');
});

app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});
