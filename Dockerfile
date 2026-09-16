# Gunakan image web server Nginx yang ringan
FROM nginx:alpine

# Salin file website (index.html dan asset lainnya) ke folder root Nginx
COPY . /usr/share/nginx/html

# Expose port standar HTTP (80)
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
