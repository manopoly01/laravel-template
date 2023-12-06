<div style="display: flex">
    <img src="https://vitejs.dev/logo-with-shadow.png" alt="Vite Logo" width="150"/>
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Tailwind_CSS_Logo.svg/512px-Tailwind_CSS_Logo.svg.png?20230715030042" alt="Tailwind CSS Logo" width="150"/> 
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/800px-Laravel.svg.png" alt="Laravel Logo" width="150"/> 
    <img src="https://technisia.com/wp-content/uploads/2022/08/livewire-technisia.webp" alt="Livewire Logo" width="150"/> 
    <img src="https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png" alt="Node.js Logo" width="150"/>
</div>

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
