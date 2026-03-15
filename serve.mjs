// Minimal server that proxies to the Next.js dev server
// This avoids the getcwd() issue in the preview sandbox
import { createServer } from 'http';
import { request as httpRequest } from 'http';

const server = createServer((req, res) => {
  const proxy = httpRequest(
    { hostname: '127.0.0.1', port: 3001, path: req.url, method: req.method, headers: req.headers },
    (proxyRes) => {
      res.writeHead(proxyRes.statusCode, proxyRes.headers);
      proxyRes.pipe(res);
    }
  );
  req.pipe(proxy);
  proxy.on('error', () => { res.writeHead(502); res.end('Bad Gateway'); });
});

server.listen(3000, () => console.log('Proxy on 3000 -> 3001'));
