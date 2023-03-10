(define-module (emacs-ivy-spotify)
  #:use-module (guix)
  #:use-module (guix licenses)
  ;;#:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system emacs))
(define-public emacs-ivy-spotify
  (package
   (name "emacs-ivy-spotify")
   (version "3.0")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/Lautaro-Garcia/counsel-spotify.git")
		  (commit "2743ad52a9def53534fd505397fbe1ac49e53015")))
	    (sha256
	     (base32
	      "1wgm4q46nja71grwbdnacnlazj3cgfr6r1glpkyx8y3dn9amdhip"))
	    (file-name (git-file-name name version))))
	    (build-system emacs-build-system)
	    (home-page "https://github.com/cjohansson/emacs-ssh-deploy")
	    (synopsis
	     "An emacs package to allow auto deployment with ssh")
	    (description
	     "An emacs package to allow auto deployment with ssh")
            (license license:gpl3)
   ))
