# LaTeX Interactive Container

A Docker container that provides a ready-to-use LaTeX environment.  
Use it to compile your LaTeX documents without having to install LaTeX locally.

## Features

- Includes a complete LaTeX environment, ready to compile `.tex` files.  
- Easily run LaTeX commands inside a container (e.g., `pdflatex`, `bibtex`).  
- Simplifies collaboration by ensuring everyone uses the same LaTeX setup.

## Usage

1. **Pull the image** (if you haven't already):
    
    docker pull jsalvarredy/latex

2. **Compile your `.tex` file**:
    
    docker run --rm -i -v $PWD:/data jsalvarredy/latex pdflatex -shell-escape main

    - `--rm`: removes the container once the command finishes.  
    - `-i`: runs the container in interactive mode (though often not strictly necessary for compilation).  
    - `-v $PWD:/data`: mounts your current working directory to `/data` in the container.  
    - `pdflatex -shell-escape main`: compiles the `main.tex` document. Modify the command or filename to suit your needs.

3. **Check your output**:
    - After the process completes, the `main.pdf` file will appear in your current directory.

## Advanced Usage

- **Run BibTeX**:

    docker run --rm -v $PWD:/data jsalvarredy/latex bibtex main

- **Install additional packages**:

    Extend this image with your own Dockerfile if you need more packages:
    
    FROM jsalvarredy/latex
    # Install additional packages here

## Requirements

- [Docker](https://www.docker.com/get-started) installed on your system.

## Contributing

Feel free to submit pull requests or open issues on the repository if you'd like to help improve this container.


---

**Happy compiling!**
