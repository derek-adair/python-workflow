FROM derekadair/python-workflow:onbuild as builder
FROM derekadair/python-workflow:dev
WORKDIR /code
COPY --from=builder /code/ /code/
COPY --from=builder /virtualenv/ /virtualenv/
