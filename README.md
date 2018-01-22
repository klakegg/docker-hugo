# Hugo

Docker image for [Hugo](http://gohugo.io/).


## Using image

### Ordinary use

```docker run --rm -it -v `pwd`:/src klakegg/hugo:0.34 [arguments]```


## Configuration

Folders:
* ```/src``` - Source folder and workdir
* ```/target``` - Target folder

Exposed:
* Port 1313
