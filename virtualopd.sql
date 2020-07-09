-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 08:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualopd`
--

-- --------------------------------------------------------

--
-- Table structure for table `can_have`
--

CREATE TABLE `can_have` (
  `dis_id` int(10) NOT NULL,
  `symp_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `can_have`
--

INSERT INTO `can_have` (`dis_id`, `symp_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 5),
(2, 6),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(3, 4),
(3, 5),
(3, 7),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 1),
(4, 3),
(4, 4),
(4, 5),
(4, 7),
(4, 9),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(5, 6),
(5, 20),
(5, 23),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(6, 5),
(6, 6),
(6, 12),
(6, 15),
(6, 16),
(6, 20),
(6, 28),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(7, 4),
(7, 5),
(7, 6),
(7, 11),
(7, 12),
(7, 15),
(7, 16),
(7, 39),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(8, 19),
(8, 28),
(8, 36),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(9, 12),
(9, 13),
(9, 16),
(9, 20),
(9, 46),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(10, 3),
(10, 4),
(10, 5),
(10, 9),
(10, 22),
(10, 28),
(10, 31),
(10, 53),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66),
(10, 67),
(10, 68),
(10, 69),
(10, 70),
(11, 3),
(11, 6),
(11, 12),
(11, 13),
(11, 15),
(11, 20),
(11, 39),
(11, 44),
(11, 64),
(11, 71),
(11, 72),
(11, 73),
(11, 74),
(11, 75),
(12, 5),
(12, 8),
(12, 12),
(12, 30),
(12, 39),
(12, 48),
(12, 70),
(12, 76),
(12, 77),
(12, 78),
(12, 79),
(12, 80),
(12, 81),
(12, 82),
(12, 83),
(12, 84),
(12, 85),
(13, 2),
(13, 3),
(13, 5),
(13, 28),
(13, 40),
(13, 78),
(13, 86),
(13, 87),
(13, 88),
(13, 89),
(13, 90),
(14, 5),
(14, 6),
(14, 9),
(14, 15),
(14, 22),
(14, 28),
(14, 30),
(14, 39),
(14, 64),
(14, 76),
(14, 91),
(14, 92),
(14, 93),
(14, 94),
(15, 5),
(15, 16),
(15, 20),
(15, 28),
(15, 30),
(15, 36),
(15, 39),
(15, 46),
(15, 56),
(15, 71),
(15, 76),
(15, 95),
(15, 96),
(15, 97),
(15, 98),
(15, 99),
(15, 100),
(15, 101),
(15, 102),
(15, 103),
(16, 5),
(16, 12),
(16, 20),
(16, 28),
(16, 64),
(16, 81),
(16, 104),
(16, 105),
(17, 5),
(17, 12),
(17, 16),
(17, 28),
(17, 29),
(17, 37),
(17, 42),
(17, 45),
(17, 48),
(17, 81),
(17, 106),
(17, 107),
(17, 108),
(17, 109),
(17, 110),
(18, 3),
(18, 5),
(18, 6),
(18, 15),
(18, 28),
(18, 30),
(18, 58),
(18, 111),
(18, 112),
(18, 113),
(18, 114),
(18, 115),
(18, 116),
(18, 117),
(18, 118),
(18, 119),
(19, 5),
(19, 12),
(19, 13),
(19, 20),
(19, 21),
(19, 37),
(19, 48),
(19, 106),
(19, 109),
(19, 110),
(19, 120),
(19, 121),
(20, 3),
(20, 6),
(20, 12),
(20, 13),
(20, 15),
(20, 16),
(20, 20),
(20, 28),
(20, 57),
(20, 122),
(20, 123),
(21, 5),
(21, 12),
(21, 13),
(21, 16),
(21, 20),
(21, 30),
(21, 42),
(21, 48),
(21, 122),
(21, 124),
(21, 125),
(21, 126),
(21, 127),
(21, 128),
(21, 129),
(22, 15),
(22, 31),
(22, 56),
(22, 75),
(22, 88),
(22, 130),
(22, 131),
(23, 5),
(23, 9),
(23, 11),
(23, 13),
(23, 20),
(23, 28),
(23, 75),
(23, 81),
(23, 132),
(23, 133),
(23, 134),
(24, 5),
(24, 6),
(24, 9),
(24, 15),
(24, 16),
(24, 20),
(24, 28),
(24, 71),
(24, 88),
(24, 112),
(24, 135),
(24, 136),
(24, 137),
(24, 138),
(25, 29),
(25, 31),
(25, 32),
(25, 139),
(25, 140),
(25, 141),
(59, 177),
(60, 158),
(60, 159),
(61, 145),
(61, 146),
(61, 179),
(61, 180),
(61, 181);

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `dis_id` int(11) NOT NULL,
  `dis_name` varchar(30) NOT NULL,
  `dis_sci_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`dis_id`, `dis_name`, `dis_sci_name`) VALUES
(1, 'influenza', 'Orthomyxoviridae'),
(2, 'malaria', 'Plasmodium'),
(3, 'whooping cough', 'Bordetella pertussis'),
(4, 'common cold', 'Rhinovirus'),
(5, 'chickenpox', 'varicella zoster virus'),
(6, 'dengue', 'Dengue virus'),
(7, 'typhoid', 'Salmonella enterica enterica'),
(8, 'tetanus', 'Clostridium tetani'),
(9, 'cholera', 'Vibrio cholerae'),
(10, 'diphtheria', 'Corynebacterium diphtheriae'),
(11, 'smallpox', 'smallpox Variola'),
(12, 'hiv aids', 'human immunodeficiency virus'),
(13, 'tuberculosis', 'Mycobacterium tuberculosis'),
(14, 'measles', 'Morbillivirus measles virus'),
(15, 'meningtis', 'various scientific names based on different viruse'),
(16, 'hepatitis B', 'Hepatitis B virus'),
(17, 'hepatitis C', 'Hepacivirus: hepatitis c virus'),
(18, 'mumps', 'parotitis epidemica'),
(19, 'hepatitis A', 'Hepatitis A virus'),
(20, 'salmonellosis', 'Salmonella'),
(21, 'giardiasis', 'Giardia'),
(22, 'lyme disease', 'Lyme borreliosis'),
(23, 'ebola virus', 'Zaire ebolavirus'),
(24, 'polio', 'poliomyelitis'),
(25, 'scabies', 'Sarcoptes scabiei');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `med_id` int(11) NOT NULL,
  `med_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `preventions`
--

CREATE TABLE `preventions` (
  `prevention_id` int(11) NOT NULL,
  `prevention` varchar(400) NOT NULL,
  `for_disease` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preventions`
--

INSERT INTO `preventions` (`prevention_id`, `prevention`, `for_disease`) VALUES
(1, 'Influenza is the only respiratory virus preventable by vaccination.', 1),
(2, 'Wash hands by washing with soap and water or use hand sanitizer.', 1),
(3, 'Cover Your Mouth and Nose with a tissue when you cough or sneeze.', 1),
(4, 'Don\'t Touch Your Face with unwashed hands; it’s the easiest way for germs to enter your body.', 1),
(5, 'Smiling and laughing can help boost your immune system.', 1),
(6, 'Eat Healthy and balanced meals to strengthen your immune system.', 1),
(7, 'Exercise boosts your immune system and speeds recovery from illness.', 1),
(8, 'Stay Home until your fever is gone for 24 hours without using fever-reducing medicine.', 1),
(9, 'Seek medical attention for suspected symptoms of malaria as early as possible.', 2),
(10, 'Take the right type of anti-malarial medicines for the country you are travelling to.', 2),
(11, 'Protect yourself from mosquito bites by sleeping under an insecticide-treated mosquito net.​​', 2),
(12, 'Wear socks, long pants, long-sleeve shirts and blouses.', 2),
(13, 'Spray DEET mosquito repellent onto your clothes and the exposed parts of your skin.', 2),
(14, 'Make sure the room doors and windows are closed properly and screened with gauze to prevent mosquitoes from getting in. ', 2),
(15, 'Spray the room with an insecticide before entering.', 2),
(16, 'Pregnant women and young children should avoid travelling to malaria-prone areas.', 2),
(17, 'Vaccination is the key to prevention.', 3),
(18, 'Children aren’t the only ones vulnerable to whooping cough. Talk to your doctor about getting vaccinated if you work with, visit, or care for infants and children', 3),
(19, 'A booster vaccine is recommended for adults because they are the most likely source of pertussis infection in infants.', 3),
(20, ' Adults ages 19 to 64 years should receive a one-time pertussis booster vaccine called Tdap.', 3),
(21, 'Pregnant women should receive a Tdap injection during the third trimester (between the 27th and 36th week) of their pregnancies.', 3),
(22, 'If you are pregnant, you should also make sure that family members and caregivers have been vaccinated against pertussis.', 3),
(23, 'Wash your hands, especially before eating or preparing food. You also want to wash your hands after using the bathroom, wiping your nose or coming in contact with someone who has a cold.', 4),
(24, 'Avoid touching your face. Cold viruses spread from your hands to your eyes, nose and mouth.', 4),
(25, 'Clean frequently used surfaces. Viruses can live on doorknobs and other places people often touch.', 4),
(26, 'Strengthen your immune system so your body is ready to fight off germs. Get enough sleep, eat a healthy diet and exercise. ', 4),
(27, 'Stay home while sick to make sure you don’t spread the cold to others.', 4),
(28, 'The best way to prevent chickenpox is to get the chickenpox vaccine.', 5),
(29, 'Everyone – including children, adolescents, and adults – should get two doses of chickenpox vaccine if they have never had chickenpox or were never vaccinated.', 5),
(30, 'Although you can still get chickenpox if you’ve been vaccinated, it’s uncommon, and the disease is usually milder.', 5),
(31, 'No vaccine can protect against dengue fever. Only avoiding mosquito bites can prevent it.', 6),
(32, 'Reduce the amount of skin exposed by wearing long pants, long-sleeved shirts, and socks, tucking pant legs into shoes or socks, and wearing a hat.', 6),
(33, 'Use a repellent with at least 10 percent concentration of diethyltoluamide (DEET), or a higher concentration for longer lengths of exposure. Avoid using DEET on young children.', 6),
(34, 'Nets treated with insecticide are more effective, otherwise the mosquito can bite through the net if the person is standing next to it. The insecticide will kill mosquitoes and other insects, and it will repel insects from entering the room.', 6),
(35, 'Structural barriers, such as screens or netting, can keep mosquitos out.', 6),
(36, 'Avoid scents as heavily scented soaps and perfumes may attract mosquitos.', 6),
(37, 'Try to avoid being outside at dawn, dusk, and early evening.', 6),
(38, 'The Aedes mosquito breeds in clean, stagnant water. Checking for and removing stagnant water can help reduce the risk.', 6),
(39, 'Frequent hand-washing in hot, soapy water is the best way to control infection. Wash before eating or preparing food and after using the toilet. Carry an alcohol-based hand sanitizer for times when water isn\'t available.', 7),
(40, 'Contaminated drinking water is a particular problem in areas where typhoid fever is endemic. For that reason, drink only bottled water or canned or bottled carbonated beverages, wine and beer. Carbonated bottled water is safer than uncarbonated bottled water is.', 7),
(41, 'Avoid raw fruits and vegetables because raw produce may have been washed in unsafe water, avoid fruits and vegetables that you can\'t peel, especially lettuce. To be absolutely safe, you may want to avoid raw foods entirely.', 7),
(42, 'Avoid food that\'s stored or served at room temperature. Steaming hot foods are best. And although there\'s no guarantee that meals served at the finest restaurants are safe, it\'s best to avoid food from street vendors — it\'s more likely to be contaminated.', 7),
(43, 'Wash your hands often. This is the single most important thing you can do to keep from spreading the infection to others. Use hot, soapy water and scrub thoroughly for at least 30 seconds, especially before eating and after using the toilet.', 7),
(44, 'For prevent infecting others avoid preparing food for others until your doctor says you\'re no longer contagious. If you work in the food service industry or a health care facility, you won\'t be allowed to return to work until tests show that you\'re no longer shedding typhoid bacteria.', 7),
(45, 'Tetanus can be prevented through immunization with tetanus-toxoid-containing vaccines (TTCV), which are included in routine immunization programmes globally and administered during antenatal care contacts. ', 8),
(46, 'To be protected throughout life, WHO recommends that an individual receives 6 doses (3 primary plus 3 booster doses) of TTCV.', 8),
(47, 'If you are unsure about when you received your last tetanus shot, it is better to be safe and receive another booster than sorry.', 8),
(48, 'You must see a doctor in four weeks and again in six months to complete the primary vaccination series.', 8),
(49, 'One of the most important method of preventing tetanus is cleaning out the wound as thoroughly as possible. The wound can be washed with clean water, and soap can be used to clean the area around the wound.', 8),
(50, 'Trying to get any obvious dirt and particulate matter out of the wound is important -- not only to prevent tetanus, but also to prevent other bacterial infections of the wound.', 8),
(51, 'You can protect yourself and your family by using only water that has been boiled, water that has been chemically disinfected, or bottled water.', 9),
(52, 'To disinfect your own water, boil it for one minute (or 3 minutes at higher elevations) or filter it and use a commercial chemical disinfectant.', 9),
(53, 'If you develop severe, watery diarrhea and vomiting -- particularly after eating raw shellfish or traveling to a country where cholera is epidemic -- seek medical help immediately.', 9),
(54, 'Cholera is highly treatable, but because dehydration can happen quickly, it\'s important to get cholera treatment right away.', 9),
(55, 'Immunisation is the best form of prevention. Routine childhood immunisation and adult booster doses also help to prevent the disease throughout one’s lifetime.', 10),
(56, 'Booster doses of diphtheria should be given every 10 years after recommended immunisation for continued prevention against diphtheria.', 10),
(57, 'Booster doses are particularly recommended for those traveling to areas where the disease may still be present.', 10),
(58, 'Immunisation protects against systemic disease but does not give protection against the carriage of organisms.', 10),
(59, 'There are no established treatments for smallpox so vaccination is considered to be the primary way of disease prevention.', 11),
(60, 'People who are directly exposed or most likely to be exposed to smallpox viruses should be vaccinated, as vaccination significantly reduces the chance of getting the disease or, at least, reduces the disease intensity.', 11),
(61, 'If a person gets vaccine before any viral exposure, he/she is most likely to be protected from getting smallpox.', 11),
(62, 'Vaccination within 3-7 days of viral exposure may also protect a person from smallpox; people who get the disease even after vaccination suffer much less as compared to unvaccinated people.', 11),
(63, 'However, once rashes start to appear, vaccination cannot provide any protection.', 11),
(64, 'HIV is spread through contact with blood or sexual fluids (like semen and vaginal fluids), usually during vaginal and anal sex. So the only 100% certain way to avoid HIV is to not have vaginal or anal sex.', 12),
(65, 'HIV is spread through contact with blood or sexual fluids (like semen and vaginal fluids), usually during vaginal and anal sex. So the only 100% certain way to avoid HIV is to not have vaginal or anal sex.', 12),
(66, 'But most people do have sex at some point in their lives, so learning about HIV prevention and knowing how to have safer sex is important. Using condoms REALLY lowers your risk of getting HIV.', 12),
(67, 'If you’re going to have sex, using condoms every single time is the best way to protect yourself from HIV.', 12),
(68, ' There’s also a daily pill you can take — called PrEP — that can help prevent HIV. Your doctor or nurse can tell you if PrEP is right for you.', 12),
(69, 'Some sexual activities are safer than others when it comes to getting HIV. These activities are “no risk” — they’ve never caused a reported case of HIV like masturbating, touching your partner’s, genitals, rubbing your bodies together (dry humping) , kissing, having oral sex with a condom or dental and using clean sex toys', 12),
(70, 'If you have active TB disease, you must get treated right away. This might involve taking a number of medications for 6 to 12 months.', 13),
(71, 'It’s important to take all of your meds, as they’re prescribed, the entire time -- even if you feel better. If not, you can get sick again.', 13),
(72, 'If you have TB germs in your body but they haven’t become active, you have what doctors call “latent TB.” You can’t spread the disease to others. But your doctor may still recommend that you take medications to keep the germs from becoming active.', 13),
(73, 'Follow these other tips to help prevent others from getting TB during your first few weeks of treatment:\r\nTake all of your medicines as they’re prescribed, until your doctor takes you off them.\r\nKeep all your doctor appointments.\r\nAlways cover your mouth with a tissue when you cough or sneeze. Seal the tissue in a plastic bag, then throw it away.', 13),
(74, 'You can avoid catching measles by having the measles, mumps and rubella (MMR) vaccine.', 14),
(75, 'If the MMR vaccine is not suitable for you, a treatment called human normal immunoglobulin (HNIG) can be used if you\'re at immediate risk of catching measles.', 14),
(76, 'Children who have the vaccine before their first birthday should still have the 2 routine doses of MMR at around 13 months of age and 3 years and 4 months.', 14),
(77, 'If you already have measles, for reduce the risk of spreading the infection to other people by:\r\nAvoiding work or school for at least 4 days from when you first developed the measles rash\r\nTrying to avoid contact with people who are more vulnerable to the infection, such as young children and pregnant women, while you\'re ill', 14),
(78, 'The most effective way to prevent meningitis is to get vaccinated against the disease. There are currently two vaccines available in the U.S. that protect against most types of bacterial meningitis.', 15),
(79, 'The vaccine to prevent meningitis is also recommended if you\'re entering the military, traveling, or planning to live in a country where bacterial meningitis is common.', 15),
(80, 'You can prevent the spread of meningitis by not sharing items where secretions can lurk, such as drinking glasses, water bottles, straws, silverware, toothbrushes, lipsticks or lip glosses, and cigarettes.', 15),
(81, 'The bacteria found in nose and throat secretions can also spread through coughing and sneezing. You could get meningitis if you\'re close enough to an infected person to come in direct contact with these secretions. If someone you know has a respiratory infection, keep at least 3 feet away to stay out of the line of fire of any coughing.', 15),
(82, 'Just as with cold and flu viruses, the viruses and bacteria responsible for meningitis can get on your hands and into your mouth. You can prevent meningitis from spreading by washing your hands vigorously, especially after you use the bathroom, change a diaper, spend time in a crowded place, and cough or blow your nose.', 15),
(83, 'Keep your immune system at its fighting best by eating healthy — including fresh fruits and vegetables, whole grains, and lean proteins — and by getting regular exercise. Also, be sure to get the sleep you need.', 15),
(84, 'Hepatitis B is a vaccine-preventable disease. More than 1 billion doses of the hepatitis B vaccine have been given worldwide, and it is considered to be a very safe and effective vaccine to protect infants, children and adults from hepatitis B.', 16),
(85, 'All sexual partners, family and close household members living with a chronically infected person should be tested and vaccinated. It is important to remember that hepatitis B is not spread casually! It is not spread by coughing, sneezing, hugging, cooking and sharing food. It is spread through direct contact with infected blood and bodily fluids.', 16),
(86, 'Wash your hands thoroughly with soap and water after any potential exposure to blood', 16),
(87, 'Use condoms with sexual partners', 16),
(88, 'Avoid direct contact with blood and bodily fluids', 16),
(89, 'Clean up blood spills with a fresh diluted bleach solution (mix 1 part bleach with 9 parts water)', 16),
(90, 'Cover all cuts carefully', 16),
(91, 'Avoid sharing sharp items such as razors, nail clippers, toothbrushes, and earrings or body rings', 16),
(92, 'Discard sanitary napkins and tampons into plastic bags', 16),
(93, 'Avoid illegal street drugs (injecting, inhaling, snorting, or popping pills)', 16),
(94, 'Make sure new, sterile needles are used for ear or body piercing, tattoos, and acupuncture', 16),
(95, 'Never share needles. Intravenous drug users have the highest chance of getting infected with hepatitis C because many share needles. Besides needles, the virus may be present in other equipment used with illicit drugs. Even sharing a straw or dollar bill when snorting cocaine could transmit hepatitis C.', 17),
(96, 'Avoid direct exposure to blood or blood products. If you are a medical worker or health care provider, avoid coming into direct contact with blood. Any tools that draw blood in the workplace should be thrown out safely or sterilized to prevent hepatitis C infection.', 17),
(97, 'Don\'t share personal care items. Many items that we use on a daily basis will occasionally be exposed to blood. Often, people will cut themselves while shaving, or their gums will bleed while brushing their teeth. Even small amounts of blood can infect someone, so it is important not to share items such as toothbrushes, razors, nail and hair clippers, and scissors.', 17),
(98, 'Choose tattoo and piercing parlors carefully. Only use a licensed tattoo and piercing artist who does the right sanitary procedures. A new, disposable needle and ink well should be used for each customer. If in doubt, ask about their disposable products and sanitary procedures before getting a tattoo or piercing.', 17),
(99, 'Practice safe sex. It is rare for hepatitis C to be transmitted through sexual intercourse, but there is a higher chance of getting hepatitis C if you have HIV, another sexually transmitted disease, multiple sex partners, or if you engage in rough sex.', 17),
(100, 'Immunization with the combination vaccine of measles-mumps-rubella (MMR) on time, is the effective way to prevent mumps.', 18),
(101, 'Avoid direct contact with the person infected with mumps', 18),
(102, 'Do not go to school/workplace until the infection is completely healed', 18),
(103, 'Ensure to cover the nose and mouth while sneezing or coughing', 18),
(104, 'Wash your hands thoroughly with water and soap', 18),
(105, 'Avoid sharing personal items used by the infected person, such as cups and other utensils.', 18),
(106, 'Always wash your hands thoroughly after using the restroom and when you come in contact with an infected person\'s blood, stools, or other bodily fluid.', 19),
(107, 'The virus may spread quickly through day care centers and other places where people are in close contact. To prevent outbreaks, wash hands well before and after each diaper change, before serving food, and after using the restroom.', 19),
(108, 'Beware of sliced fruit that may have been washed in contaminated water. Travelers should peel all fresh fruits and vegetables themselves.', 19),
(109, 'Use only carbonated bottled water for brushing teeth and drinking in areas where the water may be unsafe. (Remember that ice cubes can carry infection.)', 19),
(110, 'If no water is available, boiling water is the best method for eliminating hepatitis A. Bringing the water to a full boil for at least 1 minute generally makes it safe to drink.', 19),
(111, 'Heated food should be hot to the touch and eaten right away.', 19),
(112, 'When cooking, wash your hands, cutting boards, utensils, and countertops after they have been in contact with raw meat or poultry. Wash your hands in between handling different kinds of food (meat and vegetables, for example).\r\n', 20),
(113, 'Wash fresh vegetables and fruit thoroughly before eating.', 20),
(114, 'Cook food to the recommended safe temperature like 145°F for roasts, 160°F for ground meats and 165°F for all poultry\r\n', 20),
(115, 'Put prepared food in the refrigerator within 30 minutes after eating.', 20),
(116, 'Keep hot foods hot and cold foods cold.', 20),
(117, 'Do not eat or drink foods containing raw eggs or raw (unpasteurized) milk.', 20),
(118, 'Wash your hands with soap after handling snakes, lizards, or other reptiles; birds; or baby chicks.', 20),
(119, 'Do not allow an infant or person with a weak immune system to touch reptiles or their environment.', 20),
(120, 'Practice good hygiene. Wash hands often with soap and clean running water for 20 seconds, especially before and after eating, after using the toilet, and after coming in contact with your own or someone else\'s germs.', 21),
(121, 'Do not drink water that may be contaminated: Do not drink untreated water from pools, lakes, rivers, ponds, and so on. If there is even a slight chance the water may be contaminated, either drink bottled water or boil the water for 5 minutes.', 21),
(122, 'Avoid eating food that may be contaminated. Wash all fruits and vegetables thoroughly under hot water. Do not eat raw or undercooked meats, especially in underdeveloped countries where the water and food may be contaminated. Drink bottled water when in underdeveloped countries.', 21),
(123, 'Prevent contact with feces during sex: Practice safe sex, especially using protection during oral-anal sex, and wash hands immediately after.', 21),
(124, 'Prevent contact with feces during sex: Practice safe sex, especially using protection during oral-anal sex, and wash hands immediately after.', 21),
(125, 'Clean up after sick pets: Use gloves and dispose of pet feces in a plastic bag and put it in the garbage. After, wipe up the infected area with hot steaming water and a strong disinfectant. Wash anything that may have been contaminated in the washer with detergent and hot water.', 21),
(126, 'Cover up. When in wooded or grassy areas, wear shoes, long pants tucked into your socks, a long-sleeved shirt, a hat and gloves. Try to stick to trails and avoid walking through low bushes and long grass. Keep your dog on a leash.', 22),
(127, 'Use insect repellents. Apply insect repellent with a 20 percent or higher concentration of DEET to your skin. Parents should apply repellant to their children, avoiding their hands, eyes and mouth.', 22),
(128, 'Do your best to tick-proof your yard. Clear brush and leaves where ticks live. Mow your lawn regularly. Stack wood neatly in dry, sunny areas to discourage rodents that carry ticks.', 22),
(129, 'Check your clothing, yourself, your children and your pets for ticks. Be especially vigilant after spending time in wooded or grassy areas. Deer ticks are often no bigger than the head of a pin, so you might not discover them unless you search carefully.', 22),
(130, 'It\'s helpful to shower as soon as you come indoors. Ticks often remain on your skin for hours before attaching themselves. Showering and using a washcloth might remove unattached ticks.', 22),
(131, 'Don\'t assume you\'re immune. You can get Lyme disease more than once.', 22),
(132, 'Remove a tick as soon as possible with tweezers. Gently grasp the tick near its head or mouth. Don\'t squeeze or crush the tick, but pull carefully and steadily. Once you\'ve removed the entire tick, dispose of it by putting it in alcohol or flushing it down the toilet, and apply antiseptic to the bite area.', 22),
(133, 'There’s a vaccine to prevent Ebola, but the best way to avoid catching the disease is by not traveling to areas where the virus is found.', 23),
(134, 'If you are in areas where Ebola is present, avoid contact with bats, monkeys, chimpanzees, and gorillas since these animals spread Ebola to people. You may be able to get the vaccine from the World Health Organization.', 23),
(135, 'Health care workers can prevent infection by wearing masks, gloves, and goggles whenever they come into contact with people who may have Ebola.', 23),
(136, 'The most effective way to prevent the disease is getting vaccinated.', 24),
(137, 'Immunisation against polio is recommended for all children from three to 18 months of age.', 24),
(138, 'Three booster doses should be given to all children up to 12 years of age.', 24),
(139, 'The polio vaccine is safe and highly effective in protecting children from polio. About 99 out of 100 children who are fully vaccinated will not get polio.', 24),
(140, 'The only real way to prevent scabies is to avoid close contact with any infested person or certain items they may have used, such as clothing, bedding, and towels.', 25),
(141, 'If you’re sexually active, it’s best not to have sex until you or your partner (whoever is infected) has finished treatment. While condoms help prevent the spread of other sexually transmitted infections, they won’t keep you from getting scabies from your sexual partner.', 25);

-- --------------------------------------------------------

--
-- Table structure for table `remedies`
--

CREATE TABLE `remedies` (
  `remedy_id` int(11) NOT NULL,
  `remedy` varchar(1000) NOT NULL,
  `for_disease` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `remedies`
--

INSERT INTO `remedies` (`remedy_id`, `remedy`, `for_disease`) VALUES
(1, 'Drinking water and other fluids is even more important when you have the flu. This is true whether you have a respiratory flu or a stomach flu. ', 1),
(2, 'You can stay hydrated by consuming plenty of water, coconut water, sports drinks, herbal tea, fresh juice, soup, broth, raw fruits and vegetables', 1),
(3, 'It’s important to rest and get more sleep when you have the flu. Sleeping can help boost your immune system. This helps your body fight off the flu virus.', 1),
(4, 'The mineral zinc is important for your immune system. This nutrient helps your body make germ-fighting white blood cells.Foods that are high in zinc include red meat, shellfish, lentils, chickpeas, beans, nuts, seeds, dairy, eggs', 1),
(5, 'A warm water and salt rinse (sometimes called a salt water gargle) can soothe a sore throat. It can also help to clear mucous.', 1),
(6, 'Several herbs have natural antiviral and antibacterial properties. Star anise is a star-shaped spice from which oseltamivir was traditionally extracted. Oseltamivir phosphate (better known as Tamiflu) is a prescription drug used to speed recovery from or to prevent getting the flu. It’s antiviral properties are effective against some kinds of flu viruses.', 1),
(7, 'Some types of essential oils may help protect you against certain viruses and bacteria. These include cinnamon oil, peppermint oil, eucalyptus oil, geranium oil, lemon oil, thyme oil, oregano oil', 1),
(8, 'Breathing in steam from a warm pot of water can help soothe your nose, sinuses, throat, and lungs. Steam inhalation or steam therapy uses water vapor to help loosen mucous congestion. The warm moist air may also relieve swelling in the nose and lungs. Steam inhalation might help to soothe a dry cough, irritated nose, and chest tightness. ', 1),
(9, 'Citrus Fruits - These are the known immune-boosters. Available in all tropical regions, citrus fruits are not hard to get hold off. The vitamin C helps in controlling fever, halts the infection from spreading, and accelerates healing in the body. Lemon water, orange, and sweet lime are good options. Eat as fruits or have as juice depending upon your condition.', 2),
(10, 'Cinnamon - Fever, headache, and diarrhea are the most common malaria symptoms. Cinnamon has an anti-inflammatory nature. It reduces the pain and other symptoms present in malaria.', 2),
(11, 'Ginger - Ginger is also a useful antimalaria medicine. It can be boiled with water and reduced into a delicious concoction that will effectively help you with the recovery process. The antibacterial nature of ginger ensures that the disease does not increase further.', 2),
(12, 'Grapefruit - This is the elixir of life when it comes to malaria disease. Grapefruit has a component similar to quinine and helps in neutralizing the harmful effects of the malaria parasite in the body. Eating grapefruit regularly helps in combating this disease and recovering rapidly. Please note that in case you are taking quinine medicines, do not have grapefruit as it reduces the stomach’s capacity to absorb this medicine.', 2),
(13, 'Basil - Basil is antibacterial and has Eugenol, an active component that is hugely therapeutic and eliminates the infection. Basil is found extensively in tropical countries and is used in ayurvedic medicines.', 2),
(14, 'Avoiding Mosquitoes - Using mosquito nets and mosquito repellents help in preventing mosquitoes in the first place, so you don’t catch the dreaded malaria disease. Ensuring that there are no stagnant pools of waters and there are no open drains also provides that mosquitoes don’t get breeding grounds.', 2),
(15, 'Apple Cider Vinegar - Using a cloth dipped in a concoction of apple cider vinegar and water has been known to reduce fever during malaria infection. Add a spoonful of apple cider vinegar in a glass of water. Drinking this helps with dealing with nausea and vomiting.', 2),
(16, 'Fever Nut - As the name suggests, fever nut helps in reducing the body temperature. The seeds are individually considered effective against malaria symptoms and make for a great option as home remedies for malaria. The seeds of fever nut can be ingested with water.', 2),
(17, 'Get plenty of rest. A cool, quiet and dark bedroom may help you relax and rest better.', 3),
(18, 'Drink plenty of fluids. Water, juice and soups are good choices. In children, especially, watch for signs of dehydration, such as dry lips, crying without tears and infrequent urination.', 3),
(19, 'Eat smaller meals. To avoid vomiting after coughing, eat smaller, more-frequent meals rather than large ones.', 3),
(20, 'Clean the air. Keep your home free of irritants that can trigger coughing spells, such as tobacco smoke and fumes from fireplaces.', 3),
(21, 'Prevent transmission. Cover your cough and wash your hands often; if you must be around others, wear a mask.', 3),
(22, 'Drink Lots of Fluids - Good hydration helps moisturize the lining of the nose and throat, which makes mucus easier to clear. Aim to drink more fluids than usual. But be sure to avoid caffeinated or alcoholic drinks, as they can cause dehydration.', 4),
(23, 'Use an Air Humidifier - You can also help keep nasal and throat passages moist by using an air humidifier, particularly in the winter months when heating makes the air inside your home very dry. Be sure to follow the instructions to keep it clean if you are using it infrequently.', 4),
(24, 'Try a Neti Pot - Another way to prevent nasal dryness is with a neti pot, a nose-rinsing device found in drug and health-food stores (just make sure the device is clean and you’re using it properly to ensure that it’s safe and effective, according to the FDA). These pots are filled with a saline (salt water) solution and are inserted into one nostril while the user tilts his or her head to the side to allow the solution to flow up the nasal passage and out the other nostril.', 4),
(25, 'Eat Chicken Soup - The adage about chicken soup being good for a cold is practically as old as the common cold itself. And there\'s some truth to what your grandmother has been telling you all these years. \"Chicken soup is nice for the common cold because it loosens up your mucus,\" says Norman Edelman, MD, a professor of preventive medicine, internal medicine, and physiology and biophysics at the State University of New York at Stony Brook and a senior scientific adviser for the American Lung Association.', 4),
(26, 'Take Echinacea - Evidence is mixed on the effects of echinacea on the common cold, but some experts say it can be helpful. \"Echinacea does not prevent infection, but several studies have suggested that echinacea helps reduce the duration of upper respiratory infection symptoms,\" says Adriane Fugh-Berman, MD, a professor of pharmacology and physiology at Georgetown University Medical Center in Washington, DC.', 4),
(27, 'Reach for Some Zinc Lozenges - Like echinacea, the mineral zinc gets mixed marks when being assessed for its effectiveness against the common cold. \"I have not seen any evidence for prevention,\" says Dr. Fugh-Berman, \"but there is some evidence — according to a review article published in the June 2013 issue of the Cochrane Database of Systematic Reviews — that zinc in the form of lozenges can decrease the symptoms of a common cold.\"', 4),
(28, 'Take Vitamin C - It\'s up there with chicken soup as far as legendary cold remedies go, and there may be some truth to vitamin C\'s being helpful. Get it as a supplement or by upping your intake of vitamin C–rich foods, like citrus, green peppers, dark leafy greens, and kiwi fruit. Several studies show that it can reduce the duration and severity of a common cold, according to research published in January 2013 in the Cochrane Database of Systematic Reviews.', 4),
(29, 'Give Your Nose a Massage - Try massaging the acupuncture point known as yingxiang, located at the lower border of the nostril. Scientific research on the effectiveness of this technique is limited, but an older, small study published in the American Journal of Rhinology did find that this type of nasal massage can provide relief from nasal congestion.', 4),
(30, 'Gargle With Water - Research suggests that gargling with water three times a day can actually help prevent upper respiratory tract infections. So gargle away, before that common cold gets any worse.', 4),
(31, 'Apply calamine lotion - Calamine lotion can help reduce itching. This lotion contains skin-soothing properties, including zinc oxide. Using a clean finger or cotton swab, dab or spread calamine lotion on itchy skin areas. Note that you shouldn’t use calamine lotion on or around chickenpox on your eyes.', 5),
(32, 'Serve sugar-free popsicles - Chickenpox can also appear inside your mouth. This can be especially painful. Encouraging a child to suck on sugar-free popsicles can be a good way to soothe mouth sores. As a bonus, this allows your child to get more fluids and avoid dehydration.', 5),
(33, 'Bathe in oatmeal - Oatmeal baths can be soothing and itch-relieving for chickenpox. Taking a bath won’t spread the chickenpox from one area of your skin to another.', 5),
(34, 'Wear mittens to prevent scratching - Scratching your blisters may be tempting, but it can worsen your discomfort and expose your skin to infection. To prevent the temptation to scratch at night or during naptime, put mittens or soft socks over your child’s hands. Trimming your child’s fingernails so they won’t damage affected areas can also help.', 5),
(35, 'Take baking soda baths - Another itch-relieving option to add to a bath is baking soda. Add one cup of baking soda to a shallow, lukewarm bath. Soak for 15 to 20 minutes. Your child can take up to three baths a day if they find this approach soothing.', 5),
(36, 'Use chamomile compresses - The chamomile tea in your kitchen cabinet may also soothe itchy chickenpox areas. Chamomile has antiseptic and anti-inflammatory effects when applied to your skin. Brew two to three chamomile tea bags and allow to cool or place in a warm bath. Then, dip soft cotton pads or washcloths in the tea and apply to itchy areas of skin. When you are done applying compresses, pat skin gently to dry.', 5),
(37, 'Give approved pain relievers - If your child’s chickenpox blisters are especially painful or if you child has a fever, you may wish to give them medication. It’s important not to give a child or teenager aspirin, as they are at increased risk for a condition called Reye’s syndrome if they take aspirin during or when they’re recovering from an infection like chickenpox. Instead, medication like acetaminophen (Tylenol) can help to relieve painful symptoms. Avoid ibuprofen if possible, because using it during a chickenpox infection may be associated with a higher risk of a severe skin infection.', 5),
(38, 'Giloy juice - Giloy juice is a well-known remedy for dengue fever. Giloy juice improves metabolism and builds immunity. Strong immunity helps in fighting dengue fever effectively. It helps in increasing the platelet count and gives relief to the patient. You can boil two small stems of giloy plant in a glass of water. Consume this water when it is little warm. You can also add few drops of giloy juice to a cup of boiled water and drink this twice a day. But make sure that you do not over consume giloy juice.', 6),
(39, 'Papaya leaf juice - As platelet count comes down in dengue patients, papaya leaf juice is a great remedy to increase platelet count. Papaya leaf juice also improves immunity which also helps in treating dengue. To use papaya leaves for dengue, take some papaya leaves and crush them to extract juice out of it. You can consume a small quantity of papaya leaf juice twice a day for better results.', 6),
(40, 'Fresh guava juice - Guava juice is loaded with multiple nutrients. It is rich in vitamin C which helps in building immunity. You can add fresh guava juice to your diet to treat dengue fever. Guava juice will also provide you other health benefits. Drink one cup of guava juice twice a day. You can also eat fresh guava instead of juice.', 6),
(41, 'Fenugreek seeds - Fenugreek seeds are also rich in multiple nutrients which help in controlling dengue fever. You can soak some fenugreek seeds in a cup of hot water. Allow the water to cool down and drink it twice a day. Fenugreek water will also provide you other health benefits as it is rich in vitamin C, K and fibre. Fenugreek water will bring down fever and boost immunity.', 6),
(42, 'Immunity boosting foods - A strong immune system help you prevent dengue and also help in quick recovery from dengue fever. Strong immunity will also treat the initial symptoms of dengue. You must add immunity-boosting foods to your diet like citrus foods, garlic, almonds, turmeric and many more.', 6),
(43, 'Increase Fluid Intake - To prevent dehydration, keep sipping on fluids. Staying hydrated also helps in the timely elimination of waste materials and toxins from the body. Apart from water, have fruit juices, coconut water, and soups.', 7),
(44, 'Use Cold Compresses - To combat high fever, use cold compresses to bring down the temperature. Sponge off armpits, feet, groin, and hands. Applying cold compresses on the extremities brings down the temperature most effectively.', 7),
(45, 'Drink ORS - Ensure that you have WHO recommended ORS. Buy sachets from any chemist or keep deliciously flavored tetra packs at home. You can even make at home by mixing sugar and salt in a liter of boiled water.', 7),
(46, 'Have Apple Cider Vinegar - Apple cider vinegar helps to maintain a proper pH in the body. It draws out heat from the skin and therefore, reduces the body temperature. The loss of minerals because of diarrhea is compensated by having apple cider vinegar. Mix a teaspoon in water. Add honey if needed. Drink before meals.', 7),
(47, 'Basil - The holy basil is antibiotic and antimicrobial. Add basil to boiled water and drink three to four cups daily. Basil boosts immunity and calms the tummy. Or you can 4-5 basil/ tulsi leaves to make a paste. Add pepper powder to this paste and a few strands of saffron or Kesar. Mix all these and divide them into three parts. Have this mixture after every meal. ', 7),
(48, 'Garlic  - Garlic speeds up recovery from typhoid due to its antioxidative properties. It boosts immunity and detoxifies the body. Eat two cloves on an empty stomach. This is not conducive for pregnant women and children.', 7),
(49, 'Bananas - Bananas have pectin, a soluble fiber that helps the intestines absorb fluids, thus curing diarrhea. Potassium in the fruit helps in replacing the electrolytes lost through loose motions. It is one of the best things to eat when having typhoid.', 7),
(50, 'Triphala Churan - This is an essential ayurvedic churan that shows positive effects on fever and typhoid. It hampers the growth of Salmonella typhi. Chemists provide this in the form of powder and tablets.', 7),
(51, 'Cloves - Cloves fight against bacteria that cause typhoid. Boil water with cloves, strain in a cup and have two cups daily.', 7),
(52, 'Pomegranates - Pomegranates are an effective home remedy against typhoid. It helps in preventing dehydration. Have it as a fruit or take out the juice. Consult a doctor and use the home remedies as an adjunct therapy. With proper rest, light food, clean water, and patience, the patient will recover quickly.', 7),
(53, 'Control bleeding. Apply direct pressure to control bleeding.', 8),
(54, 'Keep the wound clean. After the bleeding stops, rinse the wound thoroughly with clean running water. Clean the area around the wound with soap and a washcloth. If something is embedded in a wound, see your doctor.', 8),
(55, 'Use antibiotics. After you clean the wound, apply a thin layer of an antibiotic cream or ointment. These antibiotics won\'t make the wound heal faster, but they can discourage bacterial growth and infection. Certain ingredients in some ointments can cause a mild rash in some people. If a rash appears, stop using the ointment.\r\n', 8),
(56, 'Cover the wound. Exposure to the air might speed healing, but bandages can keep the wound clean and keep harmful bacteria out. Blisters that are draining are vulnerable. Keep them covered until a scab forms.', 8),
(57, 'Change the dressing. Apply a new dressing at least once a day or whenever the dressing becomes wet or dirty to help prevent infection. If you\'re allergic to the adhesive used in most bandages, switch to adhesive-free dressings or sterile gauze and paper tape.', 8),
(58, 'Homemade ORS - Homemade ORS is effective in curing cholera. Homemade ORS can be made at home. Here is a homemade recipe for ORS; in four cups of a clean water, mix 1/2 teaspoon of salt and sugar and stir till they dissolve in the water. Thereafter, drink several times until you recuperate completely.', 9),
(59, 'Probiotic yogurt - Probiotic yogurt is highly endowed with healthy bacteria which combat the bacterium, boosts digestion and immune system. According to top10homeremedies.com, drink 2-3 cups of probiotic yogurt until you get relieved.', 9),
(60, 'Ginger - Ginger is a herb that has been widely used to cure a number of ailments including cholera. According to top10homeremedies.com, prepare a ginger tea by adding sliced gingers into a sufuria. Add mint leaves, holy basil leaves, and black pepper as well. Thereafter, boil the mixture for few minutes. Drink the tea daily till you note a positive result. ', 9),
(61, 'Garlic: Garlic (or lahsoon in Hindi) is an effective home remedy for curing various ailments, including diphtheria. It is said that taking a spoonful of 2-3 crushed garlic cloves can help lower the fever and cure this disease.', 10),
(62, 'Pineapple: Drinking fresh juice of pineapple may help remove the throat deposits, thereby improving the symptoms of this infection. Since pineapple juice contains beta-carotene, it can effectively cure diphtheria.', 10),
(63, 'Basil leaves: The health benefits of basil leaves or Tulsi is well-known. The antibacterial properties in basil leaves can help cure respiratory infections. Drink basil leaves infused water to get relief from diphtheria.', 10),
(64, 'Passionflower: Passionflower is an amazing herb that offers a wide range of health benefits. It is claimed that consuming passionflower concoction can help reduce the symptoms of diphtheria symptoms in just about a week. Just add a tablespoon of this powder to a cup of boiling water. Strain the concoction and drink it twice a day.', 10),
(65, 'Castor leaves: Castor leaves contain anti-inflammatory and anti-microbial properties, which can help treat the condition effectively. Just take a few castor leaves and grind them. You can also add some drumstick leaves and garlic juice to make a paste. Inhaling the aroma of this paste will clear your nasal passage and give you relief from the condition.', 10),
(66, 'Cannot be cured or relieved at home', 11),
(67, 'Eat healthy foods. Make sure you get enough nourishment. Fresh fruits and vegetables, whole grains, and lean protein help keep you strong, give you more energy and support your immune system.', 12),
(68, 'Avoid raw meat, eggs and more. Foodborne illnesses can be especially severe in people who are infected with HIV. Cook meat until it\'s well done. Avoid unpasteurized dairy products, raw eggs and raw seafood such as oysters, sushi or sashimi.', 12),
(69, 'Get the right vaccinations. These may prevent typical infections such as pneumonia and influenza. Your doctor may also recommend other vaccinations, including for HPV, hepatitis A and hepatitis B. Inactivated vaccines are generally safe, but most vaccines with live viruses are not, due to your weakened immune system.', 12),
(70, 'Take care with companion animals. Some animals may carry parasites that can cause infections in people who are HIV-positive. Cat feces can cause toxoplasmosis, reptiles can carry salmonella, and birds can carry cryptococcus or histoplasmosis. Wash hands thoroughly after handling pets or emptying the litter box.', 12),
(71, 'Take it easy. Get rest and avoid busy activities.', 14),
(72, 'Sip something. Drink plenty of water, fruit juice and herbal tea to replace fluids lost by fever and sweating.', 14),
(73, 'Seek respiratory relief. Use a humidifier to relieve a cough and sore throat.', 14),
(74, 'Rest your eyes. If you or your child finds bright light bothersome, as do many people with measles, keep the lights low or wear sunglasses. Also avoid reading or watching television if light from a reading lamp or from the television is bothersome.', 14),
(75, 'Antibiotics can\'t cure viral meningitis, and most cases improve on their own in several weeks. Treatment of mild cases of viral meningitis usually includes:\r\n\r\n    Bed rest\r\n    Plenty of fluids\r\n    Over-the-counter pain medications to help reduce fever and relieve body aches\r\n', 15),
(76, 'Of all the natural remedies used for hep B, milk thistle is the most popular, and the most tested. This herb is a common ingredient in supplement blends that promote liver health. Milk thistle (Silybum marianum) is a plant from the aster family. Silymarin is the active ingredient in milk thistle that is likely responsible for its medicinal qualities. Silymarin is actually a group of flavanoids, with silybin (aka silibinin) being the most powerful. Typically, milk thistle is sold in standardized amounts of 70 to 80 percent silymarin.', 16),
(77, 'Sleep - Getting enough sleep is important for staying healthy and feeling your best during HCV treatment. Unfortunately, insomnia, or difficulty sleeping, can be one of the side effects of some of the medications. ', 17),
(78, 'Nutrition and diet - Most people with hepatitis C don’t need to follow a special diet, but eating healthy will give you energy and help you feel your best during treatment. Some medications used to treat hepatitis C may cause you to lose your appetite or feel sick to your stomach. ', 17),
(79, 'As you start treatment for hepatitis C, it’s important to take care of your mental and physical health. Some simple steps include eating a healthy diet, getting proper sleep, and speaking with your doctor about any mental health issues you may experience.', 17),
(80, 'Isolate yourself or your child to prevent spreading the disease to others. Someone with mumps may be contagious up to five days after the onset of signs and symptoms.', 18),
(81, 'Take over-the-counter pain relievers such as acetaminophen (Tylenol, others) or a nonsteroidal anti-inflammatory drug such as ibuprofen (Advil, Motrin IB, others) to ease symptoms.', 18),
(82, 'Use a warm or cold compress to ease the pain of swollen glands.', 18),
(83, 'Wear an athletic supporter and use cold compresses to ease the pain of tender testicles.', 18),
(84, 'Avoid foods that require lots of chewing. Try broth-based soups or soft foods, such as mashed potatoes or oatmeal.', 18),
(85, 'Avoid sour foods, such as citrus fruits or juices, which stimulate saliva production.', 18),
(86, 'Drink plenty of fluids.', 18),
(87, 'Avoid sexual activity. Avoid all sexual activity if you have hepatitis A. Many kinds of sexual activity can spread the infection to your partner. Condoms don\'t offer adequate protection.', 19),
(88, 'Wash your hands thoroughly after using the toilet and changing diapers. Scrub vigorously for at least 20 seconds and rinse well. Dry your hands with a disposable towel.', 19),
(89, 'Don\'t prepare food for others while you\'re actively infected. You can easily pass the infection to others.', 19),
(90, 'Even if you don\'t need medical attention for your salmonella infection, you need to take care not to dehydrate, a common concern with diarrhea and vomiting.', 20),
(91, 'Adults should drink water or suck on ice chips.', 20),
(92, 'For children, you can use an oral rehydration solution, such as Pedialyte, unless your doctor advises otherwise.', 20),
(93, 'If you have giardiasis, be sure to drink plenty of fluids to prevent dehydration.', 21),
(94, 'Over-the-counter medications for diarrhea, such as loperamide (Imodium), may help your symptoms. ', 21),
(95, 'Wash your hands frequently if you have giardiasis or if you are caring for a person or animal with this infection.', 21),
(96, 'Essential oils are concentrated liquids from plants. Some of them have antibacterial properties, meaning they can kill bacteria. \r\nA 2017 study evaluated the use of 34 essential oils to kill B. burgdorferi bacteria in a laboratory setting. Cinnamon bark, clove bud, and oregano essential oils killed the bacteria without any regrowth. \r\nThese results are promising, but there’s no evidence that they work in humans with Lyme disease. Essential oils are used in aromatherapy, where the fragrant oils are inhaled through a diffuser or diluted in a carrier oil and applied topically. It’s not safe to ingest essential oils, especially in the quantities that you would likely need to treat Lyme disease. ', 22),
(97, 'Some people claim that immune system-boosting supplements can naturally treat Lyme disease. These include: vitamin B-1, vitamin C, fish oil, alpha lipoic acid, magnesium, chlorella, cat’s claw, garlic, olive leaf, turmeric, glutathione. However, there’s no evidence that any of these, or any other supplements, can get rid of Lyme disease.', 22),
(98, 'Symptoms of Ebola virus disease (EVD) are treated as they appear. When used early, basic interventions can significantly improve the chances of survival. These include:\r\nProviding fluids and electrolytes (body salts) through infusion into the vein (intravenously).\r\nOffering oxygen therapy to maintain oxygen status.\r\nUsing medication to support blood pressure, reduce vomiting and diarrhea and to manage fever and pain.\r\nTreating other infections, if they occur.', 23),
(99, 'Tea tree oil is a well-known essential oil. In some studies, it has shown some promise as being effective in the treatment of scabies. Additional studies are still needed, however. Tea tree oil can help alleviate some of the itchiness associated with scabies, in addition to other treatments.', 25),
(100, 'Aloe vera is well-known for its soothing effect on sunburn and other skin ailments. Aloe vera is usually considered safe to use with minimal side effects reported. Aloe vera gel can be purchased online. One small study has shown that aloe vera is effective in treating scabies. It was, in fact, found to be as effective as a prescription drug called benzyl benzoate.', 25),
(101, 'Neem is an oil. It can be found in creams and ointments available online. Neem has analgesic, antibacterial, and anti-inflammatory properties. There have been some studies that suggest that neem is effective in treating scabies because it kills the mites.', 25),
(102, 'A single study showed that clove oil was effective in treating scabies in a group of rabbits and pigs. Other oils tested did not perform as well as clove oil.', 25),
(103, 'Little evidence supports the effectiveness of turmeric in treating scabies. However, some people claim that it is effective in alleviating the symptoms. \r\nTreating the symptoms will not stop or cure the infestation, so other methods of treatment will still be required.', 25);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `symp_id` int(11) NOT NULL,
  `symp_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`symp_id`, `symp_name`) VALUES
(1, 'body aches'),
(2, 'chest pain'),
(3, 'chills'),
(4, 'cough'),
(5, 'fatigue'),
(8, 'persistent cough'),
(9, 'sore throat'),
(10, 'sweats'),
(11, 'weakness'),
(12, 'abdominal pain'),
(13, 'diarrhoea'),
(14, 'moderate chils'),
(15, 'muscle pain'),
(16, 'nausea'),
(17, 'profuse'),
(18, 'severe chills'),
(19, 'sweating'),
(20, 'vomiting'),
(21, 'low grade fever'),
(22, 'runny nose'),
(23, 'sneezing'),
(24, 'watery eyes'),
(25, 'stuffy nose'),
(27, 'dryness'),
(28, 'fever'),
(29, 'itchiness'),
(30, 'loss of appetite'),
(31, 'rashes'),
(32, 'redness'),
(33, 'stiff neck'),
(34, 'bone pain'),
(35, 'eye pain'),
(36, 'irritable'),
(37, 'joint pain'),
(38, 'restlessness'),
(39, 'skin rash'),
(40, 'tenderness'),
(41, 'aches'),
(42, 'bloating'),
(43, 'constipation'),
(44, 'high fever'),
(45, 'intestinal bleeding'),
(46, 'lethargy'),
(47, 'poor appetite'),
(48, 'weight loss'),
(49, 'abdominal rigidity'),
(50, 'difficulty swallowing'),
(51, 'fast heart rate'),
(52, 'muscle spasm'),
(53, 'shortness of breath'),
(54, 'stiff jaw'),
(55, 'stiff muscles'),
(56, 'stiff neck'),
(57, 'dehydration'),
(58, 'dry mouth'),
(59, 'low blood pressure'),
(60, 'rapid heart '),
(61, 'difficulty breathing'),
(62, 'hoarseness'),
(63, 'impaired voice'),
(64, 'malaise'),
(65, 'muscle weakness'),
(66, 'nausal discharge'),
(67, 'rapid breathing'),
(68, 'swelling'),
(69, 'swollen glands'),
(70, 'ulcers'),
(71, 'back ache'),
(72, 'blisters'),
(73, 'scab'),
(74, 'scars'),
(75, 'severe headache'),
(76, 'dry cough'),
(77, 'long lasting fever'),
(78, 'night sweats'),
(79, 'pneumonia'),
(80, 'skin spots'),
(81, 'stomach pain'),
(82, 'swelling'),
(83, 'swollen neck'),
(84, 'tiredness'),
(85, 'watery diarrhoea'),
(86, 'coughing blood'),
(87, 'long lasting cough'),
(88, 'loss of muscle'),
(90, 'swollen lymph'),
(91, 'inflammed eyes'),
(92, 'kopliks spot'),
(93, 'senstivity to light'),
(94, 'swollen lymph nodes'),
(95, 'blotchy skin'),
(96, 'cold feet'),
(97, 'cold hands'),
(98, 'difficult to walk'),
(99, 'drowsey'),
(100, 'fast breathing'),
(101, 'pale skin'),
(102, 'severe muscle pain'),
(103, 'shivering'),
(104, 'jaundice'),
(105, 'light urine'),
(106, 'dark urine'),
(107, 'depression'),
(108, 'sore muscles'),
(109, 'yellow eyes'),
(110, 'yellow skin'),
(111, 'hearing loss'),
(112, 'neck pain'),
(113, 'neck swelling'),
(114, 'pain in chewing'),
(115, 'pain in swallowing'),
(116, 'soreness'),
(117, 'swollen salivary gland'),
(118, 'testicle pain'),
(119, 'weakness'),
(120, 'itching fever'),
(121, 'sudden nausea'),
(122, 'abdominal cramps'),
(123, 'blood in the stool'),
(124, 'cramping'),
(125, 'excessive gas'),
(126, 'foul smell'),
(127, 'greasy stools'),
(128, 'indigestion'),
(129, 'malnutrition'),
(130, 'irregular heartbeat'),
(131, 'swelling in knees'),
(132, 'eye redness'),
(133, 'mental confusion'),
(134, 'red spots'),
(135, 'feeling faint'),
(136, 'muscle quiver'),
(137, 'slow growth'),
(138, 'wasting away'),
(139, 'bumps'),
(140, 'intense itching'),
(141, 'skin burrow');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_id` int(11) NOT NULL,
  `treatment` varchar(1500) NOT NULL,
  `for_disease` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_id`, `treatment`, `for_disease`) VALUES
(1, 'The flu treatment you should take depends on your symptoms. For example, if you have nasal or sinus congestion, then a decongestant can be helpful.', 1),
(2, 'Decongestants come in oral or nasal spray forms. Decongestants are used to reduce swelling in the nasal passageways. However, nasal spray decongestants should not be used for more than a few days because, if they are used too long and then stopped, they can cause rebound symptoms.', 1),
(3, 'If you have a runny nose, postnasal drip, or itchy, watery eyes -- then an antihistamine may be helpful for your flu symptoms. Antihistamines block the effect of \"histamine,\" and help relieve such annoying symptoms as sneezing, itching, and nasal discharge.', 1),
(4, 'Usually, you\'ll need nothing more than bed rest and plenty of fluids to treat the flu. But if you have severe infection or are at higher risk for complications, your doctor may prescribe an antiviral medication, such as oseltamivir (Tamiflu), zanamivir (Relenza), peramivir (Rapivab) or baloxavir (Xofluza). These drugs may shorten your illness by a day or so and help prevent serious complications.', 1),
(5, 'Oseltamivir is an oral medication. Zanamivir is inhaled through a device similar to an asthma inhaler and shouldn\'t be used by anyone with certain chronic respiratory problems, such as asthma and lung disease.', 1),
(6, 'Antiviral medication side effects may include nausea and vomiting. These side effects may be lessened if the drug is taken with food.\r\n\r\n', 1),
(7, 'Most circulating strains of influenza have become resistant to amantadine and rimantadine (Flumadine), which are older antiviral drugs that are no longer recommended.', 1),
(8, 'If you do come down with the flu, these measures may help ease your symptoms:\r\nDrink plenty of liquids. Choose water, juice and warm soups to prevent dehydration.\r\nRest. Get more sleep to help your immune system fight infection. You may need to change your activity level, depending on your symptoms.\r\nConsider pain relievers. Use an over-the-counter pain reliever, such as acetaminophen (Tylenol, others) or ibuprofen (Advil, Motrin IB, others), to combat the achiness associated with influenza.', 1),
(9, 'Treatment of malaria depends on the following factors:', 2),
(10, 'Type of infection: Treatment obviously depends on the type of infection. Patients with P. falciparum malaria should be evaluated thoroughly in view of potential seriousness of the disease and possibility of resistance to anti malarial drugs.', 2),
(11, 'P. vivax: Only Chloroquine 25 mg/kg + Primaquine for 14 days.', 2),
(12, 'P. falciparum: Treat depending on severity & sensitivity; in most countries, artimisinin based combination therapy is recommended by the authorities. Primaquine as gametocytocidal is also recommended to prevent spread.', 2),
(13, 'Mixed infections: Blood schizonticides as for P. falciparum and Primaquine as for P. vivax.', 2),
(14, 'Severity of infection: All patients with malaria should be carefully and thoroughly assessed for complications of malaria. Acute, life-threatening complications occur only in P. falciparum malaria. Malaria is probably the only disease of its kind that can be easily treated in just 3 days, yet if the diagnosis and proper treatment are delayed, it can kill the patient very quickly and easily.\r\nAll cases of severe malaria should be presumed to have P. falciparum malaria or treated as such.\r\nIf there is any uncertainty about the drug sensitivity of the parasite, it is safer to treat these cases as chloroquine resistant malaria with drugs like quinine or artemisinin.\r\nAll cases of severe malaria should be admitted to the hospital for proper evaluation, treatment and monitoring.\r\nAll cases of severe malaria should be treated with injectable antimalarials (quinine, artemisinin derivatives) so as to ensure adequate absorption and plasma drug levels.', 2),
(15, 'Status of the host: Treatment of malaria is also dependent on host factors.\r\n\r\nPatient’s age and weight should be recorded so as to administer adequate doses of anti malarial drugs.\r\nFunctional capacity- independent, dependent, bed ridden etc. All patients with severe prostration and who are looking ill should be admitted to a hospital and monitored.\r\nPatients with nausea and vomiting should be given anti emetic drugs to ensure adequate treatment. While high-grade fever frequently stimulates vomiting, this may be further aggravated by anti malarial drugs. Therefore it is better to avoid administration of oral antimalarials at the height of fever. One can wait for the fever to subside before taking the drugs. If the patient vomits within one hour of taking the anti malarial drugs, the same should be re-administered. In case of persistent vomiting, patient should be admitted and vomiting should be controlled with parenteral anti emetics. Parenteral anti malarials are needed only in cases of severe malaria or uncontrolled vomiting.\r\nAdequate hydration should be ensured.', 2),
(16, 'Associated conditions/ diseases: Treatment of malaria may have to be modified due to certain associated conditions/ diseases. Therefore, all such should be carefully assessed before starting the patient on anti malarial treatment.', 2),
(17, '1.Pregnancy: Treatment of malaria in pregnancy may prove to be difficult due to contra indication for use of certain antimalarials. Chloroquine can be used safely in all trimesters of pregnancy. Artemisinin is not shown to have any deleterious effects on the fetus in animal studies; however, it is not yet recommended for routine use in the first trimester, but can be safely used in the second and third trimesters. Quinine can be used in pregnancy, but one should be watchful about hypoglycemia. Whereas mefloquine is contraindicated in the first trimester of pregnancy, pyrimethamine/ sulphadoxine is contraindicated in the first and last trimesters. Halofantrine, tetracycline and doxycycline are absolutely contra indicated in pregnancy. Primaquine is also contra indicated in pregnancy, and therefore pregnant women with P. vivax malaria should be started on 500 mg of chloroquine weekly as suppressive chemoprophylaxis against relapse of malaria.', 2),
(18, '2.Epilepsy: Malaria as well as anti malarials can trigger convulsions. Mefloquine is better avoided in these patients.', 2),
(19, '3.Cardiac disease: High-grade fever of malaria can exacerbate left ventricular failure and therefore, in all such patients energetic management of malaria is called for. Fever should be controlled with anti-pyretics and tepid sponging. Chloroquine, artemisinin, pyrimethamine/ sulphadoxine, tetracyclines and primaquine can be safely used in these patients. Quinine can also be used carefully. Mefloquine and halofantrine are better avoided in patients with known cardiac illness.', 2),
(20, '4.Hepatic insufficiency: None of the antimalarial drugs have any direct hepatotoxic effect. However, chloroquine is not advisable in patients with severe hepatic insufficiency.', 2),
(21, '5.Renal failure: The initial dose of antimalarial drugs need not be reduced in patients with renal failure. However, if the patient requires parenteral antimalarials even after three days and continues to be sick, then the dose can be reduced by one third to half of usual dose.', 2),
(22, '6.Dermatitis: Concomitant use of chloroquine with gold salts and phenyl butazone should be avoided because all the three can cause dermatitis.', 2),
(23, 'Modes of Treatment: Two important concepts in the treatment of malaria are suppressive and radical treatments.', 2),
(24, '1.Suppressive treatment: The symptoms of malaria can be alleviated by suppressing the erythrocytic stage of the parasitic development. Suppressive therapy involves administration of appropriate blood schizonticidal drugs. In all cases of non-falciparum malaria (P. vivax, P. ovale, P. malariae and P. knowlesi), it involves administration of chloroquine.', 2),
(25, '2.Presumptive treatment for malaria involves administration of blood schizonticidal drugs, such as chloroquine, to suspected cases of malaria, followed by full treatment after confirmation. This strategy has been abandoned in recent years. NVBDCP-India now recommends first loading dose of chloroquine only for those areas where neither microscopy nor RDTs are available within 24 hours.', 2),
(26, '3.Radical treatment: Radical treatment is administration of primaquine to all confirmed cases of malaria.', 2),
(27, 'Healthcare providers generally treat pertussis with antibiotics and early treatment is very important. Treatment may make your infection less serious if you start it early, before coughing fits begin. Treatment can also help prevent spreading the disease to close contacts (people who have spent a lot of time around the infected person). Treatment after three weeks of illness is unlikely to help.  The bacteria are gone from your body by then, even though you usually will still have symptoms. This is because the bacteria have already done damage to your body.', 3),
(28, 'There are several antibiotics (medications that can help treat diseases caused by bacteria) available to treat pertussis. If a healthcare professional diagnoses you or your child with pertussis, they will explain how to treat the infection.', 3),
(29, 'Pertussis can sometimes be very serious, requiring treatment in the hospital. Babies are at greatest risk for serious complications from pertussis. View photos of a baby getting treatment for pertussis in the hospital.', 3),
(30, 'Infants are typically hospitalized for treatment because whooping cough is more dangerous for that age group. If your child can\'t keep down liquids or food, intravenous fluids may be necessary. Your child will also be isolated from others to prevent the infection from spreading.\r\nTreatment for older children and adults usually can be managed at home.', 3),
(31, 'Pros and cons of commonly used cold remedies include:', 4),
(32, '1)Pain relievers- For a fever, sore throat and headache, many people turn to acetaminophen (Tylenol, others) or other mild pain relievers. Use acetaminophen for the shortest time possible and follow label directions to avoid side effects.\r\nUse caution when giving aspirin to children or teenagers. Children and teenagers recovering from chickenpox or flu-like symptoms should never take aspirin. This is because aspirin has been linked to Reye\'s syndrome, a rare but potentially life-threatening condition, in such children.\r\nConsider giving your child over-the-counter (OTC) pain medications designed for infants or children. These include acetaminophen (Children\'s Tylenol, FeverAll, others) or ibuprofen (Children\'s Advil, Children\'s Motrin, others) to ease symptoms.', 4),
(33, '2)Decongestant nasal sprays- Adults can use decongestant drops or sprays for up to five days. Prolonged use can cause rebound symptoms. Children younger than 6 shouldn\'t use decongestant drops or sprays.', 4),
(34, '3)Cough syrups- The Food and Drug Administration (FDA) and the American Academy of Pediatrics strongly recommends against giving OTC cough and cold medicines to children younger than age 4 as they may be harmful. There\'s no good evidence that these remedies are beneficial or safe for children.\r\nIt isn\'t typically recommended that you give cough or cold medicines to an older child, but if you do, follow the label directions. Don\'t give your child two medicines with the same active ingredient, such as an antihistamine, decongestant or pain reliever. Too much of a single ingredient could lead to an accidental overdose.', 4),
(35, 'Chickenpox generally resolves within a week or two without treatment. There is no cure, but a vaccine can prevent it.', 5),
(36, 'A doctor may prescribe medication or advise on how to reduce symptoms of itchiness and discomfort, and also on how to prevent the infection from spreading to other people. ', 5),
(37, 'In otherwise healthy children, chickenpox typically needs no medical treatment. Your doctor may prescribe an antihistamine to relieve itching. But for the most part, the disease is allowed to run its course.', 5),
(38, 'There is no specific medicine to treat dengue infection. If you think you may have dengue fever, you should use pain relievers with acetaminophen and avoid medicines with aspirin, which could worsen bleeding. You should also rest, drink plenty of fluids, and see your doctor. If you start to feel worse in the first 24 hours after your fever goes down, you should get to a hospital immediately to be checked for complications.', 6),
(39, 'While recovering from dengue fever, watch for signs and symptoms of dehydration. Call your doctor right away if you develop any of the following:\r\nDecreased urination\r\nFew or no tears\r\nDry mouth or lips\r\nLethargy or confusion\r\nCold or clammy extremities', 6),
(40, 'Antibiotic therapy is the only effective treatment for typhoid fever.', 7),
(41, 'Commonly prescribed antibiotics include:', 7),
(42, '1)Ciprofloxacin (Cipro)- In the United States, doctors often prescribe this for nonpregnant adults. Another similar drug called ofloxacin also may be used. Unfortunately, many Salmonella typhi bacteria are no longer susceptible to antibiotics of this type, particularly strains acquired in Southeast Asia.', 7),
(43, '2)Azithromycin (Zithromax)- This may be used if a person is unable to take ciprofloxacin or the bacteria is resistant to ciprofloxacin.', 7),
(44, '3)Ceftriaxone- This injectable antibiotic is an alternative in more-complicated or serious infections and for people who may not be candidates for ciprofloxacin, such as children.', 7),
(45, 'Problems with antibiotic resistance', 7),
(46, 'In the past, the drug of choice was chloramphenicol. Doctors no longer commonly use it, however, because of side effects, a high rate of health deterioration after a period of improvement (relapse) and widespread bacterial resistance.\r\nIn fact, the existence of antibiotic-resistant bacteria is a growing problem in the treatment of typhoid fever, especially in the developing world. In recent years, Salmonella typhi has also proved resistant to trimethoprim-sulfamethoxazole, ampicillin and ciprofloxacin.', 7),
(47, 'Other treatments include:\r\n1)Drinking fluids- This helps prevent the dehydration that results from a prolonged fever and diarrhea. If you\'re severely dehydrated, you may need to receive fluids through a vein (intravenously).\r\n2)Surgery- If your intestines become perforated, you\'ll need surgery to repair the hole.', 7),
(48, 'There\'s no cure for tetanus. Treatment consists of wound care, medications to ease symptoms and supportive care.', 8),
(49, 'A wound likely to develop tetanus is defined as:\r\n-a wound or burn that requires surgical intervention that is delayed for over 6 hours\r\n-a wound or burn that has a considerable amount of removed tissue\r\n-any puncture-type injury that has been in contact with manure or soil\r\n-serious fractures where the bone is exposed to infection, such as compound fractures\r\n-wounds or burns in patients with systemic sepsis', 8),
(50, 'Any patient with a wound listed above should receive tetanus immunoglobulin (TIG) as soon as possible, even if they have been vaccinated. Tetanus immunoglobulin contains antibodies that kill Clostridium tetani. It is injected into a vein and provides immediate short-term protection against tetanus.', 8),
(51, 'Wound care:\r\n\r\nIt\'s essential to clean the wound to prevent the growth of tetanus spores. This involves removing dirt, foreign objects and dead tissue from the wound.', 8),
(52, 'Cholera requires immediate treatment because the disease can cause death within hours.\r\nRehydration- The goal is to replace lost fluids and electrolytes using a simple rehydration solution, oral rehydration salts (ORS). The ORS solution is available as a powder that can be made with boiled or bottled water.Without rehydration, approximately half the people with cholera die. With treatment, fatalities drop to less than 1%.\r\nIntravenous fluids- Most people with cholera can be helped by oral rehydration alone, but severely dehydrated people might also need intravenous fluids.\r\nAntibiotics- While not a necessary part of cholera treatment, some antibiotics can reduce cholera-related diarrhea and shorten how long it lasts in severely ill people.\r\nZinc supplements-Research has shown that zinc might decrease diarrhea and shorten how long it lasts in children with cholera.', 9),
(53, 'There is a vaccine for cholera. Both the CDC and the World Health Organization have specific guidelines for who should be given this vaccine. ', 9),
(54, 'Diphtheria is a serious illness. Doctors treat it immediately and aggressively. Treatments include:\r\nAntibiotics- Antibiotics, such as penicillin or erythromycin, help kill bacteria in the body, clearing up infections. Antibiotics cut the time that someone with diphtheria is contagious.\r\nAn antitoxin- If a doctor suspects diphtheria, he or she will request a medication that counteracts the diphtheria toxin in the body from the Centers for Disease Control and Prevention. Called an antitoxin, this drug is injected into a vein or muscle.\r\nBefore giving an antitoxin, doctors may perform skin allergy tests. These are done to make sure that the infected person doesn\'t have an allergy to the antitoxin.\r\nIf someone has an allergy, he or she needs to be desensitized to the antitoxin. Doctors do this by initially giving small doses of the antitoxin and then gradually increasing the dose.', 10),
(55, 'Children and adults who have diphtheria often need to be in the hospital for treatment. They may be isolated in an intensive care unit because diphtheria can spread easily to anyone not immunized against the disease.', 10),
(56, 'People with diphtheria are usually no longer able to infect others 48 hours after they begin taking antibiotics. However, it is important to finish taking the full course of antibiotics to make sure the bacteria are completely removed from the body. After the patient finishes the full treatment, the doctor will run tests to make sure the bacteria are not in the patient’s body anymore.', 10),
(57, 'Preventive treatments\r\n\r\nIf you\'ve been exposed to a person infected with diphtheria, see a doctor for testing and possible treatment. Your doctor may give you a prescription for antibiotics to help prevent you from developing the disease. You may also need a booster dose of the diphtheria vaccine.\r\n\r\nPeople found to be carriers of diphtheria are treated with antibiotics to clear their systems of the bacteria, as well.', 10),
(58, 'Smallpox can be prevented by the smallpox vaccine.', 11),
(59, 'If you get the vaccine:\r\n\r\n-Before contact with the virus, the vaccine can protect you from getting sick.\r\n-Within 3 days of being exposed to the virus, the vaccine might protect you from getting the disease. If you still get the disease, you might get much less sick than an unvaccinated person would.\r\n-Within 4 to 7 days of being exposed to the virus, the vaccine likely gives you some protection from the disease. If you still get the disease, you might not get as sick as an unvaccinated person would.', 11),
(60, 'Once you have developed the smallpox rash, the vaccine will not protect you.\r\n\r\nCurrently, the smallpox vaccine is not available to the general public because smallpox has been eradicated, and the virus no longer exists in nature. However, there is enough smallpox vaccine to vaccinate every person in the United States if a smallpox outbreak were to occur.', 11),
(61, 'If you\'ve been diagnosed with HIV, it\'s important to find a specialist trained in diagnosing and treating HIV to help you:\r\n\r\nDetermine whether you need additional testing\r\n\r\nDetermine which HIV antiretroviral therapy (ART) will be best for you\r\n\r\nMonitor your progress and work with you to manage your health', 12),
(62, 'If you receive a diagnosis of HIV/AIDS, several tests can help your doctor determine the stage of your disease and the best treatment, including:\r\n\r\nCD4 T cell count- CD4 T cells are white blood cells that are specifically targeted and destroyed by HIV. Even if you have no symptoms, HIV infection progresses to AIDS when your CD4 T cell count dips below 200.\r\n\r\nViral load (HIV RNA)- This test measures the amount of virus in your blood. After starting HIV treatment the goal is to have an undetectable viral load. This significantly reduces your chances of opportunistic infection and other HIV-related complications.\r\n\r\nDrug resistance- Some strains of HIV are resistant to medications. This test helps your doctor determine if your specific form of the virus has resistance and guides treatment decisions.', 12),
(63, 'Medications are the cornerstone of tuberculosis treatment. But treating TB takes much longer than treating other types of bacterial infections.\r\n\r\nFor active tuberculosis, you must take antibiotics for at least six to nine months. The exact drugs and length of treatment depend on your age, overall health, possible drug resistance and the infection\'s location in the body.', 13),
(64, 'Treatment for Latent TB\r\n\r\nThere are two types of TB -- latent and active.\r\nDepending on your risk factors, latent TB can re-activate and cause an active infection. That’s why your doctor might prescribe medication to kill the inactive bacteria -- just in case.\r\n\r\nThese are the three treatment options:\r\n\r\nIsoniazid (INH): This is the most common therapy for latent TB. You typically take an isoniazid antibiotic pill daily for 9 months.\r\n\r\nRifampin (Rifadin, Rimactane): You take this antibiotic each day for 4 months. It’s an option if you have side effects or contraindications to INH.\r\n\r\nIsoniazid and rifapentine: You take both of these antibiotics once a week for 3 months under your doctor’s supervision.', 13),
(65, 'Treatment for Active TB\r\n\r\nIf you have this form of the disease, you’ll need to take a number of antibiotics for 6 to 9 months. These four medications are most commonly used to treat it:\r\n-Ethambutol(Myambutal)\r\n-Isoniazid\r\n-Pyrazinamide\r\n-Rifampin\r\n\r\nYour doctor may order a test that shows which antibiotics will kill the TB strain. Based on the results, you’ll take three or four medications for 2 months. Afterward, you’ll take two medications for 4 to 7 months.\r\n\r\nYou’ll probably start to feel better after a few weeks of treatment. But only a doctor can tell you if you’re still contagious. If you’re not, you may be able to go back to your daily routine.', 13),
(66, 'Treatment for Drug-Resistant TB\r\n\r\nIf you have a TB strain that doesn’t respond to the usual medications used to treat TB, you have a drug-resistent strain. This means that you will be treated with a combination of second-line drugs, which may be less effective. You will need to take these drugs for a longer period of time.\r\n\r\nIf several types of medications don\'t do the job, you have what doctors call “multidrug-resistant TB.” You’ll need to take a combination of medications for 20 to 30 months. They include:\r\n\r\n-Antibiotics called fluoroquinolones\r\n-An injectable antibiotic, such as amikacin (Amikin), capreomycin (Capastat), and kanamycin\r\n-Newer antibiotic treatments, such as bedaquiline (Sirturo), ethionamide (Trecator), and para-amino salicylic acid. These are given in addition to other medications. The new drug Pretomanid is used in conjunction with bedaquiline and linezolid.Scientists are still studying these medicines.', 13),
(67, 'There is no treatment for measles. Once a person is infected, the virus must run its course (usually 10 to 14 days). Bed rest, acetaminophen, and other medications are often recommended or given to help treat symptoms.', 14),
(68, 'There\'s no specific treatment for an established measles infection. However, some measures can be taken to protect vulnerable individuals who have been exposed to the virus.\r\n\r\n1)Post-exposure vaccination- Nonimmunized people, including infants, may be given the measles vaccination within 72 hours of exposure to the measles virus to provide protection against the disease. If measles still develops, the illness usually has milder symptoms and lasts for a shorter time.\r\n2)Immune serum globulin- Pregnant women, infants and people with weakened immune systems who are exposed to the virus may receive an injection of proteins (antibodies) called immune serum globulin. When given within six days of exposure to the virus, these antibodies can prevent measles or make symptoms less severe.', 14),
(69, 'The treatment depends on the type of meningitis you or your child has.', 15),
(70, '<b>Bacterial meningitis</b>\r\n\r\nAcute bacterial meningitis must be treated immediately with intravenous antibiotics and sometimes corticosteroids. This helps to ensure recovery and reduce the risk of complications, such as brain swelling and seizures.\r\n\r\nThe antibiotic or combination of antibiotics depends on the type of bacteria causing the infection. Your doctor may recommend a broad-spectrum antibiotic until he or she can determine the exact cause of the meningitis.\r\n\r\nYour doctor may drain any infected sinuses or mastoids — the bones behind the outer ear that connect to the middle ear.', 15),
(71, 'Viral meningitis\r\n\r\nAntibiotics can\'t cure viral meningitis, and most cases improve on their own in several weeks. Treatment of mild cases of viral meningitis usually includes:\r\n-Bed rest\r\n-Plenty of fluids\r\n-Over-the-counter pain medications to help reduce fever and relieve body aches\r\n\r\nYour doctor may prescribe corticosteroids to reduce swelling in the brain, and an anticonvulsant medication to control seizures. If a herpes virus caused your meningitis, an antiviral medication is available.', 15),
(72, 'Other types of meningitis\r\n\r\nIf the cause of your meningitis is unclear, your doctor may start antiviral and antibiotic treatment while the cause is determined.\r\n\r\nTreatment for chronic meningitis is based on the underlying cause. Antifungal medications treat fungal meningitis, and a combination of specific antibiotics can treat tuberculous meningitis. However, these medications can have serious side effects, so treatment may be deferred until a laboratory can confirm that the cause is fungal.\r\n\r\nNoninfectious meningitis due to allergic reaction or autoimmune disease may be treated with corticosteroids. In some cases, no treatment may be required because the condition can resolve on its own. Cancer-related meningitis requires therapy for the specific cancer.', 15),
(73, 'Treatment to prevent hepatitis B infection after exposure\r\n\r\nIf you know you\'ve been exposed to the hepatitis B virus and aren\'t sure if you\'ve been vaccinated, call your doctor immediately. An injection of immunoglobulin (an antibody) given within 12 hours of exposure to the virus may help protect you from getting sick with hepatitis B. Because this treatment only provides short-term protection, you also should get the hepatitis B vaccine at the same time, if you never received it.\r\n\r\nTreatment for acute hepatitis B infection\r\n\r\nIf your doctor determines your hepatitis B infection is acute — meaning it is short-lived and will go away on its own — you may not need treatment. Instead, your doctor might recommend rest, proper nutrition and plenty of fluids while your body fights the infection. In severe cases, antiviral drugs or a hospital stay is needed to prevent complications.\r\n\r\nTreatment for chronic hepatitis B infection\r\n\r\nMost people diagnosed with chronic hepatitis B infection need treatment for the rest of their lives. Treatment helps reduce the risk of liver disease and prevents you from passing the infection to others. Treatment for chronic hepatitis B may include:', 16),
(74, '-Antiviral medications: Several antiviral medications — including entecavir (Baraclude), tenofovir (Viread), lamivudine (Epivir), adefovir (Hepsera) and telbivudine (Tyzeka) — can help fight the virus and slow its ability to damage your liver. These drugs are taken by mouth. Talk to your doctor about which medication might be right for you.\r\n\r\n-Interferon injections: Interferon alfa-2b (Intron A) is a man-made version of a substance produced by the body to fight infection. It\'s used mainly for young people with hepatitis B who wish to avoid long-term treatment or women who might want to get pregnant within a few years, after completing a finite course of therapy. Interferon should not be used during pregnancy. Side effects may include nausea, vomiting, difficulty breathing and depression.\r\n\r\n-Liver transplant: If your liver has been severely damaged, a liver transplant may be an option. During a liver transplant, the surgeon removes your damaged liver and replaces it with a healthy liver. Most transplanted livers come from deceased donors, though a small number come from living donors who donate a portion of their livers.', 16),
(75, 'Antiviral medications\r\n\r\nHepatitis C infection is treated with antiviral medications intended to clear the virus from your body. The goal of treatment is to have no hepatitis C virus detected in your body at least 12 weeks after you complete treatment.\r\n\r\nResearchers have recently made significant advances in treatment for hepatitis C using new, \"direct-acting\" antiviral medications, sometimes in combination with existing ones. As a result, people experience better outcomes, fewer side effects and shorter treatment times — some as short as eight weeks. The choice of medications and length of treatment depend on the hepatitis C genotype, presence of existing liver damage, other medical conditions and prior treatments.\r\n\r\nDue to the pace of research, recommendations for medications and treatment regimens are changing rapidly. It is therefore best to discuss your treatment options with a specialist.\r\n\r\nThroughout treatment your care team will monitor your response to medications.', 17),
(76, 'Liver transplantation\r\n\r\nIf you have developed serious complications from chronic hepatitis C infection, liver transplantation may be an option. During liver transplantation, the surgeon removes your damaged liver and replaces it with a healthy liver. Most transplanted livers come from deceased donors, though a small number come from living donors who donate a portion of their livers.\r\n\r\nIn most cases, a liver transplant alone doesn\'t cure hepatitis C. The infection is likely to return, requiring treatment with antiviral medication to prevent damage to the transplanted liver. Several studies have demonstrated that new, direct-acting antiviral medication regimens are effective at curing post-transplant hepatitis C. At the same time, treatment with direct-acting antivirals can be achieved in appropriately selected patients before liver transplantation.', 17),
(77, 'Vaccinations\r\n\r\nAlthough there is no vaccine for hepatitis C, your doctor will likely recommend that you receive vaccines against the hepatitis A and B viruses. These are separate viruses that also can cause liver damage and complicate the course of chronic hepatitis C.', 17),
(78, 'Because mumps is a virus, it doesn’t respond to antibiotics or other medications. However, you can treat the symptoms to make yourself more comfortable while you’re sick. These include:\r\n-Rest when you feel weak or tired.\r\n-Take over-the-counter pain relievers, such as acetaminophen and ibuprofen, to bring down your fever.\r\n-Soothe swollen glands by applying ice packs.\r\n-Drink plenty of fluids to avoid dehydration due to fever.\r\n-Eat a soft diet of soup, yogurt, and other foods that aren’t hard to chew (chewing may be painful when your glands are swollen).\r\n-Avoid acidic foods and beverages that may cause more pain in your salivary glands.\r\n\r\nYou can usually return to work or school about one week after a doctor diagnoses your mumps, if you feel up to it. By this point, you’re no longer contagious. Mumps usually runs its course in a couple of weeks. Ten days into your illness, you should be feeling better.\r\n\r\nMost people who get mumps can’t contract the disease a second time. Having the virus once protects you against becoming infected again.', 18),
(79, 'There is no formal treatment for hepatitis A. Because it’s a short-term viral infection that goes away on its own, treatment is typically focused on reducing your symptoms.', 19),
(80, 'Hepatitis A treatment usually focuses on keeping comfortable and controlling signs and symptoms. You may need to:\r\n\r\n-Rest. Many people with hepatitis A infection feel tired and sick and have less energy.\r\n-Manage nausea. Nausea can make it difficult to eat. Try snacking throughout the day rather than eating full meals. To get enough calories, eat more high-calorie foods. For instance, drink fruit juice or milk rather than water. Drinking plenty of fluids is important to prevent dehydration if vomiting occurs.\r\n-Avoid alcohol and use medications with care. Your liver may have difficulty processing medications and alcohol. If you have hepatitis, don\'t drink alcohol. It can cause more liver damage. Talk to your doctor about all the medications you take, including over-the-counter drugs.', 19),
(81, 'Symptoms of Salmonella-induced gastroenteritis usually disappear without treatment after 4–7 days.', 20),
(82, 'Because salmonella infection can be dehydrating, treatment focuses on replacing fluids and electrolytes. Severe cases may require hospitalization and fluids delivered directly into a vein (intravenous).', 20),
(83, 'Treatments may include:\r\n\r\n-fluids to prevent dehydration.\r\n-antimotility drugs to reduce cramping and stop diarrhea\r\n-antibiotics for severe symptoms or if bacteria have entered the bloodstream or are likely to do so', 20),
(84, 'In addition, your doctor may recommend:\r\n\r\n1)Anti-diarrheals- Medications such as loperamide (Imodium A-D) can help relieve cramping, but they may also prolong the diarrhea associated with salmonella infection.\r\n\r\n2)Antibiotics- If your doctor suspects that salmonella bacteria have entered your bloodstream, or if you have a severe case or a compromised immune system, he or she may prescribe antibiotics to kill the bacteria. Antibiotics are not of benefit in uncomplicated cases. In fact, antibiotics may prolong the period in which you carry the bacteria and can infect others, and they can increase your risk of relapse.', 20),
(85, 'Children and adults who have giardia infection without symptoms usually don\'t need treatment unless they\'re likely to spread the parasites. Many people who do have problems often get better on their own in a few weeks.', 21),
(86, 'When signs and symptoms are severe or the infection persists, doctors usually treat giardiasis with medications such as:\r\n\r\n-Metronidazole (Flagyl)- Metronidazole is the most commonly used antibiotic for giardia infection. Side effects may include nausea and a metallic taste in the mouth. Don\'t drink alcohol while taking this medication.\r\n\r\nTinidazole (Tindamax)- Tinidazole works as well as metronidazole and has many of the same side effects, but it can be given in a single dose.\r\n\r\n-Nitazoxanide (Alinia)- Because it comes in a liquid form, nitazoxanide may be easier for children to swallow. Side effects may include nausea, flatulence, yellow eyes and brightly colored yellow urine.', 21),
(87, 'There are no consistently recommended medications for giardiasis in pregnancy because of the potential for adverse drug effects to the baby. If your symptoms are mild, your doctor may recommend delaying treatment until after the first trimester. If treatment is necessary, discuss the best available treatment option with your doctor.', 21),
(88, 'Antibiotics are used to treat Lyme disease. In general, recovery will be quicker and more complete the sooner treatment begins.\r\n\r\nAntibiotics\r\n  Oral antibiotics- These are the standard treatment for early-stage Lyme disease. These usually include doxycycline for adults and children older than 8, or amoxicillin or cefuroxime for adults, younger children, and pregnant or breast-feeding women.\r\nA 14- to 21-day course of antibiotics is usually recommended, but some studies suggest that courses lasting 10 to 14 days are equally effective.\r\n  Intravenous antibiotics- If the disease involves the central nervous system, your doctor might recommend treatment with an intravenous antibiotic for 14 to 28 days. This is effective in eliminating infection, although it may take you some time to recover from your symptoms.\r\n\r\nIntravenous antibiotics can cause various side effects, including a lower white blood cell count, mild to severe diarrhea, or colonization or infection with other antibiotic-resistant organisms unrelated to Lyme.', 22),
(89, 'After treatment, a small number of people still have some symptoms, such as muscle aches and fatigue. The cause of these continuing symptoms, known as post-Lyme disease syndrome, is unknown, and treating with more antibiotics doesn\'t help.\r\n\r\nSome experts believe that certain people who get Lyme disease are predisposed to develop an autoimmune response that contributes to their symptoms. More research is needed.', 22),
(90, 'Symptoms of Ebola virus disease (EVD) are treated as they appear. When used early, basic interventions can significantly improve the chances of survival. These include:\r\n\r\n-Providing fluids and electrolytes (body salts) through infusion into the vein (intravenously).\r\n\r\n-Offering oxygen therapy to maintain oxygen status.\r\n\r\n-Using medication to support blood pressure, reduce vomiting and diarrhea and to manage fever and pain.\r\n\r\n-Treating other infections, if they occur.', 23),
(91, 'Because no cure for polio exists, the focus is on increasing comfort, speeding recovery and preventing complications. Supportive treatments include:\r\n\r\n-Pain relievers\r\n\r\n-Portable ventilators to assist breathing\r\n\r\n-Moderate exercise (physical therapy) to prevent deformity and loss of muscle function', 24),
(92, 'Scabies treatment involves eliminating the infestation with medications. Several creams and lotions are available with a doctor\'s prescription.\r\n\r\nYour doctor will likely ask you to apply the medication to your whole body, from the neck down, and leave the medication on for at least eight to 10 hours. Some treatments require a second application, and treatments need to be repeated if new burrows and a rash appear.\r\n\r\nBecause scabies spreads so easily, your doctor will likely recommend treatment for all household members and other close contacts, even if they show no signs of scabies infestation.\r\n\r\nMedications commonly prescribed for scabies include:\r\n', 25),
(93, '1.Permethrin cream (Elimite). Permethrin is a topical cream that contains chemicals that kill scabies mites and their eggs. It is generally considered safe for adults, pregnant women, and children ages 2 months and older.\r\n\r\n2.Lindane lotion. This medication — also a chemical treatment — is recommended only for people who can\'t tolerate other approved treatments or for whom other treatments didn\'t work. This medication isn\'t safe for children younger than age 10 years, women who are pregnant or nursing, or anyone who weighs less than 110 pounds (50 kilograms).\r\n\r\n3.Crotamiton (Eurax). This medication is available as a cream or a lotion. It\'s applied once a day for two days. The safety of this medication hasn\'t been established in children, adults 65 and older, or women who are pregnant or nursing. Frequent treatment failure has been reported with crotamiton.\r\n\r\n4.Ivermectin (Stromectol). Doctors may prescribe this oral medication for people with altered immune systems, for people who have crusted scabies, or for people who don\'t respond to the prescription lotions and creams. Ivermectin isn\'t recommended for women who are pregnant or nursing, or for children who weigh less than 33 pounds (15 kilograms).', 25),
(94, 'Although these medications kill the mites promptly, you may find that the itching doesn\'t stop entirely for several weeks.\r\n\r\nDoctors may prescribe other topical medications, such as sulfur compounded in petrolatum, for people who don\'t respond to or can\'t use these medications.', 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` tinytext NOT NULL,
  `user_email` tinytext NOT NULL,
  `user_pass` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `checks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `created_at`, `checks`) VALUES
(1, 'kunal', 'kunal@gmail.com', '$2y$10$WvssWabTJQ9.azwtMBppIOTXovUSQfnWuxGehtXLAQmYUDrwjorka', '2020-05-30 18:30:00', 0),
(2, 'karan', 'karan@gmail.com', '$2y$10$0pd2rqRbxOPjyT1BpKbowOoPGUJdaHMUKMddYOlTcIVpMzOLJGTRy', '2020-05-30 18:30:00', 0),
(3, 'test', 'test@test.com', '$2y$10$RQJmaX8l5Iq.EkHdV6CQmewHSMMco3naEILo/IPHNQDKUGCLH2.kO', '2020-05-31 16:47:32', 0),
(4, 'testuser', 'testuser@gmail.com', '$2y$10$5GrE24FI8efYt8ZaYdSd2OOw3rhOjW0eHMtxSU.DLVNIIc0Eaangu', '2020-05-31 16:54:18', 0),
(5, 'user1', 'user1@user.com', '$2y$10$qUAC/FujWuC84H2uHyWSrumqdmJKQoOobZFLP2FuPLbNpM5Q4xXVG', '2020-05-31 16:57:30', 0),
(6, 'newuser', 'new@new.com', '$2y$10$3kImlOHW62LNguJRcffcpuQuOWQZ4L4ELDeAxhHGcYDsqEr9GvmI6', '2020-06-01 14:15:57', 0),
(7, 'sarojkumar', 'saroj@gmail.com', '$2y$10$X9CffkSrNMA4VpUNPsK8q.rula2j8zD1ccv1e/4OLuqBG.ZBJVxFW', '2020-06-02 19:28:24', 0),
(8, 'admin', 'admin@gmail.com', '$2y$10$Giotfd/.95HvkS1TBHjjBOgW1eQZL2ijxxY/Fqb9jaxbos9lz9ErW', '2020-06-02 19:46:34', 0),
(9, 'majorII', 'major@gmail.com', '$2y$10$UQ.DEq1eem9IWLvjfGVKzeDdQ2z8TzZMuczN65..GPYWw2DtJ6EyW', '2020-06-03 17:09:32', 0),
(10, 'prashant', 'prashant@gmail.com', '$2y$10$lzgzAhzESVIeCujPiJRVj.lLo58S15dSBpD.VDUMRVauH2wnQCmgi', '2020-06-03 20:02:54', 0),
(11, 'tarun', 'tarun@test.com', '$2y$10$6eJPxKhnd3HI7VC5ENqADONrPFkLqgYBKOXTX/NkXqbrGzXDAHXc.', '2020-06-04 04:11:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_checks`
--

CREATE TABLE `user_checks` (
  `check_id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_symptoms` varchar(500) NOT NULL,
  `user_disease` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_checks`
--

INSERT INTO `user_checks` (`check_id`, `user_id`, `user_symptoms`, `user_disease`, `created_at`) VALUES
(3, 3, '[\"fatigue\",\"sneezing\",\"dark urine\",\"dehydration\",\"stiff jaw\",\"stiff neck\",\"runny nose\",\"loss of appetite\"]', '', '2020-05-31 18:32:57'),
(4, 3, '[\"fatigue\",\"sneezing\",\"dark urine\",\"dehydration\",\"stiff jaw\",\"stiff neck\",\"runny nose\",\"loss of appetite\"]', '', '2020-05-31 18:32:58'),
(5, 3, '[\"rashes\",\"weight loss\",\"dehydration\",\"stiff jaw\",\"stiff neck\",\"back pain\",\"diarrhoea\"]', 'chicken pox', '2020-05-31 18:39:40'),
(6, 5, '[\"fatigue\",\"abdominal pain\",\"headache\",\"rashes\",\"cough\",\"sore throat\",\"weakness\",\"stiff neck\",\"stiff jaw\"]', 'influenza', '2020-05-31 18:57:14'),
(7, 5, '[\"fever\",\"sore throat\",\"runny nose\",\"dehydration\",\"shortness of breath\",\"bloating\",\"lethargy\",\"weight loss\",\"vomiting\"]', 'whooping cough', '2020-05-31 19:05:30'),
(8, 7, '[\"fatigue\",\"weakness\",\"stiff neck\",\"stiff jaw\",\"dehydration\",\"runny nose\",\"dark urine\",\"shortness of breath\",\"itching\",\"lethargy\",\"cough\",\"rashes\"]', 'whooping cough', '2020-06-02 19:36:36'),
(9, 7, '[\"weakness\",\"stiff neck\",\"stiff jaw\",\"dehydration\",\"dark urine\",\"shortness of breath\",\"itching\",\"fatigue\"]', 'whooping cough', '2020-06-02 19:41:08'),
(10, 7, '[\"weakness\",\"stiff neck\",\"stiff jaw\",\"dehydration\",\"dark urine\",\"shortness of breath\",\"itching\",\"fatigue\"]', 'tetanus', '2020-06-02 19:41:08'),
(11, 9, '[\"fatigue\",\"weakness\",\"stiff neck\",\"stiff jaw\",\"dehydration\",\"dark urine\",\"shortness of breath\",\"itching\"]', 'tetanus', '2020-06-03 17:13:53'),
(12, 9, '[\"fatigue\",\"fever\",\"abdominal pain\",\"headache\",\"cough\",\"rashes\",\"vomiting\",\"weight loss\",\"loss of appetite\",\"nausea\",\"muscle pain\"]', 'whooping cough', '2020-06-03 17:19:56'),
(13, 10, '[\"weakness\",\"stiff neck\",\"stiff jaw\",\"dehydration\",\"dark urine\",\"shortness of breath\",\"itching\",\"vomiting\",\"headache\"]', 'tetanus', '2020-06-03 20:07:37'),
(14, 11, '[\"tenderness\",\"ulcers\",\"irritable\",\"greasy stools\",\"dark urine\",\"stiff neck\",\"stiff jaw\",\"itching\",\"body aches\"]', 'tetanus', '2020-06-04 04:13:34'),
(15, 11, '[\"abdominal pain\",\"sore throat\",\"runny nose\",\"dehydration\",\"stiff jaw\",\"stiff neck\",\"itching\",\"dry mouth\",\"fast breathing\"]', 'tetanus', '2020-06-04 04:14:40'),
(16, 11, '[\"sore throat\",\"abdominal pain\",\"fatigue\",\"fever\",\"diarrhoea\",\"chills\",\"joint pain\",\"back pain\",\"body aches\"]', 'influenza', '2020-06-04 04:15:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `can_have`
--
ALTER TABLE `can_have`
  ADD PRIMARY KEY (`dis_id`,`symp_id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `preventions`
--
ALTER TABLE `preventions`
  ADD PRIMARY KEY (`prevention_id`),
  ADD KEY `disease_id` (`for_disease`);

--
-- Indexes for table `remedies`
--
ALTER TABLE `remedies`
  ADD PRIMARY KEY (`remedy_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`symp_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_checks`
--
ALTER TABLE `user_checks`
  ADD PRIMARY KEY (`check_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preventions`
--
ALTER TABLE `preventions`
  MODIFY `prevention_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `remedies`
--
ALTER TABLE `remedies`
  MODIFY `remedy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `symp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_checks`
--
ALTER TABLE `user_checks`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
