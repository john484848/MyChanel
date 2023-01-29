(define-module (emacs-smudge)
  #:use-module (guix)
  #:use-module (guix licenses)
  ;;#:use-module (gnu packages)
  ;;#:use-module (gnu packages emacs-simple-httpd)
  ;;#:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system emacs))
(define-public emacs-simple-httpd
  (package
    (name "emacs-simple-httpd")
    (version "1.5.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/skeeto/emacs-web-server")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0dpn92rg813c4pq7a1vzj3znyxzp2lmvxqz6pzcqi0l2xn5r3wvb"))))
    (build-system emacs-build-system)
    (home-page "https://github.com/skeeto/emacs-web-server")
    (synopsis "HTTP server in pure Emacs Lisp")
    (description
     "This package provides a simple HTTP server written in Emacs Lisp to
serve files and directory listings.")
    (license license:unlicense)))
(define-public emacs-smudge
  (package
   (name "emacs-smudge")
   (version "1.0")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/danielfm/smudge.git")
		  (commit "9e3488f485b7d7f3c97ebaad34ed552bb0cc228a")))
	    (sha256
	     (base32
	      "17sgnl5avnxfw7hdl7k3ssqcj2ygrhfwg2rv0krn7axmjlmr2gjp"))
	    (file-name (git-file-name name version))))
	    (build-system emacs-build-system)
            (arguments (inputs (list emacs-simple-httpd)))
	    (home-page "https://github.com/danielfm/smudge")
	    (synopsis
	     "An emacs package to control spotify")
	    (description
	     "An emacs package to control spotify")
            (license license:gpl3)
   ))
