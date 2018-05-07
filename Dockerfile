FROM python:3.6.5 AS builder
RUN pip install ansible-lint

FROM python:3.6.5-alpine
COPY --from=builder /usr/local/lib/python3.6/site-packages/ /usr/local/lib/python3.6/site-packages/
COPY --from=builder /usr/local/bin/ansible-lint /usr/local/bin/ansible-lint
