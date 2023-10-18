# Inception-42

## What is a Docker Image?

- **Docker image** is a stand-alone executable package that contains all the necessary dependencies (code, packages, runtime, system tools, etc.) to create
- **Docker container** is an isolated, portable environment that can run applications consistently across different environments. Docker images are built in a layered structure, where each layer is responsible for a specific change to the image.

These layered structures are a collection of file system layers (OS) along with source code, dependencies, metadata, and configuration files. Here is a breakdown of a web application Docker image:

- **File System Layers**: For example, Alpine OS (a lightweight Linux distribution) forms the foundation of the image.

- **Dependency Layer**: This layer includes any system-level dependencies required for your application. For example, it may contain packages like Node.js, Nginx, Redis, and others.

- **Application Code Layer**: This layer contains your website's files, including HTML, CSS, JavaScript, and more.

- **Configuration Layer**: It contains any configuration files necessary for your web server to run correctly. For instance, it might include an `nginx.conf` file that configures how Nginx serves your web application.

- **Runtime Layer**: This layer includes any runtime artifacts generated during the image build. For example, if your application bundles assets or compiles code during the build process.

Each layer is read-only, and when you create a Docker container, these layers are stacked on top of each other, with the base image forming the foundation. Any changes made during the container's runtime are stored in a separate, writable layer.

This layered approach allows Docker to efficiently package and distribute applications, reuse common layers between different images, and simplify updates and version control for images.

## Namespaces and Control-groups

Docker leverages Linux namespaces and control groups (cgroups) extensively to provide containerization
1. **Namespacing** : Docker uses various namespaces to isolate containers from the host system and from each other.
2. **Control-goups**: Docker uses cgroups to control and limit resource consumption by containers.

These technologies together provide the isolation and resource control that make Docker containers secure and efficient. Docker abstracts the complexities of using namespaces and cgroups through its user-friendly command-line interface and configuration options, making it easier to work with containers.