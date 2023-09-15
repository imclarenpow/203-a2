 -- inserts conservation status names/colours
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (1, "Not Threatened", "#02a028");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (2, "Naturally Uncommon", "#649a31");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (3, "Relict", "#99cb68");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (4, "Recovering", "#fecc33");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (5, "Declining", "#fe9a01");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (6, "Nationally Increasing", "#c26967");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (7, "Nationally Vulnerable", "#9b0000");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (8, "Nationally Endangered", "#660032");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (9, "Nationally Critical", "#320033");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (10, "Extinct", "#000000");
INSERT INTO ConservationStatus (status_id, status_name, status_colour) VALUES (11, "Data Deficient", "#000000");

-- Insert Hihi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (1, "Hihi", "Stitchbird", "Notiomystis cincta", "Passeriformes", "Notiomystidae", "33", "18", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (1, "stitchbird-2.jpg", "Tony Whitehead");

-- Insert Hoiho into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (2, "Hoiho", "Yellow-eyed penguin", "Megadyptes antipodes", "Sphenisciformes", "Spheniscidae", "5000", "65", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (2, "yellow-eyed-penguin-2.jpg", "Craig McKenzie");

-- Insert Kakaruai into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (3, "Kakaruai", "South Island robin", "Petroica australis", "Passeriformes", "Petroicidae", "35", "18", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (3, "south-island-robin-7.jpg", "Sabine Bernert");

-- Insert Kakī into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (4, "Kakī", "Black stilt", "Himantopus novaezelandiae", "Charadriiformes", "Recurvirostridae", "220", "40", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (4, "black-stilt-4.jpg", "Craig McKenzie");

-- Insert Karure into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (5, "Karure", "Black robin", "Petroica traversi", "Passeriformes", "Petroicidae", "23", "15", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (5, "black-robin-1.jpg", "David Boyle");

-- Insert Kawau o Motu Maha into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (6, "Kawau o Motu Maha", "Auckland Island Shag", "Leucocarbo colensoi", "Suliformes", "Phalacrocoracidae", "2000", "63", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (6, "auckland-island-shag-14.jpg", "DOC John Kendrick");

-- Insert Kawau o Rangihaute into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (7, "Kawau o Rangihaute", "Pitt Island shag", "Phalacrocorax featherstoni", "Suliformes", "Phalacrocoracidae", "1000", "63", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (7, "pitt-island-shag-6.jpg", "Mark Fraser");

-- Insert Kawau pāteketeke into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (8, "Kawau pāteketeke", "King shag", "Leucocarbo carunculatus", "Suliformes", "Phalacrocoracidae", "2500", "76", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (8, "king-shag-5.jpg", "Mennobart Van Eerden");

-- Insert Kawau tikitiki into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (9, "Kawau tikitiki", "Spotted shag", "Phalacrocorax punctatus", "Suliformes", "Phalacrocoracidae", "950", "69", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (9, "spotted-shag-12.jpg", "Steve Attwood");

-- Insert Kea into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (10, "Kea", "Kea", "Nestor notabilis", "Psittaciformes", "Strigopidae", "900", "46", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (10, "kea-13.jpg", "Mark Fraser");

-- Insert Kererū into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (11, "Kererū", "New Zealand pigeon", "Hemiphaga novaeseelandiae", "Columbiformes", "Columbidae", "630", "50", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (11, "new-zealand-pigeon-1.jpg", "Ormond Torr");

-- Insert Kiwi pukupuku into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Increasing" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (12, "Kiwi pukupuku", "Little spotted kiwi", "Apteryx owenii", "Apterygiformes", "Apterygidae", "1250", "30", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (12, "little-spotted-kiwi-9.jpg", "Andrew Digby");

-- Insert Kiwi-nui into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (13, "Kiwi-nui", "North Island brown kiwi", "Apteryx mantelli", "Apterygiformes", "Apterygidae", "2350", "40", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (13, "north-island-brown-kiwi-1.jpg", "DOC Rod Morris");

-- Insert Koekoeā into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (14, "Koekoeā", "Long-tailed cuckoo", "Eudynamys taitensis", "Cuculiformes", "Cuculidae", "125", "40", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (14, "long-tailed-cuckoo-1.jpg", "Adam Clarke");

-- Insert Korimako into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (15, "Korimako", "Bellbird", "Anthornis melanura", "Passeriformes", "Meliphagidae", "30", "20", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (15, "bellbird-4.jpg", "Neil Fitzgerald");

-- Insert Kororā into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (16, "Kororā", "Little Penguin", "Eudyptula minor", "Sphenisciformes", "Spheniscidae", "1000", "33", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (16, "little-penguin-2.jpg", "Craig McKenzie");

-- Insert Kākā into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (17, "Kākā", "Kaka", "Nestor meridionalis", "Psittaciformes", "Strigopidae", "370", "41", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (17, "kaka-30.jpg", "Judi Lapsley Miller");

-- Insert Kākāpō into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (18, "Kākāpō", "Kakapo", "Strigops habroptila", "Psittaciformes", "Strigopidae", "2500", "61", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (18, "kakapo-3.jpg", "Colin Miskelly");

-- Insert Kākāriki into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (19, "Kākāriki", "Yellow-crowned parakeet", "Cyanoramphus auriceps", "Psittaciformes", "Psittaculidae", "46", "25", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (19, "yellow-crowned-parakeet-11.jpg", "Peter Reese");

-- Insert Kākāriki karaka into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (20, "Kākāriki karaka", "Orange-fronted parakeet", "Cyanoramphus malherbi", "Psittaciformes", "Psittaculidae", "41", "20", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (20, "orange-fronted-parakeet-6.jpg", "John Kearvell");

-- Insert Kārearea into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (21, "Kārearea", "New Zealand falcon", "Falco novaeseelandiae", "Falconiformes", "Falconidae", "426", "45", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (21, "new-zealand-falcon-9.jpg", "Craig McKenzie");

-- Insert Kōkako into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Increasing" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (22, "Kōkako", "North Island Kokako", "Callaeas wilsoni", "Passeriformes", "Callaeidae", "225", "38", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (22, "north-island-kokako-5.jpg", "Banded dotterel");

-- Insert Kōkā into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Data Deficient" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (23, "Kōkā", "South Island kokako", "Callaeas cinerea", "Passeriformes", "Callaeidae", "224", "38", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (23, "south-island-kokako-2.jpg", "Te_Papa George Edward");

-- Insert Kōtare into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (24, "Kōtare", "Sacred Kingfisher", "Todiramphus sanctus", "Coraciiformes", "Halcyonidae", "55", "23", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (24, "sacred-kingfisher-4.jpg", "Ormond Torr");

-- Insert Kōtuku into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (25, "Kōtuku", "White heron", "Ardea alba Linnaeus", "Pelecaniformes", "Ardeidae", "950", "93", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (25, "white-heron-5.jpg", "Adam Clarke");

-- Insert Matapo into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (26, "Matapo", "Stewart Island shag", "Leucocarbo chalconotus", "Suliformes", "Phalacrocoracidae", "2500", "68", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (26, "stewart-island-shag-1.jpg", "Philip Griffin");

-- Insert Matuku moana into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (27, "Matuku moana", "White-faced heron", "Egretta novaehollandiae", "Pelecaniformes", "Ardeidae", "550", "67", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (27, "white-faced-heron-1.jpg", "Adam Clarke");

-- Insert Miromiro into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (28, "Miromiro", "Tomtit", "Petroica macrocephala", "Passeriformes", "Petroicidae", "11", "13", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (28, "tomtit-1.jpg", "Albert Aanensen");

-- Insert Mohua into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (29, "Mohua", "Yellowhead", "Mohoua ochrocephala", "Passeriformes", "Mohouidae", "28", "15", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (29, "yellowhead-1.jpg", "Glenda Rees");

-- Insert Mātātā into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (30, "Mātātā", "Fernbird", "Poodytes punctatus", "Passeriformes", "Locustellidae", "35", "18", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (30, "fernbird-6.jpg", "Adam Clarke");

-- Insert Ngutu pare into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Increasing" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (31, "Ngutu pare", "Wrybill", "Anarhynchus frontalis", "Charadriiformes", "Charadriidae", "55", "20", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (31, "wrybill-11.jpg", "Tony Whitehead");

-- Insert Papua into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (32, "Papua", "Chatham Island shag", "Leucocarbo onslowi", "Suliformes", "Phalacrocoracidae", "2250", "63", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (32, "chatham-island-shag-9.jpg", "Alan Tennyson");

-- Insert Pāpango into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (33, "Pāpango", "New Zealand scaup", "Aythya novaeseelandiae", "Anseriformes", "Anatidae", "652", "40", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (33, "new-zealand-scaup-2.jpg", "Tony Whitehead");

-- Insert Pāteke into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (34, "Pāteke", "Brown teal", "Anas chlorotis", "Anseriformes", "Anatidae", "615", "48", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (34, "brown-teal-3.jpg", "Les Feasey");

-- Insert Pīhoihoi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Naturally Uncommon" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (35, "Pīhoihoi", "New Zealand Pipit", "Anthus novaeseelandiae", "Passeriformes", "Motacillidae", "35", "18", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (35, "new-zealand-pipit-2.jpg", "Duncan Watson");

-- Insert Pīpipi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (36, "Pīpipi", "Brown creeper", "Mohoua novaeseelandiae", "Passeriformes", "Mohouidae", "12", "13", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (36, "brown-creeper-10.jpg", "Craig McKenzie");

-- Insert Pīwakawaka into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (37, "Pīwakawaka", "New Zealand fantail", "Rhipidura fuliginosa", "Passeriformes", "Rhipiduridae", "8", "16", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (37, "fantail-1.jpg", "Cheryl Marriner");

-- Insert Pīwauwau into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (38, "Pīwauwau", "Rock wren", "Xenicus gilviventris", "Passeriformes", "Acanthisittidae", "18", "10", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (38, "rock-wren-3.jpg", "Suzi Phillips");

-- Insert Pōpokotea into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (39, "Pōpokotea", "Whitehead", "Mohoua albicilla", "Passeriformes", "Mohouidae", "16", "15", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (39, "whitehead-4.jpg", "Jared Le Roy");

-- Insert Pūkeko into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (40, "Pūkeko", "Pukeko", "Porphyrio melanotus", "Gruiformes", "Rallidae", "985", "44", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (40, "pukeko-8.jpg", "Peter Reese");

-- Insert Pūtangitangi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (41, "Pūtangitangi", "Paradise shelduck", "Tadorna variegata", "Anseriformes", "Anatidae", "1550", "66", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (41, "paradise-shelduck-12.jpg", "Peter Reese");

-- Insert Riroriro into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (42, "Riroriro", "Grey warbler", "Gerygone igata", "Passeriformes", "Acanthizidae", "6", "11", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (42, "grey-warbler-2.jpg", "Craig McKenzie");

-- Insert Roroa into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (43, "Roroa", "Great spotted kiwi", "Apteryx maxima", "Apterygiformes", "Apterygidae", "2600", "45", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (43, "great-spotted-kiwi-2.jpg", "DOC Rod Morris");

-- Insert Rowi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (44, "Rowi", "Okarito brown kiwi", "Apteryx rowi", "Apterygiformes", "Apterygidae", "2250", "40", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (44, "okarito-brown-kiwi-1.jpg", "Chrissy Wicks");

-- Insert Ruru into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (45, "Ruru", "Morepork", "Ninox novaeseelandiae", "Strigiformes", "Strigidae", "175", "29", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (45, "morepork-3.jpg", "Duncan Watson");

-- Insert Takahē into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (46, "Takahē", "Takahe", "Porphyrio hochstetteri", "Gruiformes", "Rallidae", "2750", "50", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (46, "takahe-31.jpg", "Cheryl Marriner");

-- Insert Tarapirohe into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Endangered" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (47, "Tarapirohe", "Black-fronted tern", "Chlidonias albostriatus", "Charadriiformes", "Laridae", "95", "28", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (47, "black-fronted-tern-29.jpg", "Steve Attwood");

-- Insert Tarāpuka into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (48, "Tarāpuka", "Black-billed gull", "Chroicocephalus bulleri", "Charadriiformes", "Laridae", "230", "36", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (48, "black-billed-gull-5.jpg", "John Flux");

-- Insert Tarāpunga into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (49, "Tarāpunga", "Red-billed gull", "Chroicocephalus novaehollandiae", "Charadriiformes", "Laridae", "280", "37", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (49, "red-billed-gull-25.jpg", "Albert Aanensen");

-- Insert Tauhou into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (50, "Tauhou", "Silvereye", "Zosterops lateralis", "Passeriformes", "Zosteropidae", "13", "12", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (50, "silvereye-1.jpg", "Tony Whitehead");

-- Insert Tawaki into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (51, "Tawaki", "Fiordland crested penguin", "Eudyptes pachyrhynchus", "Sphenisciformes", "Spheniscidae", "4000", "60", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (51, "fiordland-crested-penguin-25.jpg", "Douglas Gimesy");

-- Insert Tokoeka into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Naturally Uncommon" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (52, "Tokoeka", "Southern brown kiwi", "Apteryx australis", "Apterygiformes", "Apterygidae", "2750", "45", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (52, "southern-brown-kiwi-5.jpg", "DOC John Kendrick");

-- Insert Toroa into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (53, "Toroa", "Southern Royal Albatross", "Diomedea epomophora", "Procellariiformes", "Diomedeidae", "9000", "120", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (53, "southern-royal-albatross-3.jpg", "Alan Tennyson");

-- Insert Toutouwai into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (54, "Toutouwai", "North Island robin", "Petroica longipes", "Passeriformes", "Petroicidae", "35", "18", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (54, "north-island-robin-7.jpg", "Duncan Watson");

-- Insert Tutukiwi into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Naturally Uncommon" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (55, "Tutukiwi", "Snares Island snipe", "Coenocorypha huegeli", "Charadriiformes", "Scolopacidae", "109", "22", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (55, "snares-island-snipe-5.jpg", "DOC Rod Morris");

-- Insert Tuturuatu into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (56, "Tuturuatu", "Shore plover", "Thinornis novaeseelandiae", "Charadriiformes", "Charadriidae", "61", "20", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (56, "shore-plover-1.jpg", "DOC Don Merton");

-- Insert Tētē kākāriki into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (57, "Tētē kākāriki", "Auckland island teal", "Anas aucklandica", "Anseriformes", "Anatidae", "485", "45", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (57, "auckland-island-teal-6.jpg", "Kate Bee");

-- Insert Tīeke into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Relict" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (58, "Tīeke", "North Island saddleback", "Philesturnus rufusater", "Passeriformes", "Callaeidae", "70", "25", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (58, "north-island-saddleback-11.jpg", "Tony Whitehead");

-- Insert Tīeke into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (59, "Tīeke", "South Island saddleback", "Philesturnus carunculatus", "Passeriformes", "Callaeidae", "75", "25", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (59, "south-island-saddleback-1.jpg", "Duncan Watson");

-- Insert Tītitipounamu into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (60, "Tītitipounamu", "Rifleman", "Acanthisitta chloris", "Passeriformes", "Acanthisittidae", "6", "8", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (60, "rifleman-13.jpg", "Glenda Rees");

-- Insert Tōrea into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (61, "Tōrea", "South Island pied oystercatcher", "Haematopus finschi", "Charadriiformes", "Haematopodidae", "550", "46", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (61, "south-island-pied-oystercatcher-1.jpg", "Craig McKenzie");

-- Insert Tōrea pango into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (62, "Tōrea pango", "Variable oystercatcher", "Haematopus unicolor", "Charadriiformes", "Haematopodidae", "720", "48", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (62, "variable-oystercatcher-5.jpg", "Ormond Torr");

-- Insert Tōrea tai into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Critical" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (63, "Tōrea tai", "Chatham Island oystercatcher", "Haematopus chathamensis", "Charadriiformes", "Haematopodidae", "600", "48", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (63, "chatham-island-oystercatcher-4.jpg", "Alan Tennyson");

-- Insert Tūturiwhatu into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Declining" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (64, "Tūturiwhatu", "Banded dotterel", "Charadrius bicinctus", "Charadriiformes", "Charadriidae", "60", "20", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (64, "banded-dotterel-3.jpg", "Ormond Torr");

-- Insert Tūturiwhatu into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Recovering" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (65, "Tūturiwhatu", "New Zealand dotterel", "Charadrius obscurus", "Charadriiformes", "Charadriidae", "153", "25", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (65, "new-zealand-dotterel-1.jpg", "Tony Whitehead");

-- Insert Tūī into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (66, "Tūī", "Tui", "Prosthemadera novaeseelandiae", "Passeriformes", "Meliphagidae", "107", "30", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (66, "tui-2.jpg", "Neil Fitzgerald");

-- Insert Weka into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Not Threatened" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (67, "Weka", "Weka", "Gallirallus australis", "Gruiformes", "Rallidae", "915", "55", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (67, "weka-2.jpg", "Les Feasey");

-- Insert Whio into Bird Table. 
SELECT status_id FROM ConservationStatus WHERE status_name = "Nationally Vulnerable" INTO @status_id;
INSERT INTO Bird (bird_id, primary_name, english_name, scientific_name, order_name, family, weight, length, status_id)
VALUES (68, "Whio", "Blue duck", "Hymenolaimus malacorhynchos", "Anseriformes", "Anatidae", "835", "52", @status_id);
INSERT INTO Photos (bird_id, filename, photographer) VALUES (68, "blue-duck-5.jpg", "Les Feasey");
