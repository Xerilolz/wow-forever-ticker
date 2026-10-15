<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat"/>
<xsl:template match="/rss/channel">
<html lang="de"><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width,initial-scale=1"/>
<title><xsl:value-of select="title"/></title>
<style>
:root{color-scheme:light dark;--bg:#f3f1ee;--fg:#1d1b22;--muted:#6a6572;--line:#dcd7d0;--accent:#1f6fd1}
@media (prefers-color-scheme:dark){:root{--bg:#14131a;--fg:#ecebf1;--muted:#9a96a6;--line:#2e2c3a;--accent:#6cb0ff}}
body{margin:0;padding:20px 16px;background:var(--bg);color:var(--fg);font:15px/1.45 system-ui,sans-serif}
.w{max-width:760px;margin:0 auto}
h1{margin:0 0 4px;font-size:1.8rem}
.s{color:var(--muted);font-size:.85rem;margin:0 0 16px}
.n{background:var(--line);border-radius:6px;padding:8px 12px;font-size:.85rem;margin-bottom:16px}
article{padding:12px 0;border-top:1px solid var(--line)}
article a{color:var(--fg);font-weight:600;text-decoration:none}
article a:hover{text-decoration:underline;color:var(--accent)}
.m{color:var(--muted);font-size:.78rem;margin-top:2px}
p{margin:6px 0 0;color:var(--muted);font-size:.9rem}
</style></head><body><div class="w">
<h1><xsl:value-of select="title"/></h1>
<p class="s"><xsl:value-of select="description"/> · Stand: <xsl:value-of select="lastBuildDate"/></p>
<div class="n">Das ist ein RSS-Feed. Kopiere die Adresse dieser Seite in einen RSS-Reader, um neue Meldungen automatisch zu erhalten.</div>
<xsl:for-each select="item"><article>
<a href="{link}" target="_blank" rel="noopener"><xsl:value-of select="title"/></a>
<div class="m"><xsl:value-of select="category"/> · <xsl:value-of select="pubDate"/></div>
<p><xsl:value-of select="description"/></p>
</article></xsl:for-each>
</div></body></html>
</xsl:template>
</xsl:stylesheet>
