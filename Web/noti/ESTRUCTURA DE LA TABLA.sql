CREATE TABLE `noticias` (
  `id` int(6) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `msg` text NOT NULL,
  `date` int(15) NOT NULL default '0',
  `titulo` varchar(50) NOT NULL,
  `completa` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

INSERT INTO `noticias` (`id`, `name`, `msg`, `date`, `titulo`, `completa`) VALUES
(8, 'menduz', '�As� es! Una vez m�s TDS supera un nuevo record de usuarios, ya superamos los 900, exactamente 905!. Un n�mero realmente increible. �Ahora vamos por los 1.000!. Es [b]muy[/b] importante destacar que seg�n testimonios de usuarios [u]NO[/u] hab�a lag.\r\nAprovechamos tamb�en para contarles que, como habran notado, en estos �ltimos d�as bajaron la cantidad de noticias posteadas por d�a. Esto se debe a que el sistema de noticias se encuentra offline debido a que por este sistema ingresaron los hackers el fin de semana pasado al servidor. Esto va a seguir as� hasta que tengamos nuestro nuevo sistema de noticias 100% propio. Esperamos que sea en unos d�as.\r\nTamb�en nos encontramos trabajando en un nuevo y mejorado sistema de soporte para usuarios, la nueva versi�n del MercadoAo con 2x1 (por ej) y un parche del juego entre otras cosas..', 1222890420, 'Y un d�a... �900 online!', '');
