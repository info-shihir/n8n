FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

ENV N8N_PORT=7860
ENV N8N_HOST=0.0.0.0

EXPOSE 7860
CMD ["sh", "-c", "n8n start --port=7860"]
