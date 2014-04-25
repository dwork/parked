api = 2
core = 7.x

; Build Kit 7.x-2.x HEAD
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib
projects[responsive_blog][subdir] = contrib
projects[responsive_bartik[subdir] = contrib

projects[ctools][version] = 1.4
projects[features][version] = 2.0
projects[globalredirect][version] = 1.5
projects[pathauto][version] = 1.2
projects[redirect][version] = 1.0-rc1

;--------------------
; Additional Contrib
;--------------------

projects[parked_bartik][download][type] = "git"
projects[parked_bartik][download][url] = "https://github.com/dwork/parked_bartik.git"
projects[parked_bartik][subdir] = "contrib"
projects[parked_bartik][type] = "theme"

projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc3

projects[adsense][subdir] = contrib
projects[adsense][version] = 1.2

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.1

projects[entity][subdir] = contrib
projects[entity][version] = 1.4

projects[libraries][subdir] = contrib
projects[libraries][version] = 2.2

projects[link][subdir] = contrib
projects[link][version] = 1.2

projects[rdfx][subdir] = contrib
projects[rdfx][version] = 2.0-alpha4

projects[token][subdir] = contrib
projects[token][version] = 1.5

projects[views][subdir] = contrib
projects[views][version] = 3.7

;--------------------
; Custom
;--------------------

; Include levelten features
includes[seotools] = http://github.com/dwork/make-levelten/raw/master/seotools.make.inc

