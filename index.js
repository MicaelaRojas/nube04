import http from "http";
import fs from "fs";

const server = http.createServer((req, res) => {
	res.statusCode = 200;
	res.setHeader('Content-Type', 'text/html');

	const routeMap = {
		'': 'html/index.html',
		'clientes': 'html/clientes.html',
		'productos': 'html/productos.html'
	};

	render(res, routeMap[req.url.slice(1)]);
});

function render(res, htmlFile) {
    fs.stat(`./${htmlFile}`,  (err, stats) => {
      res.statusCode = 200;
      res.setHeader('Content-Type', 'text/html');

        if(stats) {
            fs.createReadStream(htmlFile).pipe(res);
        } else {
            res.statusCode = 404;
            res.end('Lo sentimos, la pagina esta en construccion');
        }
    });
}


server.listen(5000);
console.log('Servidor corriendo en el puerto 5000');