# Use Wonkey's httprequest library to send HTTP(s) requests from inside WASM

## Instructions for this devcontainer

### Preparation

1. Open this repo in devcontainer, e.g. using Github Codespaces.
   Type or copy/paste following commands to devcontainer's terminal.


2. Pre-Compile Wonkey's modules for web target (may take several minutes):

```sh
wake mods -target=emscripten
```

If you see some errors building Yaml module, just ignore them. Yaml library is not necessary for this example.

3. Add `-s FETCH=1` to Emscripten's linker options to enable HTTP request functionality.

```sh
sed -si.bak 's/WX_LD_OPTS_EMSCRIPTEN=.*/& -s FETCH=1/' /usr/local/wonkey/bin/linux/env_linux.txt
```

### Building

1. `cd` into the folder of this example:

```sh
cd browser
```

2. Compile the example:

```sh
wake app -target=emscripten -build httpget.wx
```

### Test with browser

1. `cd` into output directory:

```sh
cd httpget.products/emscripten
```

2. Run simple HTTP server to temporarily publish project to Web:

```sh
python3 -m http.server
```

Codespace will show you "Open in Browser" button. Just click that button or
obtain web address from "Forwarded Ports" tab.

2. As `index.html`, a 3M-sized `httpget.data`, `httpget.js`, and a 3M-sized `httpget.wasm` are loaded into browser, refer to browser developer console
   to see the results.

### Finish

Perform your own experiments if desired.
