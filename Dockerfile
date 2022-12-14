# A distroless container image with Python and some basics like SSL certificates
# https://github.com/GoogleContainerTools/distroless
FROM gcr.io/distroless/python3-debian10
ADD . /app
WORKDIR /app
ENV PYTHONPATH /app
CMD ["/app/main.py"]
