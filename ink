<button onclick="openSite()">Open</button>

<script>
function openSite() {
    const win = window.open("about:blank", "_blank");

    if (!win) return alert("Popup blocked");

    win.document.open();
    win.document.write(`
        <!DOCTYPE html>
        <html>
        <head>
            <title> </title>
            <style>
                html, body {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    overflow: hidden;
                }
                iframe {
                    width: 100%;
                    height: 100%;
                    border: none;
                }
            </style>
        </head>
        <body>
            <iframe src="https://sites.google.com/view/inkshower"></iframe>
        </body>
        </html>
    `);
    win.document.close();
}
</script>
