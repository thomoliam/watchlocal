// Minimal proxy for Claude preview sandbox
// Proxies preview tool port → Next.js dev server on port 3000
// Avoids the getcwd() / EPERM issue when running npm in the sandbox
import { createServer } from 'http';
import { request as httpRequest } from 'http';

const TARGET_PORT = 3000;
const PORT = process.env.PORT || 3001;

const server = createServer((req, res) => {
  const proxy = httpRequest(
    { hostname: '127.0.0.1', port: TARGET_PORT, path: req.url, method: req.method, headers: req.headers },
    (proxyRes) => {
      res.writeHead(proxyRes.statusCode, proxyRes.headers);
      proxyRes.pipe(res);
    }
  );
  req.pipe(proxy);
  proxy.on('error', () => { res.writeHead(502); res.end('Bad Gateway'); });
});

server.listen(PORT, () => console.log(`Proxy on ${PORT} -> ${TARGET_PORT}`));
