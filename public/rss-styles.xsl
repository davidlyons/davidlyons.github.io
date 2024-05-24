<?xml version="1.0" encoding="utf-8"?>
<!--

# Pretty Feed

Styles an RSS/Atom feed, making it friendly for humans viewers, and adds a link
to aboutfeeds.com for new user onboarding. See it in action:

   https://interconnected.org/home/feed


## How to use

1. Download this XML stylesheet from the following URL and host it on your own
   domain (this is a limitation of XSL in browsers):

   https://github.com/genmon/aboutfeeds/blob/main/tools/pretty-feed-v3.xsl

2. Include the XSL at the top of the RSS/Atom feed, like:

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="/PATH-TO-YOUR-STYLES/pretty-feed-v3.xsl" type="text/xsl"?>
```

3. Serve the feed with the following HTTP headers:

```
Content-Type: application/xml; charset=utf-8  # not application/rss+xml
x-content-type-options: nosniff
```

(These headers are required to style feeds for users with Safari on iOS/Mac.)



## Limitations

- Styling the feed *prevents* the browser from automatically opening a
  newsreader application. This is a trade off, but it's a benefit to new users
  who won't have a newsreader installed, and they are saved from seeing or
  downloaded obscure XML content. For existing newsreader users, they will know
  to copy-and-paste the feed URL, and they get the benefit of an in-browser feed
  preview.
- Feed styling, for all browsers, is only available to site owners who control
  their own platform. The need to add both XML and HTTP headers makes this a
  limited solution.


## Credits

pretty-feed is based on work by lepture.com:

   https://lepture.com/en/2019/rss-style-with-xsl

This current version is maintained by aboutfeeds.com:

   https://github.com/genmon/aboutfeeds


## Feedback

This file is in BETA. Please test and contribute to the discussion:

     https://github.com/genmon/aboutfeeds/issues/8

-->
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> Web Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <style type="text/css">
          /*! normalize.css v4.1.1 | MIT License | github.com/necolas/normalize.css */.markdown-body::after,.markdown-body::before{display:table;content:''}h1,h2,h3,strong{font-weight:600}.markdown-body h1,.markdown-body h2{padding-bottom:.3em;border-bottom:1px solid #eaecef}html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}.markdown-body,body{font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Helvetica,Arial,sans-serif,'Apple Color Emoji','Segoe UI Emoji','Segoe UI Symbol';line-height:1.5}body{margin:0;font-size:14px;color:#24292e;background-color:#fff}header{display:block}a{background-color:transparent;color:#0366d6;text-decoration:none}a:active,a:hover{outline-width:0}h1{margin:.67em 0;font-size:32px}h1,h2,h3,p{margin-top:0}svg:not(:root){overflow:hidden}*{box-sizing:border-box}a:hover{text-decoration:underline}h1,h2,h3{margin-bottom:0}h2{font-size:24px}h3{font-size:20px}p{margin-bottom:10px}small{font-size:90%}.border-0{border:0!important}.rounded-2{border-radius:6px!important}.bg-white{background-color:#fff!important}.bg-blue-light{background-color:#f1f8ff!important}.text-gray{color:#586069!important}.markdown-body>* :last-child,.mb-0{margin-bottom:0!important}.mr-1{margin-right:4px!important}.mb-5{margin-bottom:32px!important}.mb-6{margin-bottom:40px!important}.pt-2{padding-top:8px!important}.p-3{padding:16px!important}.px-3{padding-right:16px!important;padding-left:16px!important}.py-5{padding-top:32px!important;padding-bottom:32px!important}@media (min-width:768px){.pt-md-5{padding-top:32px!important}}.container-md{max-width:768px;margin-right:auto;margin-left:auto}.markdown-body{font-size:16px;word-wrap:break-word}.markdown-body::after{clear:both}.markdown-body>* :first-child{margin-top:0!important}.markdown-body a:not([href]){color:inherit;text-decoration:none}.markdown-body p{margin-top:0;margin-bottom:16px}.markdown-body h1,.markdown-body h2,.markdown-body h3{margin-top:24px;margin-bottom:16px;font-weight:600;line-height:1.25}.markdown-body h1{font-size:2em}.markdown-body h2{font-size:1.5em}.markdown-body h3{font-size:1.25em}
        </style>
      </head>
      <body class="bg-white pt-2 pt-md-5">
        <div class="container-md px-3 markdown-body">
          <p class="bg-blue-light rounded-2 p-3 mb-6">
            <strong>This is a web feed,</strong> also known as an RSS feed. <strong>Subscribe</strong> by copying the URL from the address bar into your newsreader. Visit <a href="https://aboutfeeds.com">About Feeds</a> to get started with newsreaders and subscribing. It's free.
          </p>
          <header class="py-5">
            <h1 class="border-0">
              <svg xmlns="http://www.w3.org/2000/svg" style="vertical-align: text-bottom;" class="mr-1" width="1.2em" height="1.2em" fill="#EA7818" viewBox="0 0 16 16">
                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm1.5 2.5c5.523 0 10 4.477 10 10a1 1 0 1 1-2 0 8 8 0 0 0-8-8 1 1 0 0 1 0-2m0 4a6 6 0 0 1 6 6 1 1 0 1 1-2 0 4 4 0 0 0-4-4 1 1 0 0 1 0-2m.5 7a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3"/>
              </svg>
              Web Feed Preview
            </h1>
            <h2><xsl:value-of select="/rss/channel/title"/></h2>
            <p><xsl:value-of select="/rss/channel/description"/></p>
            <a class="head_link" target="_blank">
              <xsl:attribute name="href">
                <xsl:value-of select="/rss/channel/link"/>
              </xsl:attribute>
              Visit Website &#x2192;
            </a>
          </header>
          <h2>Work</h2>
          <xsl:for-each select="/rss/channel/item">
            <div class="mb-5">
              <h3 class="mb-0">
                <a target="_blank">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link"/>
                  </xsl:attribute>
                  <xsl:value-of select="title"/>
                </a>
              </h3>
              <small class="text-gray">
                Published: <xsl:value-of select="pubDate" />
              </small>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
