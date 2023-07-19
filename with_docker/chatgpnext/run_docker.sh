#!/bin/bash
docker run -d -p 3000:3000 \
   -e OPENAI_API_KEY="sk-xx" \
   --name="chat4nextjs" \
   -e CODE="passs" \
   -e PROXY_URL="http://127.0.0.1:3000" \
   yidadaa/chatgpt-next-web:v2.8.9
