;;; init.el --- Init file for initial configuration for emacs -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Italo Amaya Arlotti
;;
;; Author: Italo Amaya Arlotti <italoamaya@icloud.com>
;; Maintainer: Italo Amaya Arlotti <italoamaya@icloud.com>
;; Created: August 22, 2023
;; Modified: August 22, 2023
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/italo/init
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Init file for initial configuration for emacs
;;
;;; Code:

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("54936a5c6b82ddedcb0378784119f8a6443e0c8d11f6aadd1974b224502ce63f"
     "e63807a0b0bdb8dc1b0b42ef44e92951305a0053f504eb1a4aee3dfcd5ea4946"
     "c3076fdee603e9768817cfe8dbf6253d5b3cf3bf4602cb32fa2f1df62fe70b1c"
     "7de64ff2bb2f94d7679a7e9019e23c3bf1a6a04ba54341c36e7cf2d2e56e2bcc"
     "1f8bd4db8280d5e7c5e6a12786685a7e0c6733b0e3cf99f839fb211236fb4529"
     "117f7dfb273bb39b83a228018ccffeb85ba0983c5d4a63155a5a48ad7f7c7c86"
     "599f72b66933ea8ba6fce3ae9e5e0b4e00311c2cbf01a6f46ac789227803dd96"
     "e1df746a4fa8ab920aafb96c39cd0ab0f1bac558eff34532f453bd32c687b9d6"
     "2ab8cb6d21d3aa5b821fa638c118892049796d693d1e6cd88cb0d3d7c3ed07fc"
     "87fa3605a6501f9b90d337ed4d832213155e3a2e36a512984f83e847102a42f4"
     "5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     "5244ba0273a952a536e07abaad1fdf7c90d7ebb3647f36269c23bfd1cf20b0b8"
     "921f165deb8030167d44eaa82e85fcef0254b212439b550a9b6c924f281b5695"
     "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1"
     "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290"
     "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700"
     "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738"
     "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2"
     "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882"
     "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d"
     "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2"
     "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b"
     "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec"
     "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
     "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1"
     "d6b934330450d9de1112cbb7617eaf929244d192c4ffb1b9e6b63ad574784aad"
     "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22"
     "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443"
     "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da"
     "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0"
     "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851"
     "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176"
     "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d"
     "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e"
     "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4"
     "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00"
     "ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(eglot))
 '(safe-local-variable-directories
   '("/home/italo/openchip/fineforge/" "/opt/fineforge/occt/"
     "/home/italo/openchip/fineforge/occt/"
     "/home/italo/openchip/aios-templates/"
     "/home/italo/openchip/occt/"
     "/home/italo/openchip/occt/src/occt/verifiable_compute/svip/"
     "/home/italo/openchip/occt/src/verifiable_compute/svip/"
     "/home/italo/openchip/occt/verifiable_compute/svip/"
     "/home/italo/openchip/fineforge/src/fineforge/resources/security/verifiable_compute/"
     "/home/italo/openchip/fineforge/src/fineforge/resources/security/verifiable_compute/svip/"
     "/home/italo/repos/SVIP/"))
 '(safe-local-variable-values
   '((my/pod-destination-dir . "/home/devuser/work/your_project_dir/")))
 '(warning-suppress-log-types '((emacs))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit default :weight regular :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight regular :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight regular :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight regular :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight regular))))
 '(org-level-6 ((t (:inherit default :weight regular))))
 '(org-level-7 ((t (:inherit default :weight regular))))
 '(org-level-8 ((t (:inherit default :weight regular)))))
(put 'narrow-to-region 'disabled nil)
