# Reddit MCP Server — Free Remote Hosting

Self-hosted Reddit MCP server for use as a Claude custom connector.
No Reddit API keys needed. Works on claude.ai, mobile and desktop.

## Deploy on Render (free)

1. Fork or clone this repo
2. Sign up at https://render.com (free, use GitHub login)
3. Click **New** > **Web Service**
4. Select this repo
5. Settings:
   - **Region:** Frankfurt
   - **Instance Type:** Free
6. Click **Deploy Web Service**
7. Wait 2-3 min for build
8. You get a URL like: `https://reddit-mcp-xxxx.onrender.com`

## Connect to Claude

1. Open **claude.ai** in browser
2. Settings > Connectors > **Add custom connector**
3. Name: `Reddit`
4. URL: `https://reddit-mcp-xxxx.onrender.com/mcp`
5. Click **Add**

Works on web, desktop and mobile automatically.

## Notes

- **Cold starts:** Render free tier sleeps after 15 min inactivity. First request after sleep takes 30-60 sec.
- **No API key:** Server scrapes Reddit directly, no credentials needed.
- **Read-only:** Search, browse subreddits, read posts and comments.
- **Rate limits:** ~10 requests/min (Reddit limit for unauthenticated requests).
