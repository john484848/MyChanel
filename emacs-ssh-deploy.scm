(define-module (my-packages ds-tools)
  #:use-module (guix)
  #:use-module (guix licenses)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system emacs))
(define-public emacs-ssh-deploy
  (package
   (name "emacs-ssh-deploy")
   (version "3.0")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/cjohansson/emacs-ssh-deploy")
		  (commit "9311f9b4f8d25ce54fb7da9bf59d955fed366a4d")))
	    (file-name (git-file-name name version))
	    (sha256
	     (base32
	      "1wgm4q46nja71grwbdnacnlazj3cgfr6r1glpkyx8y3dn9amdhip"))))
	    (build-system emacs-build-system)
	    (home-page "https://github.com/cjohansson/emacs-ssh-deploy")
	    (synopsis
	     "An emacs package to allow auto deployment with ssh")
	    (description
	     "An emacs package to allow auto deployment with ssh")
            (license license:gpl3)
   ))
