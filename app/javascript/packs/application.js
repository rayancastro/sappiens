/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')

import 'bootstrap';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { setStickyFooter } from '../components/footer';
import { autocomplete } from '../components/autocomplete';
import { setCalendar } from '../components/calendar'; c
onsole.log("hello from webpacker");

setCalendar();

autocomplete();

initUpdateNavbarOnScroll();

setStickyFooter();

let names = ["Test Management", "Growth Hacking", "Software Development", "Data Mining", "Data Science"];

loadDynamicBannerText(names);
