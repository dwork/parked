core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = "7.27"

;------------------------------------------------------------------------------------------
; Include "parked" git
projects[parked][type] = profile
projects[parked][download][type] = git
projects[parked][download][url] = git://github.com/dwork/parked.git
