-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 14 Avril 2017 à 17:31
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blogmvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `author_id`, `created_at`) VALUES
(1, 'test2', 'test2', 4, '2017-04-12 14:46:35'),
(2, '', '', 3, '2017-04-13 17:17:12'),
(4, 'Le roi lion', 'La mort de Mufasa est une horrible tragédie. Mais perdre Simba qui était à l’aube de sa vie, est pour moi un drame personnel d’une cruauté insoutenable. C’est donc le cœur brisé par le chagrin que je monte sur le trône. S', 9, '2017-04-13 10:23:34'),
(5, 'SUPERMAN', 'exemple d''article sur supermain', NULL, '2017-04-13 10:29:33'),
(7, 'Qui unde saepe aut vero quasi.', 'Et tu vis bien, tu as peur de Charles; puis, le menton posé sur le perron; il vint lui ouvrir la serrure et les alentours. Depuis deux heures bientôt, s''était immobilisé dans l''église comme les.', NULL, '2016-10-28 07:07:40'),
(8, 'Officia sed qui voluptatibus voluptatem consequatur.', 'Dupuis eut l''honneur de lui dire, de s''écrier: «Enlève-moi, emmène-moi, partons! À toi, à toi! toutes mes ardeurs et tous ces grands carrés noirs bordés d''or sortaient, çà et là, comme une pomme..', NULL, '2016-05-27 20:30:54'),
(9, 'Numquam omnis repellat voluptatem ex eaque sed.', 'L''aubergiste ne quittait point des yeux désespérés, cherchant au loin les deux cardinaux et archevêques de Rouen. Il retira les épingles qui fermaient la bouche ouverte, les paupières de ses.', NULL, '2016-07-05 03:46:09'),
(10, 'test finale', 'Au bout de quelques boutiques, s''arrête court au tournant de la terrasse. M. Bournisien, plus robuste, continua quelque temps avec un grand homme, un fantôme fait de ses effets; plus, des.', NULL, '2016-04-18 04:48:28'),
(11, 'Quos illum esse mollitia quisquam ut dignissimos dolores.', 'Il était seul, dans sa chambre, ou bien la boucle d''une jarretière au haut d''un mollet rebondi. Le Marquis ouvrit la fenêtre, de l''appeler; mais déjà il avait soigné les choses; et il resta jusqu''au.', NULL, '2016-11-18 16:29:12'),
(12, 'Quo aliquam omnis quisquam eos a illo.', 'Quand ils arrivèrent chez eux, le marmot fut gâté comme un navire. Une fois, au milieu de l''herbe qu''on fanait. Elle était amoureuse de Léon, et lui laissent faire ses adieux. Les herbes aromatiques.', NULL, '2016-07-27 06:24:00'),
(13, 'Et rem et non quam quam et magnam mollitia.', 'Si son enfance se fût agi d''une exécution capitale. On discutait chez l''épicier sur la bouche, qui se présentait. Les rideaux de mousseline, le long de la charité, ni la matière médicale, tous noms.', NULL, '2016-08-15 23:36:24'),
(14, 'Ut delectus non nostrum in.', 'Tout cela devait lui plaire: il s''en revenait de chez lui, près de la grande route à la mer et qui voltigeant, se soutenant, faisant dans l''air comme des chevaux, et il s''y voyait en petit tablier.', NULL, '2017-01-15 05:17:36'),
(15, 'Accusantium qui suscipit non sunt.', 'Elle était pâle partout, blanche comme une corde de harpe près de vous, n''osant vous suivre tout à l''heure pour si peu d''une candeur pareille! Cet amour sans libertinage était pour lui faire la.', NULL, '2016-05-19 16:07:45'),
(16, 'Cum qui quis consequatur repellat rerum.', 'Elle rangeait son linge dans sa chambre, toute sa peau blanche et même racontait des histoires de catalepsie, les miracles du magnétisme; et il ne trouva personne que M. Binet donc! À six heures; on.', NULL, '2016-06-02 09:15:48'),
(17, 'Perspiciatis quo sunt possimus repudiandae.', 'Elle était libre. Et elle sortit, en essuyant ses pieds était plus mou qu''une onde, et les feuilles des hêtres bruissaient en un tel concours de population, qu''il y avait cent moyens fort commodes,.', NULL, '2017-01-11 19:54:15'),
(18, 'Consequatur deleniti sunt qui occaecati consequatur molestias.', 'Qu''y a-t-il? Alors la mère Bovary se mit à fouiller dans ce geste hideux et doux des agonisants qui semblent vouloir déjà se recouvrir du suaire. Pâle comme une statue de cire. Il sortait de ses.', NULL, '2016-09-24 18:06:43'),
(19, 'Ratione et a mollitia consectetur enim omnis autem.', 'Partout fleurissent le commerce d''Yonville. Charles se rappela la lettre; il fallait continuer à sourire, et le jeu de la bombance, il eut peur, s''imaginant qu''il bavarderait. Il n''était pas trop.', NULL, '2016-08-20 19:59:52'),
(20, 'Laboriosam iusto amet odio harum.', 'Yonville. C''était une existence inutile? Si nos douleurs pouvaient servir à sa chambre et se vanta d''avoir, après force démarches, fini par préparer au sieur Lheureux un capital, qu''il attendait.', NULL, '2017-03-24 06:01:58'),
(21, 'Atque eaque est ullam magnam placeat ut.', 'Mais, avec cet allongement de perspective que le sol de la tiède atmosphère des classes pauvres, pisciculture, caoutchouc, chemins de fer, sur un tronc d''arbre renversé, et même il y a du grabuge.', NULL, '2016-12-04 19:48:26'),
(22, 'Ratione aut saepe repellendus fugiat.', 'Et Emma se repentit d''avoir quitté si brusquement le percepteur. -- Lesquelles? -- Moi, peur? répliqua-t-il en haussant les épaules, et la marquise; il n''y avait plus que la culture proprement dite,.', NULL, '2017-03-24 01:34:56'),
(23, 'Aliquam possimus quam perspiciatis illum dolorem minus ratione.', 'Quand on aperçoit un fusil, il faut que vous avez peur, par hasard? -- Moi, à votre place, disait-il, je l''ennuierais! Et il se prenait à sourire lourdement. Puis il vint regarder sur la place, sans.', NULL, '2016-11-01 01:43:09'),
(24, 'Eum est reiciendis officiis.', 'Bovary. Heureusement qu''il avait besoin d''un mordant pour composer lui- même par la vanité: -- N''es-tu pas un mot! un seul mot, de faire les Rois, chez un coiffeur, se faire un procès. Il se disait.', NULL, '2016-09-20 19:32:03'),
(25, 'Rerum harum repellat velit.', 'Pauvre petite femme! Ça bâille après l''amour, comme aux premiers jours d''octobre. Il y a même deux cigares dedans, dit-il; ce sera plus commode pour vous, que je te porte. Allons, va-t''en! cours!.', NULL, '2016-09-19 13:00:59'),
(26, 'Eius iste quae harum.', 'Puis, en la lui passant la main quatorze napoléons. Le marchand ne se rappelait-il plus ses soupers après le dîner. Bonnet grec à la ferme plus animée. Croyant qu''il était trop longue aussi, et sans.', NULL, '2016-06-03 06:44:39'),
(27, 'Quibusdam rerum excepturi facere eum fugiat.', 'Marie, pleine de vieilles ganaches en gilet de drap vert à boutons noirs devait le gêner aux entournures et laissait voir, sous la pulsation rythmique des mille pieds sous vous, des vallées.', NULL, '2017-03-04 20:27:05'),
(28, 'Consequuntur corrupti omnis rerum consequatur sed nesciunt explicabo.', 'Ayant aussi l''habitude de boire quelque chose. Ce serait pour notre arrondissement de la Science, puis s''opposent à ce moment-là, étaient avec leurs momeries et leurs cheveux, ramenés en boucles.', NULL, '2016-05-02 06:54:26'),
(29, 'Laudantium veniam ipsam quia voluptatibus nihil dignissimos.', 'Amour, le doigt posé sur de nobles caractères, des affections terrestres et l''éternel isolement où le petit cheval trottait l''amble dans les nuits douces qu''ils contempleraient. Cependant, sur.', NULL, '2017-04-04 03:03:28'),
(30, 'Ab numquam non corrupti.', 'Cadet de Gassicourt! Madame Homais aimait beaucoup ces petits pains lourds, en forme de nacelle. Les rideaux de toile jaune et jeta des cris de paon, comme si vingt fois le pansement fait, le.', NULL, '2016-12-05 06:42:10'),
(32, 'Odio eos doloremque commodi optio hic asperiores.', 'Les bêtes étaient là, le nez rouge. C''était le capitaine Binet, à l''affût des canards sauvages. -- Vous profitez impudemment de ma détresse, monsieur! Je suis pour la reprendre. Un voisin la fit.', NULL, '2016-04-29 10:40:17'),
(33, 'Rem recusandae illo eum voluptatem eum non.', 'Caux, apportaient, jusqu''au loin dans les manutentions, quoique j''en aie cependant une furieuse habitude. Souvent je les tiens recta tous les jours de Tostes à Yonville, où il y a bien de chacun, à.', NULL, '2016-11-23 02:59:58'),
(34, 'Totam quia doloremque quia dolorum quas culpa optio.', 'Quatremares, Sotteville, la Grande-Chaussée, la rue Ganterie, qui le servait. Il retirait sa redingote pour dîner plus à son aise, largement. Lorsque l''envie la prenait sur son lit, et elle y resta.', NULL, '2016-11-13 16:23:13'),
(35, 'Ea eos amet veniam maiores perspiciatis expedita ad.', 'Lheureux courut à la douceur du tapis; le jour qu''il était maintenant irréalisable. Pour lui plaire, comme si nous partions vers les nuages, parut à Emma pour l''aider à monter les marches;.', NULL, '2016-08-20 00:41:20'),
(36, 'Pariatur optio molestiae ab sapiente saepe cupiditate est.', 'Il est absent. Elle répéta: -- Il ne se rebuta pas; et les îles, de forme ovale. Les pattes rouges des homards dépassaient les plats; de gros fruits dans des convulsions atroces, si bien encroûtées,.', NULL, '2016-09-02 04:14:55'),
(37, 'Dolorem quia nam et vitae ut.', 'Lorsque madame Bovary s''était enfuie à travers le battement de coeur la prit avec la fumée du bouilli, il montait du fond de son coeur, comme au retour d''un voyage, et, comme le paysage sans.', NULL, '2016-06-15 11:47:10'),
(38, 'Necessitatibus rerum corporis tempore itaque sapiente voluptatum deserunt.', 'Charles entra, et, s''avançant vers le château là-bas. Elle se déshabilla et se répandaient ainsi sur la table, montaient le long des fossés, gardait les dindons avec une légende au bas, écrit en.', NULL, '2016-09-27 21:14:42'),
(39, 'Soluta harum consequatur enim esse vitae officiis nemo.', 'Tiens, avale! Et elle reprenait: -- La bonne! Il ne parlait pas non plus; et, à gauche, ombragée par un polygone cartonné, couvert d''une broderie en soutache compliquée, et d''où pendait, au bout de.', NULL, '2016-12-11 08:49:07'),
(40, 'Dignissimos natus nihil neque quae rem enim a tempora.', 'Souvent même, Emma recevait ces leçons; madame Bovary mère, lorsqu''elle vint passer à Tostes une fois, mais d''une façon discrète et absorbée, l''entretenait par tous les mots dans le pays d''alentour..', NULL, '2016-12-20 04:08:43'),
(41, 'Veniam et rerum voluptatem repellat voluptate.', 'Allons, disait-elle, c''est bien, va-t''en! Car il restait là, le souhaitait presque, et c''était pourtant son seul espoir, la dernière chance de salut. Elle se rappela l''adresse de son rival, d''où.', NULL, '2016-05-15 13:29:33'),
(42, 'Perferendis et fugit eum eligendi quae.', 'Il ne plaisantait pas; mais, la vanité des choses terrestres. Dieu était bien riche, et elle!... si belle! Mais la pharmacie de M. Lieuvain se rassit alors; M. Derozerays se leva, et prit sur la.', NULL, '2016-12-19 18:01:13'),
(43, 'Velit ea ullam ut autem.', 'C''était pour vos petites fantaisies, les boîtes à ouvrage, un ruban qui traînait ne discontinuait pas, comme celle-là, résisté, supplié? Elle était sur le cidre à la Vaubyessard le 23 juillet 1531,.', NULL, '2016-08-27 22:54:43'),
(45, 'Sed architecto omnis laborum aut non et recusandae.', 'On s''était dit adieu, on ne pouvait venir, on pria M. Homais l''entraîna vers le lit, il tira ses bouts de chandelle et des asperges, trois homards engourdis s''allongeaient jusqu''à des cailles,.', NULL, '2016-10-04 03:53:10'),
(46, 'Et culpa necessitatibus soluta et iusto qui quia.', 'Des bourrées, debout contre la tenture de papier doré. L''homme faisait aller sa manivelle, regardant à droite, contre le bord de la Tour de Nesle. À quatre heures du matin: -- Ma cas... fit.', NULL, '2016-09-12 21:39:10'),
(47, 'Ut soluta soluta dolorem et eum qui voluptatem consequatur.', 'Comme au retour d''un voyage, et enfin, quand on a autour de lui faire des conjectures défavorables. L''histoire de la mémoire au milieu du bocage, il appelait ainsi un cabinet, sous les peupliers; et.', NULL, '2016-10-07 15:07:32'),
(48, 'Necessitatibus accusantium dolorem id voluptate.', 'Statistique générale du canton d''Yonville, suivie d''observations climatologiques, et la baisa au front avec son mari, remarquant sa pâleur, lui demandait la nourrice. Elle voulut devenir une sainte..', NULL, '2016-11-06 19:07:38'),
(49, 'Nihil nihil aut in.', 'Rouen, ses commissions; et le tabernacle à colonnettes. Elle aurait voulu, s''échappant comme un oiseau, aller se fondre sur la cheminée sans feu, le menton baissé, les narines à plusieurs reprises,.', NULL, '2016-09-27 22:12:02'),
(50, 'Debitis commodi excepturi qui ut.', 'La mère Rolet la couvrit d''un jupon et resta debout près de la porcelaine chinoise et des appellations de tendresse. Le lit était un domaine près d''Yonville, dont il était trop tard, puis il ajouta.', NULL, '2016-07-11 13:57:01'),
(51, 'Dolores et sit omnis dolores est nam.', 'Oui certes! -- Mais tu as raison, c''est dans l''ordre. Au reste, tant pis! -- Quelle heure est-il? demanda-t-elle. La mère Bovary, les jours de gala. Elle les voulait splendides! et, lorsqu''il était.', NULL, '2016-06-17 19:58:33'),
(52, 'Ut sapiente porro doloremque rem nemo.', 'Dieu nous protège! dit Rodolphe. -- Vous rappelez-vous, mon ami, que je suis fou! Adieu! Soyez toujours bonne! Conservez le souvenir des Bertaux lui arriva. Elle et son regard où tremblait une.', NULL, '2016-08-25 18:48:40'),
(53, 'Similique quod ad error veniam exercitationem fugit.', 'II Une nuit, vers onze heures, ils s''emballèrent dans l''hirondelle. L''apothicaire, que rien de spécial à noter, si ce n''est pour lui saisir, par le portail du nord! leur cria le Suisse, qui était.', NULL, '2016-11-10 09:35:38'),
(54, 'Earum vel necessitatibus officia dolor qui.', 'Et, souriant un peu les jours de marché à Yonville. La rue (la seule), longue d''une portée de fusil et bordée de quelques jours, la bru furent secs. Pendant les trois quarts d''heure. Enfin elle.', NULL, '2016-09-05 19:46:53'),
(55, 'Ullam commodi quas repellendus aut cupiditate.', 'Ah! qu''il doit être loin déjà! pensa-t-elle. M. Homais, à l''industrie et aux chambranles de fortes guêtres; et il resta jusqu''au soir perdu dans une attitude pensive et napoléonienne. Mais, quand il.', NULL, '2017-01-06 08:09:35'),
(56, 'Deleniti quia magnam alias amet itaque.', 'Elle restait seule dans la chambre, en tenant à la Science. En arrivant, le Curé demanda comment cet accident était survenu. Charles répondit qu''ils s''en allaient dès le soir, quand Charles.', NULL, '2016-05-11 12:36:08'),
(57, 'Quidem est ullam odit provident.', 'Neufchâtel, un fort opuscule, un mémoire sur le trottoir, frappaient tous avec leurs balanciers. Léon s''arrêtait, désignant d''un geste langoureux: -- Vous donniez un peu plus d''amour. II Une nuit,.', NULL, '2016-07-30 12:19:26'),
(58, 'Asperiores magni voluptates dolor atque ab sunt.', 'Charles devint cramoisi jusqu''aux oreilles. -- Ah! merci, dit Charles, qui écoutait. -- Oui... peut-être... un peu, répliqua-t-il, indécis entre la peur d''être aperçu; il entra dans sa tête en signe.', NULL, '2016-05-09 01:24:25'),
(59, 'Itaque quisquam labore blanditiis quis.', 'Il se demandait: -- Quels autres? -- Mais les affaires d''argent le préoccupaient. Il en survenait d''autres, continuellement. Il exigea l''arriéré d''anciennes visites. On lui étaiera les cheveux.', NULL, '2017-02-05 19:34:00'),
(60, 'Tempore ', 'Mais, chaque fois à la persécuter? -- Mais ce sont les protestants, et non pas d''accepter toutes les dames suppliaient; Homais s''interposa; et l''on s''assoupit dans cet amour n''étant pas venu, il.', NULL, '2016-11-04 22:11:32'),
(61, 'Et modi ad quae eos rerum aut.', 'Léon le quitta brusquement, escalada l''escalier, et trouva sa femme fut le maître; il était désespéré. Ce qui la rendit presque intéressante. Naturellement, par nonchalance; il en aimait une autre!.', NULL, '2016-08-22 14:03:43'),
(62, 'Fugiat dignissimos officiis minima cupiditate.', 'Alors l''indignation la prit, à voir dans la bouche, et, lorsqu''il ne pouvait s''absenter plus longtemps. Le père Rouault les fit apporter, en prit un. C''était la même, celle-là! Il fut bientôt de.', NULL, '2016-07-10 22:38:56'),
(63, 'Ratione reiciendis maiores recusandae est dolor qui ducimus.', 'Alors ce serait contrarier Madame dans sa santé un régime discret de nourritures exquises. Leur cou tournait à l''aise dans les chambres. La première avait été folle de lui avoir fait un second.', NULL, '2016-10-27 08:07:29'),
(64, 'Reprehenderit quis necessitatibus nulla aspernatur.', 'C''étaient des airs que l''on ne jurerait pas qu''elle va se lever tout à coup, pâle, chancelant. On se poussait. Elle se récria encore une partie du carême, s''étonna fort de ces billets, minimes.', NULL, '2016-10-13 22:11:56'),
(65, 'Iusto consequatur nihil minima aspernatur nesciunt.', 'Rodolphe répéta d''une voix tremblante: -- À côté! s''écria madame Homais accourut et l''embrassa, ainsi que la robe. Et ensuite, qu''y avait-il? Binet, quelques marchands, deux ou trois visites, puis.', NULL, '2016-07-18 01:32:26'),
(66, 'Fuga sed sit sed quia voluptatum ea.', 'Pourtant il apprendrait vite, s''il le fallait. Elle eut peur et fit un voyage; le mois prochain qu''ils devaient donner. Elle pâlissait et avait des plaques de bronze florentin, qui flottaient. Ils.', NULL, '2016-08-30 08:46:50'),
(67, 'Doloribus voluptates repellat expedita sint et eum et.', 'Hivert, qui s''apercevait d''un contrepoids, allongeait à l''aveugle de grands coups contre les ânes qui avaient la couleur ambrée de l''odalisque au bain; elle avait manqué mourir. La voix de la.', NULL, '2016-05-14 04:59:04'),
(68, 'Veritatis iste molestias dolore.', 'Oh! non, se disait-il, et comment elles avaient des habits, des redingotes, des vestes, des habits-vestes: -- bons vieux gîtes à balcon de bois dont elle avait cru avoir de l''amour; mais le temps de.', NULL, '2016-06-28 19:23:47'),
(69, 'Delectus deserunt cum praesentium cum error voluptatem.', 'Il alla sur la vanité l''emportant sur toute la nuit à boire de grands coups de poing contre les persiennes une poignée de sable. Elle se plaignait d''amour, elle demandait des cheveux. -- Coupez-en!.', NULL, '2016-12-08 23:46:48'),
(70, 'Saepe hic odio adipisci et ducimus.', 'Bovary en tirant sa montre de sa bonne chevelure blonde, qu''une délectation infinie l''envahissait, plaisir tout mêlé d''amertume comme ces diables à boudin qui se précipitait vers lui, si bien qu''il.', NULL, '2016-08-07 00:22:16'),
(71, 'Commodi ea aut et.', 'Elle reconnaissait tous les vendredis, s''habiller comme elle n''osait, il s''avança vivement, et lui expliqua que la bonne femme serait rentrée par une guirlande dorée. Ils en rirent bien des femmes,.', NULL, '2016-05-03 08:13:03'),
(72, 'Quas ut qui quasi esse nemo.', 'Le coup, vous comprenez, est encore en vous, soupira l''ecclésiastique. Bovary était loin. Il marchait de long en large; elle se promenait indécis parmi ces femmes au teint blanc que rehaussent la.', NULL, '2017-02-13 05:22:02'),
(73, 'Veritatis ratione molestiae tenetur quia in consequuntur in.', 'La maison était bien joyeux, lui aussi, le perruquier, il se rappela les grands mots d''ordre, d''avenir, de prévoyance, et continuellement exagérait les embarras de la glace; la glace avec la laine.', NULL, '2016-08-10 11:44:35'),
(74, 'Omnis ratione magnam voluptatem qui amet incidunt.', 'Longueville et Saint- Victor. La nuit était noire. Quelques gouttes de sang sont venues sur la haie. Et il redevint aussitôt respectueux, caressant, timide. Elle lui apportait le journal, et.', NULL, '2016-12-18 02:45:41'),
(75, 'Corrupti qui quam facilis consequatur natus doloremque ex.', 'Aujourd''hui donc, il venait aux Bertaux trois jours pleins, exquis, splendides, une vraie lune de miel, comme on disait. Pour en goûter la douceur, il eût fallu un couteau; Charles offrit le sien..', NULL, '2016-11-21 09:09:37'),
(76, 'Adipisci repellat iusto nisi sit iure qui non.', 'Langlois n''avait pas brillé pendant la semaine, à la poitrine. Comme c''était loin, tout en pensant au bonheur qu''ils auraient eu si, par une sorte de bloc, qui pouvait bien aller tout nu, comme les.', NULL, '2016-11-19 21:16:22'),
(77, 'Distinctio voluptate ut id esse vitae.', 'M. et madame Bovary, qui a failli passer par les portières, le maître d''études: -- Monsieur vous attend, Madame; la soupe à l''oignon, avec un long panache de poussière. Au loin, des bestiaux.', NULL, '2016-09-23 15:47:17'),
(78, 'Iste molestias architecto molestias et nobis aut.', 'Mais lui, il parlait arome, osmazôme, sucs et gélatine d''une façon démesurée; c''était pourtant à l''aspect des douleurs, ne put parvenir à trouver des phrases vous ramène toujours au centre fixe.', NULL, '2016-08-28 17:26:06'),
(79, 'Velit praesentium consequuntur voluptate officia consequatur tempora non.', 'Atala; elle aimait assez Galsuinde, plus encore à ses habitudes faciles, caressait à la nage; et son existence ne fut point fâché de la cour, où se mêlait jamais des affaires de conscription, et.', NULL, '2016-09-02 04:16:07'),
(80, 'At eaque expedita et nisi harum.', 'C''était l''heure du dîner dans les restaurants. Mais le ton respectueux de la haie, et s''en revint. Elle frappa contre la porte. -- Eh bien, là..., là!... dit-elle d''une voix bredouillante, un nom.', NULL, '2016-08-06 17:56:05'),
(81, 'A sed ea nulla veniam.', 'Avec trois mots de félicité, de passion et d''ivresse, qui lui vacillait sur la cheminée sans feu, lui apprenait à boire dans la boutique de Lheureux, qui n''avait jamais été curieux, disait-il,.', NULL, '2017-01-08 15:10:09'),
(82, 'Iste qui soluta ut ut dignissimos veritatis.', 'Moi, je trouve, dit M. Boulanger. Du reste, il s''amuse joliment, notre ami! c''est un original!» Et on l''estimait davantage pour cet homme plus garrotté qu''un Scythe et splendide comme un voyageur.', NULL, '2017-03-21 07:12:44'),
(83, 'Eligendi voluptate similique ea ut eos eius molestias.', 'Ah! vous trouverez bien des oracles à toutes les auberges de la tonnelle et au moment où onze heures et un automne par-dessus un été, ça a coulé brin à brin, miette à miette; ça s''en est allé, c''est.', NULL, '2017-01-20 08:50:17'),
(84, 'Sapiente libero et ab neque neque tempora tenetur non.', 'Il citait du latin, tant il jugeait cette récréation lui devoir être profitable. Il n''y a plus qu''à chercher les occasions. Elle s''irritait d''un plat mal servi dans son manteau, se mit à courir. Il.', NULL, '2016-08-27 05:19:28'),
(85, 'Voluptate corrupti dolores occaecati et blanditiis ut.', 'Monsieur, d''une fluxion de poitrine, avait donné à Madame le morceau le plus grand sang-froid du monde, il s''ajourna de semaine en semaine, jusqu''à ce qu''il fallait. Charles resta seul toute.', NULL, '2017-02-11 08:10:08'),
(86, 'Aut aspernatur omnis voluptas sit sint quam voluptas.', 'Rouen, et roulaient vite leurs volutes noires, d''où dépassaient par derrière et une selle de femme en descendit qui marchait sous les toits d''ardoises, qui reluisaient sous la peau, comme pour aller.', NULL, '2017-02-25 00:20:51'),
(87, 'Culpa totam delectus ea cupiditate.', 'Croix rouge. Personne. Il pensa que le reste de l''empeigne se continuait en ligne tout le reste. Elle mangeait alors une glace au marasquin, qu''elle tenait de la chaise où madame Bovary était homme.', NULL, '2016-08-27 09:19:32'),
(88, 'Eius nihil non accusantium eos optio veritatis ad esse.', 'Si vous aviez à me causer des arrangements d''intérêt; on avait, d''ailleurs, du temps de domestique. L''apothicaire se montra plus docile, et même elle sentait encore la préférée; mais, à l''avenir,.', NULL, '2016-07-26 00:29:07'),
(89, 'Commodi inventore odio fugit atque blanditiis.', 'Vers quatre heures du soir, il avait l''air aussi calme qu''auparavant, et Charles dit à voix basse, en parlant vite: -- Est-ce possible! Ils ne voudront pas! -- Et quoi de neuf chez vous? -- Pas.', NULL, '2016-08-18 07:52:25'),
(90, 'Ullam in minima id illum qui.', 'Rouen. Alors il eut l''air de se douter le moins me donner une petite fontaine qui est inoffensif, moralisant et même le remercier. Charles éclata en blasphèmes. -- Je ne veux pas faire le malheur de.', NULL, '2016-12-02 22:16:37'),
(91, 'Et amet quia magnam laborum ut.', 'Elle monta le large escalier droit, et notamment par la bride: elle s''arrêta court dans les feuilles de vigne dessinaient leurs ombres sur le célibat des prêtres. Il établissait des rapprochements..', NULL, '2017-04-02 07:11:33'),
(92, 'Labore eos dolore neque itaque perspiciatis quo dolorem.', 'Emma; ne lui servait guère dans sa tête quelque voeu à accomplir. Quand elle se mit là lui crier dans l''oreille: -- Cinquante-quatre ans de service! Une médaille d''argent! Vingt- cinq francs! C''est.', NULL, '2017-01-25 21:19:03'),
(93, 'Voluptatem quasi ducimus dignissimos autem quae et.', 'Pourquoi?... Emma! Emma! -- Oh! vous êtes toujours charmante! -- Oh! ce n''est avec la passion des dominos. S''enfermer chaque soir prenait une tournure sérieuse. Hippolyte commençait à se rompre sous.', NULL, '2016-08-29 03:04:41'),
(94, 'Alias explicabo ipsum sed sit perspiciatis quod.', 'Madame aime le jardinage, elle pourra... -- Ma fille! Emma! mon enfant! expliquez-moi...? Et l''autre répondait avec des rires de volupté et des académies, hospitalier, libéral, paternel avec les.', NULL, '2017-01-04 09:58:38'),
(95, 'In consequatur nam odio dicta optio expedita officia.', 'Elle était prête, elle l''attendait. Justin s''échappa de la poste, qui, chaque matin, venait panser la jument, traversait le corridor où s''ouvrait la porte des bottes vernies, il prit l''usage des.', NULL, '2016-06-08 16:06:23'),
(96, 'Eum quia eum accusantium vitae quia.', 'Banneville, près du lutrin, la bière était trop tard; et peut-être les pesanteurs du déjeuner, restait indécis et comme des rochers avec des gouttes d''eau factices au bout d''une ficelle un moulin à.', NULL, '2017-04-04 08:53:18'),
(97, 'Ipsa nesciunt quia suscipit.', 'Elle lui demanda d''un ton sec. Et il courut encore vers le lit, tandis qu''elle montait l''escalier des premières. Elle eut un silence. Ils se sont succédé à Yonville sans pouvoir néanmoins le.', NULL, '2017-01-20 03:03:36'),
(98, 'Ex odit numquam vero recusandae nesciunt enim.', 'Boulogne, sur le siège, en bouffant, plein de poésie; même elle répéta: -- D''un autre! Et il saisit sa main; elle ne savait pas au juste dans la maison; les fournisseurs murmuraient; M. Lheureux, à.', NULL, '2016-05-06 21:13:54'),
(99, 'Perspiciatis quisquam omnis quas aut magnam eaque sit.', 'Puis, se tournant vers sa voisine: -- Madame, sans doute, des rendez-vous -- qui se dégage, tant il était trop tard; et peut-être qu''elle se lèverait tout à fait. Elle aurait voulu, fuyant la vie,.', NULL, '2016-08-11 08:29:01'),
(100, 'Mollitia enim quae harum quibusdam et quasi exercitationem.', 'Le clerc ne manquait point, il est plein d''esprit. Et moi qui emporte votre pensée comme une matinée de printemps qui entrait dans quelque chose d''elle. C''était un mouchoir de poche, dont ils.', NULL, '2016-06-09 01:27:44'),
(101, 'Aspernatur molestiae commodi aliquid aut aut.', 'Il se tenait au fond de la commission consultative? La mère Bovary, sans lever les yeux, et quelque peu des évanouissements. Madame Bovary remarqua que plusieurs dames n''avaient pas le battre. Elle.', NULL, '2016-09-29 21:36:14'),
(102, 'Sit tempore qui illum est.', 'Mais la jubilation qui épanouissait tous les yeux, c''est, en face l''un de l''autre, le ventre des baleines, meurt en poussant par intervalles un gros petit homme de connaître et, j''oserais dire,.', NULL, '2017-01-09 10:45:37'),
(103, 'Optio sunt dolor odio.', 'Angleterre à des usages presque domestiques ce qui est restée sous la tonnelle, sur ce qui est venu ici, la semaine dernière, deux voyageurs en draps, des garçons pleins d''esprit qui contaient, le.', NULL, '2017-02-05 18:36:50'),
(104, 'Magnam aut accusamus maxime laudantium quia voluptas.', 'Alors ils firent le tour de la cambrure de son bras nu, depuis le cimetière des Bertaux lui arriva. Elle et son idée lui vint. Il demanda, dans un verre, Rodolphe y trempa son pouce droit dans.', NULL, '2016-12-30 07:43:50'),
(106, 'test update test update', 'test updatetest updatetest updatetest updatetest updatetest updatev', NULL, '2017-04-13 12:38:29'),
(107, 'test update test update', 'test update test updatetest updatetest updatetest updatetest updatetest updatetest updatetest update', NULL, '2017-04-13 12:39:24'),
(108, 'test update test update', 'test update test updatetest updatetest updatetest updatetest updatetest updatetest updatetest update', NULL, '2017-04-13 13:19:20'),
(109, 'test update test update', 'test update', NULL, '2017-04-13 13:19:50'),
(110, 'TITRE ', 'fEMkjùpzejf ezij fpzje pf j', NULL, '2017-04-13 16:03:38');

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `id_category` int(11) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`) VALUES
(1, 'test', 'test@mail.fr', '', 'motdepasse'),
(3, 'gfds', 'devfdsf', '', 'webforcedsfdsf'),
(4, 'sqdsq', 'sqdsq', '', 'sqdsq'),
(5, 'dernierTEST', 'dernierTEST', '', 'dernierPAss'),
(8, 'dsfids', 'F%DPG', '', 'G%GFFDGFHG'),
(9, 'jen', 'jen@meil.fr', 'admin', '$2y$10$pPHdPsM1AoPW.oZPMv4FdugfQ5xsMd7ibRfYkrn5G3EGmrZ1PcgIe');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_index` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_category_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
