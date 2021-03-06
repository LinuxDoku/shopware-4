-- //

DELETE FROM `s_core_config_values`;
DELETE FROM `s_core_config_elements`;
DELETE FROM `s_core_config_forms`;

INSERT IGNORE INTO `s_core_config_forms` (`id`, `parent_id`, `name`, `label`, `description`, `position`, `scope`, `plugin_id`) VALUES
(77, NULL, 'Base', 'Shopeinstellungen', NULL, 0, 0, NULL),
(78, NULL, 'Core', 'System', NULL, 10, 0, NULL),
(79, NULL, 'Product', 'Artikel', NULL, 20, 0, NULL),
(80, NULL, 'Frontend', 'Storefront', NULL, 30, 0, NULL),
(82, NULL, 'Interface', 'Schnittstellen', NULL, 50, 0, NULL),
(83, NULL, 'Payment', 'Zahlungsarten', NULL, 60, 0, NULL),
(84, 79, 'Product29', 'Artikelnummern', NULL, 1, 1, NULL),
(86, 79, 'Product35', 'Sonstige MwSt.-Sätze', NULL, 4, 1, NULL),
(87, 79, 'PriceGroup', 'Preisgruppen', NULL, 5, 1, NULL),
(88, 79, 'Unit', 'Preiseinheiten', NULL, 6, 1, NULL),
(89, 79, 'Attribute', 'Artikel-Eigenschaften', NULL, 7, 1, NULL),
(90, 80, 'Rating', 'Artikelbewertungen', NULL, 8, 1, NULL),
(92, NULL, 'Other', 'Weitere Einstellungen', NULL, 60, 0, NULL),
(102, 80, 'LastArticles', 'Artikelverlauf', '', 0, 0, NULL),
(118, 77, 'Shop', 'Shops', NULL, 0, 0, NULL),
(119, 77, 'MasterData', 'Stammdaten', NULL, 10, 0, NULL),
(120, 77, 'Currency', 'Währungen', NULL, 20, 0, NULL),
(121, 77, 'Locale', 'Lokalisierungen', NULL, 30, 0, NULL),
(122, 77, 'Template', 'Templates', NULL, 40, 0, NULL),
(123, 77, 'Tax', 'Steuern', NULL, 50, 0, NULL),
(124, 77, 'Mail', 'Mailer', NULL, 60, 0, NULL),
(125, 77, 'Number', 'Nummernkreise', NULL, 70, 0, NULL),
(126, 77, 'CustomerGroup', 'Kundengruppen', NULL, 80, 0, NULL),
(127, 78, 'QueryCache', 'Caching', NULL, 10, 0, NULL),
(128, 78, 'Service', 'Wartung', NULL, 20, 1, NULL),
(133, 80, 'AdvancedMenu', 'Erweitertes Menü', '', 0, 0, NULL),
(134, 80, 'Compare', 'Artikelvergleich', NULL, 0, 0, NULL),
(135, 80, 'TagCloud', 'Schlagwortwolke', '', 0, 0, NULL),
(136, 80, 'Ticket', 'Ticketsystem', '', 0, 0, NULL),
(144, 80, 'Frontend30', 'Kategorien / Listen', NULL, 1, 1, NULL),
(145, 80, 'Frontend76', 'Topseller / Neuheiten', NULL, 2, 1, NULL),
(146, 80, 'Frontend77', 'Cross-Selling / Ähnliche Art.', NULL, 3, 1, NULL),
(147, 80, 'Frontend79', 'Warenkorb / Artikeldetails', NULL, 5, 1, NULL),
(157, 80, 'Frontend33', 'Anmeldung / Registrierung', NULL, 0, 1, NULL),
(173, 78, 'Statistics', 'Statistiken', '', 0, 0, NULL),
(174, 82, 'Google', 'Google Analytics', '', 0, 0, NULL),
(175, 78, 'HttpCache', 'HttpCache', '', 0, 0, NULL),
(176, 78, 'Log', 'Log', '', 0, 0, NULL),
(177, 78, 'Debug', 'Debug', '', 0, 0, NULL),
(180, 77, 'Country', 'Länder', NULL, 50, 0, NULL),
(189, 78, 'InputFilter', 'InputFilter', '', 0, 0, NULL),
(190, 80, 'Frontend42', 'Suche', NULL, 4, 1, NULL),
(191, 80, 'Frontend71', 'Rabatte / Zuschläge', NULL, 5, 1, NULL),
(192, 80, 'Frontend60', 'eMail-Einstellungen', NULL, 10, 1, NULL),
(247, 80, 'Frontend93', 'Versandkosten-Module', NULL, 11, 1, NULL),
(248, 80, 'Frontend101', 'USt-IdNr. Überprüfung', NULL, 11, 1, NULL),
(249, 80, 'Frontend100', 'SEO/Router-Einstellungen', NULL, 12, 1, NULL);

INSERT IGNORE INTO `s_core_config_elements` (`id`, `form_id`, `name`, `value`, `label`, `description`, `type`, `required`, `position`, `scope`, `filters`, `validators`, `options`) VALUES
(186, 86, 'vouchertax', 's:2:"19";', 'MwSt. Gutscheine', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(187, 86, 'taxshipping', 's:2:"19";', 'MwSt. Versandkosten', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(188, 86, 'discounttax', 's:2:"19";', 'MwSt. Rabatte', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(189, 90, 'voteunlock', 's:1:"1";', 'Artikel-Bewertungen müssen freigeschaltet werden', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(190, 84, 'backendautoordernumber', 's:1:"1";', 'Automatischer Vorschlag der Artikelnummer', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(191, 84, 'backendautoordernumberprefix', 's:2:"SW";', 'Präfix für automatisch generierte Artikelnummer', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(192, 90, 'votedisable', 's:1:"0";', 'Artikel-Bewertungen deaktivieren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(193, 90, 'votesendcalling', 's:1:"1";', 'Automatische Erinnerung zur Artikelbewertung senden', 'Nach Kauf dem Benutzer an die Artikelbewertung via E-Mail erinnern', 'boolean', 0, 0, 0, NULL, NULL, NULL),
(194, 90, 'votecallingtime', 's:1:"1";', 'Tage bis die Erinnerungs-E-Mail verschickt wird', 'Tage bis der Kunde via E-Mail an die Artikel-Bewertung erinnert wird', 'text', 0, 0, 0, NULL, NULL, NULL),
(195, 86, 'taxautomode', 's:1:"1";', 'Steuer f?r Rabatte dynamisch feststellen', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(224, 102, 'show', 'b:1;', 'Artikelverlauf anzeigen', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(225, 102, 'controller', 's:61:"index, listing, detail, custom, newsletter, sitemap, campaign";', 'Controller-Auswahl', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(226, 102, 'thumb', 's:1:"0";', 'Vorschaubild-Größe', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(227, 102, 'time', 'i:15;', 'Speicherfrist in Tagen', NULL, 'text', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(231, 102, 'lastarticlestoshow', 's:1:"5";', 'Anzahl Artikel in Verlauf (zuletzt angeschaut)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(234, 124, 'mailer_encoding', 's:4:"8bit";', 'Sets the Encoding of the message. Options for this are  "8bit", "7bit", "binary", "base64", and "quoted-printable".', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(235, 124, 'mailer_mailer', 's:4:"mail";', 'Method to send mail: ("mail", "smtp" or "file").', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(236, 124, 'mailer_hostname', 's:0:"";', 'Sets the hostname to use in Message-Id and Received headers and as default HELO string. If empty, the value returned by SERVER_NAME is used or "localhost.localdomain".', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(237, 124, 'mailer_host', 's:9:"localhost";', 'Sets the SMTP hosts.  All hosts must be separated by a semicolon.  You can also specify a different port for each host by using this format: [hostname:port] (e.g. "smtp1.example.com:25;smtp2.example.com"). Hosts will be tried in order.', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(238, 124, 'mailer_port', 's:2:"25";', 'Sets the default SMTP server port.', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(239, 124, 'mailer_smtpsecure', 's:0:"";', 'Sets connection prefix. Options are "", "ssl" or "tls"', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(240, 124, 'mailer_username', 's:0:"";', 'Sets SMTP username.', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(241, 124, 'mailer_password', 's:0:"";', 'Sets SMTP password.', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(242, 124, 'mailer_auth', 's:0:"";', 'Sets connection auth. Options are "", "plain",  "login" or "crammd5"', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(246, 127, 'cachecategory', 's:5:"86400";', 'Kategorien Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(247, 127, 'cacheprices', 's:5:"86400";', 'Preise Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(248, 127, 'cachechart', 's:5:"86400";', 'Topseller Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(249, 127, 'cachesupplier', 's:5:"86400";', 'Hersteller Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(250, 127, 'cachearticle', 's:5:"86400";', 'Artikeldetailseite Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(251, 127, 'cachecountries', 's:5:"86400";', 'Länderliste Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(252, 127, 'cachesearch', 's:5:"86400";', 'Cache Suche', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(253, 127, 'cachetranslations', 's:5:"86400";', 'Übersetzungen Pufferzeit', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(254, 128, 'setoffline', 's:1:"0";', 'Shop wegen Wartung sperren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(255, 128, 'offlineip', 's:1:"0";', 'Von der Sperrung ausgeschlossene IP', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(256, 127, 'deletecacheafterorder', 's:1:"0";', 'Shopcache nach jeder Bestellung leeren (Performance lastig)', 'Warnung! Kann massive Performance-Einbrüche nach sich ziehen', 'boolean', 0, 0, 0, NULL, NULL, NULL),
(257, 127, 'disablecache', 's:1:"1";', 'Shopcache deaktivieren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(269, 133, 'show', 'i:1;', 'Menü zeigen', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(270, 133, 'levels', 'i:2;', 'Anzahl Ebenen', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(271, 133, 'caching', 'i:1;', 'Caching aktivieren', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(272, 133, 'cachetime', 'i:86400;', 'Cachezeit', NULL, 'text', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(273, 134, 'show', 'i:1;', 'Vergleich zeigen', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(274, 134, 'maxComparisons', 'i:5;', 'Maximale Anzahl von zu vergleichenden Artikeln', NULL, 'number', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(275, 135, 'show', 'b:1;', 'Tag-Cloud anzeigen', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(276, 135, 'controller', 's:14:"index, listing";', 'Controller-Auswahl', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(277, 135, 'tagCloudClass', 's:3:"tag";', 'Name der Tag-Klasse', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(278, 135, 'tagCloudMax', 'i:46;', 'Maximale Anzahl Begriffe', NULL, 'number', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(279, 135, 'tagCloudSplit', 'i:3;', 'Anzahl der Stufen', NULL, 'number', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(280, 135, 'tagTime', 'i:30;', 'Die berücksichtigte Zeit in Tagen', NULL, 'number', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(281, 136, 'show', 'i:1;', 'Link im Kundenkonto zeigen', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(282, 136, 'ticketAccountFormId', 'i:22;', '"Mein-Konto" - Formular ID', NULL, 'number', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(283, 136, 'ticketNotifyEmail', 'b:0;', 'Benachrichtung bei neuen / beantworteten Ticktes', 'Bitte hinterlegen Sie eine oder mehrer eMail-Adressen', 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(284, 136, 'ticketEmailMatch', 'b:1;', 'Absender-eMail mit Kundenliste vergleichen', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(285, 136, 'ticketNotifyMailCostumer', 'b:1;', 'Ticketbestätigung an den Kunden', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(286, 144, 'articlesperpage', 's:2:"12";', 'Artikel pro Seite', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(287, 144, 'orderbydefault', 's:12:"a.datum DESC";', 'Standardsortierung Listings', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(288, 144, 'maxpages', 's:1:"8";', 'Kategorien max. Anzahl Seiten', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(289, 145, 'markasnew', 's:2:"30";', 'Artikel als neu markieren (Tage)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(290, 145, 'markastopseller', 's:2:"30";', 'Artikel als Topseller markieren (Verkäufe)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(291, 145, 'chartrange', 's:1:"5";', 'Anzahl Topseller für Charts', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(292, 144, 'numberarticlestoshow', 's:11:"12|24|36|48";', 'Auswahl Artikel pro Seite', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(293, 144, 'categorytemplates', 's:141:"article_listing_1col.tpl:Liste;article_listing_2col.tpl:Zweispaltig;article_listing_3col.tpl:Dreispaltig;article_listing_4col.tpl:Vierspaltig";', 'Verfügbare Templates Kategorien', NULL, 'textarea', 0, 0, 0, NULL, NULL, NULL),
(294, 147, 'maxpurchase', 's:3:"100";', 'Max. wählbare Artikelmenge / Artikel über Pulldown-Menü', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(295, 147, 'notavailable', 's:21:"Lieferzeit ca. 5 Tage";', 'Text für nicht verfügbare Artikel', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(296, 146, 'maxcrosssimilar', 's:1:"8";', 'Anzahl ähnlicher Artikel Cross-Selling', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(297, 146, 'maxcrossalsobought', 's:1:"8";', 'Anzahl "Kunden kauften auch" Artikel Cross-Selling', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(298, 144, 'category_default_tpl', 's:24:"article_listing_4col.tpl";', 'Standard-Template für neue Kategorien', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(299, 145, 'chartinterval', 's:2:"10";', 'Anzahl der Tage, die für die Topseller-Generierung berücksichtigt werden', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(300, 146, 'similarlimit', 's:1:"3";', 'Anzahl automatisch ermittelter, ähnlicher Artikel (Detailseite)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(301, 147, 'basketshippinginfo', 's:1:"1";', 'Lieferzeit im Warenkorb anzeigen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(302, 145, 'articlelimit', 's:2:"50";', 'Anzahl der Artikel, die unter Neuheiten ausgegeben werden', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(303, 147, 'inquiryid', 's:2:"16";', 'Anfrage-Formular ID', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(304, 147, 'inquiryvalue', 's:3:"150";', 'Mind. Warenkorbwert ab dem die Möglichkeit der individuellen Anfrage angeboten wird', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(305, 147, 'usezoomplus', 's:1:"1";', 'Zoomviewer statt Lightbox auf Detailseite', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(306, 147, 'liveinstock', 's:1:"1";', 'Lagerbestand auf Detailseite in Echtzeit abfragen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(307, 147, 'configmaxcombinations', 's:4:"1000";', 'Maximale Anzahl an Konfigurator-Varianten je Artikel', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(308, 147, 'deactivatenoinstock', 's:1:"0";', 'Abverkaufsartikel ohne Lagerbestand deaktivieren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(309, 147, 'showbundlemainarticle', 's:1:"1";', 'Hauptartikel im Bundle anzeigen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(310, 147, 'deactivatebasketonnotification', 's:1:"1";', 'Warenkorb bei eMail-Benachrichtigung ausblenden', 'Warenkorb bei aktivierter eMail-Benachrichtigung und nicht vorhandenem Lagerbestand ausblenden', 'boolean', 0, 0, 0, NULL, NULL, NULL),
(311, 147, 'instockinfo', 's:1:"0";', 'Lagerbestands-Unterschreitung im Warenkorb anzeigen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(312, 144, 'categorydetaillink', 's:1:"0";', 'Direkt auf Detailspringen, falls nur ein Artikel vorhanden ist', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(313, 147, 'configcustomfields', 's:22:"Freitext 1, Freitext 2";', 'Konfigurator Freitextfelder', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(314, 147, 'detailtemplates', 's:34:":Standard;../blog/details.tpl:Blog";', 'Verf?gbare Templates Detailseite', NULL, 'textarea', 0, 0, 0, NULL, NULL, NULL),
(315, 144, 'maxsupplierscategory', 's:2:"30";', 'Max. Anzahl Hersteller in Sidebar', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(317, 157, 'minpassword', 's:1:"8";', 'Mindestlänge Passwort (Registrierung)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(318, 157, 'defaultpayment', 's:1:"5";', 'Standardzahlungsart (Id) (Registrierung)', NULL, 'select', 1, 0, 1, NULL, NULL, 'a:3:{s:5:"store";s:12:"base.Payment";s:12:"displayField";s:11:"description";s:10:"valueField";s:2:"id";}'),
(319, 157, 'newsletterdefaultgroup', 's:1:"1";', 'Standard-Empfangsgruppe (ID) für registrierte Kunden (System / Newsletter)', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(320, 157, 'shopwaremanagedcustomernumbers', 's:1:"1";', 'Shopware generiert Kundennummern', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(321, 157, 'ignoreagb', 's:1:"0";', 'AGB - Checkbox auf Kassenseite deaktivieren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(322, 157, 'countryshipping', 's:1:"1";', 'Land bei Lieferadresse abfragen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(323, 157, 'actdprcheck', 's:1:"0";', 'Datenschutz-Bedingungen müssen über Checkbox akzeptiert werden', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(324, 157, 'paymentdefault', 's:1:"5";', 'Fallback-Zahlungsart (ID)', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(325, 157, 'doubleemailvalidation', 's:1:"0";', 'E-Mail Addresse muss zweimal eingegeben werden.', 'E-Mail Addresse muss zweimal eingegeben werden, um Tippfehler zu vermeiden.', 'boolean', 0, 0, 0, NULL, NULL, NULL),
(326, 157, 'newsletterextendedfields', 's:1:"1";', 'Erweiterte Felder in Newsletter-Registrierung abfragen', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(327, 157, 'noaccountdisable', 's:1:"0";', '"Kein Kundenkonto" deaktivieren', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(585, 173, 'blockIp', 'N;', 'IP von Statistiken ausschließen', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(586, 174, 'tracking_code', 'N;', 'Google Analytics-ID', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(587, 174, 'conversion_code', 'N;', 'Google Conversion-ID', NULL, 'text', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(588, 174, 'anonymize_ip', 'b:1;', 'IP-Adresse anonymisieren', NULL, 'checkbox', 0, 0, 1, NULL, NULL, 'a:0:{}'),
(589, 175, 'cacheControllers', 's:237:"frontend/listing 3600\nfrontend/index 3600\nfrontend/detail 3600\nfrontend/campaign 14400\nwidgets/listing 14400\nfrontend/custom 14400\nfrontend/sitemap 14400\nwidgets/index 3600\nwidgets/checkout 3600\nwidgets/compare 3600\nwidgets/emotion 3600\n";', 'Cache-Controller / Zeiten', NULL, 'textarea', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(590, 175, 'noCacheControllers', 's:98:"frontend/checkout checkout\nfrontend/note checkout\nfrontend/detail detail\nfrontend/compare compare\n";', 'NoCache-Controller / Tags', NULL, 'textarea', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(591, 175, 'proxy', 'N;', 'Alternative Proxy-Url', NULL, 'text', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(592, 175, 'admin', 'i:0;', 'Admin-View', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(593, 176, 'logDb', 'i:1;', 'Fehler in Datenbank schreiben', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(594, 176, 'logMail', 'i:0;', 'Fehler an Shopbetreiber senden', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(595, 177, 'AllowIP', 's:0:"";', 'Auf IP beschränken', NULL, 'text', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(608, 189, 'sql_protection', 'b:1;', 'SQL-Injection-Schutz aktivieren', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(609, 189, 'sql_regex', 's:134:"s_core_|s_order_|benchmark.*\\(|insert.+into|update.+set|(?:delete|select).+from|drop.+(?:table|database)|truncate.+table|union.+select";', 'SQL-Injection-Filter', NULL, 'textarea', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(610, 189, 'xss_protection', 'b:1;', 'XSS-Schutz aktivieren', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(611, 189, 'xss_regex', 's:42:"javascript:|src\\s*=|on[a-z]+\\s*=|style\\s*=";', 'XSS-Filter', NULL, 'textarea', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(612, 189, 'rfi_protection', 'b:1;', 'RemoteFileInclusion-Schutz aktivieren', NULL, 'checkbox', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(613, 189, 'rfi_regex', 's:33:"\\.\\./|\\0|2\\.2250738585072011e-308";', 'RemoteFileInclusion-Filter', NULL, 'textarea', 0, 0, 0, NULL, NULL, 'a:0:{}'),
(614, 191, 'vouchername', 's:9:"Gutschein";', 'Gutscheine Bezeichnung', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(615, 190, 'minsearchlenght', 's:1:"3";', 'Minimale Suchwortlänge', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(620, 191, 'discountname', 's:15:"Warenkorbrabatt";', 'Rabatte Bezeichnung ', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(623, 191, 'surchargename', 's:20:"Mindermengenzuschlag";', 'Mindermengen Bezeichnung', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(624, 192, 'no_order_mail', 's:1:"0";', 'Bestellbestätigung nicht an Shopbetreiber schicken', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(625, 190, 'badwords', 's:381:"ab,die,der,und,in,zu,den,das,nicht,von,sie,ist,des,sich,mit,dem,dass,er,es,ein,ich,auf,so,eine,auch,als,an,nach,wie,im,fÃ¼r,einen,um,werden,mehr,zum,aus,ihrem,style,oder,neue,spieler,kÃ¶nnen,wird,sind,ihre,einem,of,du,sind,einer,Ã¼ber,alle,neuen,bei,durch,kann,hat,nur,noch,zur,gegen,bis,aber,haben,vor,seine,ihren,jetzt,ihr,dir,etc,bzw,nach,deine,the,warum,machen,0,sowie,am";', 'Blacklist für Keywords', NULL, 'text', 1, 0, 0, NULL, NULL, NULL),
(626, 191, 'paymentsurchargeadd', 's:25:"Zuschlag für Zahlungsart";', 'Bezeichnung proz. Zuschlag für Zahlungsart', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(627, 191, 'paymentsurchargedev', 's:25:"Abschlag für Zahlungsart";', 'Bezeichnung proz. Abschlag für Zahlungsart', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(628, 191, 'discountnumber', 's:11:"sw-discount";', 'Rabatte Bestellnummer', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(629, 191, 'surchargenumber', 's:12:"sw-surcharge";', 'Mindermengen Bestellnummer', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(630, 191, 'paymentsurchargenumber', 's:10:"sw-payment";', 'Zuschlag für Zahlungsart (Bestellnummer)', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(631, 190, 'maxlivesearchresults', 's:1:"6";', 'Anzahl der Ergebnisse in der Livesuche', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(632, 191, 'ignoreshippingfreeforsurcharges', 's:1:"0";', 'Absolute Zahlungszuschläge für Versandkosten immer berechnen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(633, 192, 'send_confirm_mail', 's:1:"1";', 'Registrierungsbestätigung in CC an Shopbetreiber schicken', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(634, 192, 'optinnewsletter', 's:1:"0";', 'Double-Opt-In für Newsletter-Anmeldungen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(635, 192, 'optinvote', 's:1:"1";', 'Double-Opt-In für Artikel-Bewertungen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(636, 191, 'shippingdiscountnumber', 's:16:"SHIPPINGDISCOUNT";', 'Abschlag-Versandregel (Bestellnummer)', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(637, 191, 'shippingdiscountname', 's:15:"Warenkorbrabatt";', 'Abschlag-Versandregel (Bezeichnung)', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(638, 190, 'fuzzysearchpricefilter', 's:47:"5|10|20|50|100|300|600|1000|1500|2500|3500|5000";', 'Auswahl Preisfilter', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(639, 190, 'fuzzysearchselectperpage', 's:11:"12|24|36|48";', 'Auswahl Ergebnisse pro Seite', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(640, 190, 'fuzzysearchresultsperpage', 's:2:"12";', 'Ergebnisse pro Seite', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(641, 192, 'orderstatemailack', 's:0:"";', 'Bestellstatus - Änderungen CC-Adresse', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(642, 247, 'premiumshippiungasketselect', 's:93:"MAX(a.topseller) as has_topseller, MAX(at.attr3) as has_comment, MAX(b.esdarticle) as has_esd";', 'Erweitere SQL-Abfrage', NULL, 'text', 1, 0, 0, NULL, NULL, NULL),
(643, 247, 'premiumshippiungnoorder', 's:1:"0";', 'Bestellung bei keiner verfügbaren Versandart blocken', NULL, 'boolean', 1, 0, 0, NULL, NULL, NULL),
(644, 247, 'premiumshippiung', 's:1:"1";', 'Modul aktivieren', NULL, 'boolean', 1, 0, 0, NULL, NULL, NULL),
(645, 249, 'routerusemodrewrite', 's:1:"1";', 'Mod_Rewrite nutzen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(646, 249, 'routertolower', 's:1:"1";', 'Nur Kleinbuchstaben in den Urls nutzen', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(647, 249, 'redirectbasefile', 's:1:"1";', 'Startseite ohne Shopkernel in der Url nutzen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(648, 249, 'redirectnotfound', 's:1:"1";', 'Bei nicht vorhandenen Kategorien/Artikel auf Startseite umleiten', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(649, 249, 'seometadescription', 's:1:"1";', 'Meta-Description von Artikel/Kategorien aufbereiteten', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(650, 249, 'routerremovecategory', 's:1:"0";', 'KategorieID aus Url entfernen', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(651, 249, 'seoqueryblacklist', 's:50:"sPage,sPerPage,sSupplier,sFilterProperties,p,n,s,f";', 'SEO-Nofollow Querys', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(652, 249, 'seoviewportblacklist', 's:112:"login,ticket,tellafriend,note,support,basket,admin,registerFC,newsletter,search,search,account,checkout,register";', 'SEO-Nofollow Viewports', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(653, 249, 'seoremovewhitespaces', 's:1:"1";', 'überflüssige Leerzeichen / Zeilenumbrüchen entfernen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(654, 249, 'seoremovecomments', 's:1:"1";', 'Html-Kommentare entfernen', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(655, 249, 'seoqueryalias', 's:122:"sSearch=q,\r\nsPage=p,\r\nsPerPage=n,\r\nsSupplier=s,\r\nsFilterProperties=f,\r\nsCategory=c,\r\nsCoreId=u,\r\nsTarget=t,\r\nsValidation=v";', 'Query-Aliase', NULL, 'textarea', 0, 0, 0, NULL, NULL, NULL),
(656, 249, 'seobacklinkwhitelist', 's:54:"www.shopware.de,\r\nwww.shopware.ag,\r\nwww.shopware-ag.de";', 'SEO-Follow Backlinks', NULL, 'textarea', 0, 0, 1, NULL, NULL, NULL),
(657, 249, 'seorelcanonical', 's:1:"1";', 'SEO-Canonical-Tags nutzen', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(658, 249, 'routerlastupdate', 's:37:"a:1:{i:1;s:19:"2012-07-06 13:45:04";}";', 'Datum des letzten Updates', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(659, 249, 'routercache', 's:5:"86400";', 'SEO-Urls Cachezeit Tabelle', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(660, 249, 'routerurlcache', 's:5:"86400";', 'SEO-Urls Cachezeit Urls', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(661, 248, 'vatcheckendabled', 's:1:"0";', 'Modul aktivieren', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(662, 248, 'vatcheckadvancednumber', 's:0:"";', 'Eigene USt-IdNr. für die Überprüfung', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(663, 248, 'vatcheckadvanced', 's:1:"0";', 'Erweiterte Überprüfung aktivieren', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(664, 248, 'vatcheckadvancedcountries', 's:2:"AT";', 'gültige Länder für erweiterte Überprüfung', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(665, 248, 'vatcheckrequired', 's:1:"0";', 'USt-IdNr. als Pflichtfeld markieren', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(666, 248, 'vatcheckdebug', 's:1:"0";', 'Erweiterte Fehlerausgabe aktivieren', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(667, 249, 'routerarticletemplate', 's:70:"{sCategoryPath articleID=$sArticle.id}/{$sArticle.id}/{$sArticle.name}";', 'SEO-Urls Artikel-Template', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(668, 249, 'routercategorytemplate', 's:40:"{sCategoryPath categoryID=$sCategory.id}";', 'SEO-Urls Kategorie-Template', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(669, 248, 'vatchecknoservice', 's:1:"1";', 'Wenn Service nicht erreichbar ist, nur einfach Überpürfung durchführen.', NULL, 'boolean', 0, 0, 0, NULL, NULL, NULL),
(670, 249, 'seostaticurls', 's:941:"sViewport=sale&sAction=doSale,Bestellung abgeschlossen\r\nsViewport=admin&sAction=orders,{$sConfig.sSnippets.sIndexmyorders}\r\nsViewport=admin&sAction=downloads,{$sConfig.sSnippets.sIndexmyinstantdownloads}\r\nsViewport=admin&sAction=billing,{$sConfig.sSnippets.sIndexchangebillingaddress}\r\nsViewport=admin&sAction=shipping,{$sConfig.sSnippets.sIndexchangedeliveryaddress}\r\nsViewport=admin&sAction=payment,{$sConfig.sSnippets.sIndexchangepayment}\r\nsViewport=admin&sAction=ticketview,{$sConfig.sSnippets.sTicketSysSupportManagement}\r\nsViewport=logout,{$sConfig.sSnippets.sIndexlogout}\r\nsViewport=support&sFid={$sConfig.sINQUIRYID}&sInquiry=basket,{$sConfig.sSnippets.sBasketInquiry}\r\nsViewport=support&sFid={$sConfig.sINQUIRYID}&sInquiry=detail,{$sConfig.sSnippets.sArticlequestionsaboutarticle}\r\n{foreach from=$sConfig.sViewports item=viewport key=viewportID}\r\n{if $viewportID!=search}\r\nsViewport={$viewportID},{$viewport.name}\r\n{/if}\r\n{/foreach}";', 'sonstige SEO-Urls', NULL, 'textarea', 0, 0, 1, NULL, NULL, NULL),
(671, 248, 'vatcheckconfirmation', 's:1:"0";', 'Amtliche Bestätigungsmitteilung bei der erweiterten Überprüfung anfordern', NULL, 'boolean', 0, 0, 1, NULL, NULL, NULL),
(672, 248, 'vatcheckvalidresponse', 's:4:"A, D";', 'Gültige Ergebnisse bei der erweiterten Überprüfung', NULL, 'text', 0, 0, 0, NULL, NULL, NULL),
(NULL, 119, 'shopName', 's:13:"Shopware Demo";', 'Name des Shops', NULL, 'text', 1, 0, 1, NULL, NULL, NULL),
(NULL, 119, 'mail', 's:16:"info@example.com";', 'Shopbetreiber eMail', NULL, 'text', 1, 0, 1, NULL, NULL, NULL),
(NULL, 119, 'address', 's:0:"";', 'Adresse', NULL, 'textarea', 0, 0, 1, NULL, NULL, NULL),
(NULL, 119, 'taxNumber', 's:0:"";', 'UStId', NULL, 'text', 0, 0, 1, NULL, NULL, NULL),
(NULL, 119, 'bankAccount', 's:0:"";', 'Bankverbindung', NULL, 'textarea', 0, 0, 1, NULL, NULL, NULL);

-- Fix plugin id in forms
UPDATE s_core_config_forms f, s_core_plugins p
SET f.plugin_id=p.id
WHERE p.name =  f.name
AND f.parent_id >=78;

-- Fix default config
INSERT IGNORE INTO `s_core_config_values` (element_id, shop_id, value)
SELECT e.id, 1, CONCAT('s:', LENGTH(c.value), ':"', c.value, '";')
FROM s_core_config c, s_core_config_elements e
WHERE LOWER(SUBSTR(c.name, 2)) = e.name
AND CONCAT('s:', LENGTH(c.value), ':"', c.value, '";') != e.value;

-- Fix form scope
UPDATE s_core_config_forms f SET f.scope = (SELECT MAX(scope) FROM s_core_config_elements WHERE form_id=f.id);

-- //@UNDO

DELETE FROM `s_core_config_values`;
DELETE FROM `s_core_config_elements`;
DELETE FROM `s_core_config_forms`;

-- //
