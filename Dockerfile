# n8n self-hosted con LangChain nodes
FROM n8nio/n8n:1.38.2

USER root
# herramientas básicas
RUN apk add --no-cache git

# ◆ Instala el paquete de community-nodes directamente con npm
RUN npm install -g --unsafe-perm @n8n/nodes-langchain

USER node
EXPOSE 5678

