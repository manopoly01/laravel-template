Certainly! Here's the text in Markdown and English:

## Clone GitHub Repository

Clone the GitHub repository using the following command:

```bash
git clone https://github.com/manopoly01/laravel-template.git laravel-template
```

Adjust the user as desired in the following file:

```yaml
# docker-compose.yml (Line 6)

app:
    build:
        args:
            user: manuel
            uid: 1000
        context: ./
        dockerfile: Dockerfile
    image: laravel
    ports:
        - 5173:5173
    container_name: laravel-app
    restart: unless-stopped
    working_dir: /var/www/
    volumes:
        - ./:/var/www
    networks:
        - laravel
```

## Execute the Following Scripts

Navigate to the cloned directory:

```bash
cd laravel-template
```

Run the following commands:

```bash
composer setup:docker
docker-compose exec app bash
composer setup
```

The app should now be running on port 8000:

[http://localhost:8000](http://localhost:8000)
