<?php

/**
 * Implements hook_theme().
 */
function parked_theme($existing, $type, $theme, $path) {
  return array(
    'earthclick_logo' => array(
      'variables' => array(),
    ),
    'dirtcheapcopies_logo' => array(
      'variables' => array(),
    ),
  );
}

/**
 * Implements theme_earthclick_logo().
 */
function theme_earthclick_logo() {
  return '<img src="/profiles/parked/earthclick-logo-med.png" alt="" class="earthclick" height="75" width="145" />';
}

/**
 * Implements theme_dirtcheapcopies_logo().
 */
function theme_dirtcheapcopies_logo() {
  return '<img src="/profiles/parked/dirtcheapcopies-logo-med.png" alt="" class="dirtcheapcopies" height="75" width="280" />';
}


/**
 * Implements hook_block_info()
 */
function parked_block_info() {
  $blocks['sponsors'] = array(
    'info' => t('Sponsored by:'),
    'status' => 1,
    'region' => 'sidebar_second',
    'weight' => '20',
    'cache' => DRUPAL_NO_CACHE,
  );
  $blocks['ting'] = array(
    'info' => t('Ting!'),
    'status' => 1,
    'region' => 'sidebar_second',
    'weight' => '10',
    'cache' => DRUPAL_NO_CACHE,
  );
  return $blocks;
}

/**
 * Implements hook_block_view().
 */
function parked_block_view($delta = '') {
  switch ($delta) {
    case 'sponsors':
      $earthclick = theme('earthclick_logo');
      if (!$earthclick) {
         $earthclick = t('Earthclick.net');
      }
      $dirtcheapcopies = theme('dirtcheapcopies_logo');
      if (!$dirtcheapcopies) {
         $dirtcheapcopies = t('DirtCheapCopies.com');
      }
      return array(
        'title' => 'Sponsors',
        'subject' => NULL,
        'content' => '<span><center><strong>' . variable_get('site_name', t('This site')) . '</strong><br>' . t('is hosted by:<br> <a href="http://www.earthclick.net" title="Earthclick.net" 
target="_blank">!earthclick</a><br></center><UL><LI>DSL<LI>Email<LI>Email Archiving<LI>Domain Registration<LI>Website Development<LI>Website hosting<LI>Wordpress & Drupal<LI>Dialup<LI>Unix Administration</UL>',array('!earthclick' => $earthclick)) . '<center><a href="http://www.earthclick.net" title="Earthclick.net" target="_blank">http://earthclick.net</a></center></span>
',
      );
    case 'ting':
      return array(
        'title' => 'Ting!',
        'subject' => NULL,
        'content' => '<a href="http://ting.7eer.net/c/69877/87560/2020"><img src="http://adn.impactradius.com/display-ad/2020-87560" border="0" alt="" width="180" height="180"/></a><img height="1" width="1" src="http://ting.7eer.net/i/69877/87560/2020" border="0" />',
      );
  }
}
