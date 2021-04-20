# Locally Test Docker Image
  
Run the package-service.
```zsh
docker run -p 5001:5001 fipost/pakketservice:0.0.4
```

Run the location-service.
```zsh
docker run -p 5002:5002 fipost/location-service:0.0.1.5-beta
```

Run the api-gateway.
```zsh
docker run -p 8123:8123 fipost/api-gateway:0.0.1.2
```

Run the ui.
```zsh
docker run -p 80:80 fipost/ui:0.0.4
```