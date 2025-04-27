# n8n self‑hosted with LangChain community nodes
FROM n8nio/n8n:1.38.1

USER root
RUN apk add --no-cache git

RUN n8n plugins install @n8n/nodes-langchain

USER node
EXPOSE 5678
