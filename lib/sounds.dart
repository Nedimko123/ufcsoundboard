var saved = [];
var songs = [
  {
    "title": "ufctitlefightweighin",
    "link": "titlef.mp3",
    "desc": "Title Fight Weigh in"
  },
  {"title": "weighin4", "link": "weighin4.mp3", "desc": "Weigh in 1"},
  {"title": "weighin1", "link": "weighin1.mp3", "desc": "Weigh in 2"},
  {"title": "weighin3", "link": "weighin3.mp3", "desc": "Weigh in 3"},
  {"title": "weighin2", "link": "weighin2.mp3", "desc": "Weigh in 4"},
  {"title": "weighin5", "link": "weighin5.mp3", "desc": "Weigh in 5"},
  {
    "title": "lacandela1",
    "link": "lacandela1.mp3",
    "desc": "Romero La Candela"
  },
];
var soundBoard = [
  {
    "title": "ifeltthetap2",
    "link": "ifeltthetap2.mp3",
    "category": "Alistair Overeem",
    "desc": "I clearly felt the tap"
  },
  {
    "title": "ifeltthetap",
    "link": "ifeltthetap.mp3",
    "category": "Alistair Overeem",
    "desc": "I clearly felt the tap 2"
  },
  {
    "title": "silvaiback",
    "link": "silvaiback.mp3",
    "category": "Anderson Silva",
    "desc": "I back"
  },
  {
    "title": "imcoming",
    "link": "imcoming.mp3",
    "category": "Brock Lesnar",
    "desc": "I am coming for you mf"
  },
  {
    "title": "lesnarcallout",
    "link": "lesnarcallout.mp3",
    "category": "Brock Lesnar",
    "desc": "Lesnar DC"
  },
  {
    "title": "lesnarcanyouseeme",
    "link": "lesnarcanyouseeme.mp3",
    "category": "Brock Lesnar",
    "desc": "Can you see me now"
  },
  {
    "title": "lesnarhorseshoe",
    "link": "lesnarhorseshoe.mp3",
    "category": "Brock Lesnar",
    "desc": "Horse shoe"
  },
  {
    "title": "lesnartopwife",
    "link": "lesnartopwife.mp3",
    "category": "Brock Lesnar",
    "desc": "Lesnar on top"
  },
  {
    "title": "chaelsilva",
    "link": "chaelsilva.mp3",
    "category": "Chael Sonnen",
    "desc": "Anderson Silva you suck"
  },
  {
    "title": "colby10pushups2",
    "link": "colby10pushups2.mp3",
    "category": "Colby Covington",
    "desc": "Give me 10 pushups"
  },
  {
    "title": "colby10pushups",
    "link": "colby10pushups.mp3",
    "category": "Colby Covington",
    "desc": "Give me 10 pushups 2"
  },
  {
    "title": "colbybanana",
    "link": "colbybanana.mp3",
    "category": "Colby Covington",
    "desc": "I slip on a banana peel"
  },
  {
    "title": "colbybedsheets",
    "link": "colbybedsheets.mp3",
    "category": "Colby Covington",
    "desc": "Bed sheets"
  },
  {
    "title": "colbybenaskren",
    "link": "colbybenaskren.mp3",
    "category": "Colby Covington",
    "desc": "Ben Ascream"
  },
  {
    "title": "colbybrazil",
    "link": "colbybrazil.mp3",
    "category": "Colby Covington",
    "desc": "Brazil"
  },
  {
    "title": "colbycalloutdustin",
    "link": "colbycalloutdustin.mp3",
    "category": "Colby Covington",
    "desc": "Dustin callout"
  },
  {
    "title": "colbyconman",
    "link": "colbyconman.mp3",
    "category": "Colby Covington",
    "desc": "ConMan"
  },
  {
    "title": "colbydragonenergy",
    "link": "colbydragonenergy.mp3",
    "category": "Colby Covington",
    "desc": "Dragon energy"
  },
  {
    "title": "colbyhooker2",
    "link": "colbyhooker2.mp3",
    "category": "Colby Covington",
    "desc": "Dan Hooker"
  },
  {
    "title": "colbyhooker",
    "link": "colbyhooker.mp3",
    "category": "Colby Covington",
    "desc": "Dan Hooker 2"
  },
  {
    "title": "colbykhabib",
    "link": "colbykhabib.mp3",
    "category": "Colby Covington",
    "desc": "Khabib"
  },
  {
    "title": "colbyletthemenjoy",
    "link": "colbyletthemenjoy.mp3",
    "category": "Colby Covington",
    "desc": "Let them enjoy themselves"
  },
  {
    "title": "colbymarknotsogoodard",
    "link": "colbymarknotsogoodard.mp3",
    "category": "Colby Covington",
    "desc": "Mark Not so Goodard"
  },
  {
    "title": "colbymartyfakenewsman",
    "link": "colbymartyfakenewsman.mp3",
    "category": "Colby Covington",
    "desc": "Marty Fake newsman"
  },
  {
    "title": "colbypeptobismol",
    "link": "colbypeptobismol.mp3",
    "category": "Colby Covington",
    "desc": "Pepto bismol"
  },
  {
    "title": "colbypromocode",
    "link": "colbypromocode.mp3",
    "category": "Colby Covington",
    "desc": "Mybookie.ag"
  },
  {
    "title": "colbyrda",
    "link": "colbyrda.mp3",
    "category": "Colby Covington",
    "desc": "RDA"
  },
  {
    "title": "colbysize",
    "link": "colbysize.mp3",
    "category": "Colby Covington",
    "desc": "Size"
  },
  {
    "title": "colbyusman",
    "link": "colbyusman.mp3",
    "category": "Colby Covington",
    "desc": "That was my worst night"
  },
  {
    "title": "colbywho2",
    "link": "colbywho2.mp3",
    "category": "Colby Covington",
    "desc": "Whos that"
  },
  {
    "title": "colbywho",
    "link": "colbywho.mp3",
    "category": "Colby Covington",
    "desc": "Whos that 2"
  },
  {
    "title": "colbyyouredead",
    "link": "colbyyouredead.mp3",
    "category": "Colby Covington",
    "desc": "You are ded"
  },
  {
    "title": "conorapology",
    "link": "conorapology.mp3",
    "category": "Conor McGregor",
    "desc": "Apology"
  },
  {
    "title": "mccgregorsurprise",
    "link": "mccgregorsurprise.mp3",
    "category": "Conor McGregor",
    "desc": "Surprise"
  },
  {
    "title": "mcgregor60gs",
    "link": "mcgregor60gs.mp3",
    "category": "Conor McGregor",
    "desc": "60gs"
  },
  {
    "title": "mcgregorabdelaziz",
    "link": "mcgregorabdelaziz.mp3",
    "category": "Conor McGregor",
    "desc": "Abelaziz"
  },
  {
    "title": "mcgregorcount",
    "link": "mcgregorcount.mp3",
    "category": "Conor McGregor",
    "desc": "Nate can only count"
  },
  {
    "title": "mcgregordm",
    "link": "mcgregordm.mp3",
    "category": "Conor McGregor",
    "desc": "Yo wife is in me Dms"
  },
  {
    "title": "mcgregorfoot",
    "link": "mcgregorfoot.mp3",
    "category": "Conor McGregor",
    "desc": "My foot was a baloon"
  },
  {
    "title": "mcgregorgods",
    "link": "mcgregorgods.mp3",
    "category": "Conor McGregor",
    "desc": "God"
  },
  {
    "title": "mcgregormamama",
    "link": "mcgregormamama.mp3",
    "category": "Conor McGregor",
    "desc": "MAMAMA"
  },
  {
    "title": "mcgregornocheck",
    "link": "mcgregornocheck.mp3",
    "category": "Conor McGregor",
    "desc": "there was no check"
  },
  {
    "title": "mcgregornuting",
    "link": "mcgregornuting.mp3",
    "category": "Conor McGregor",
    "desc": "youll do nuttin"
  },
  {
    "title": "mcgregoroleoleole",
    "link": "mcgregoroleoleole.mp3",
    "category": "Conor McGregor",
    "desc": "Ole ole ole ole"
  },
  {
    "title": "mcgregorredpanties",
    "link": "mcgregorredpanties.mp3",
    "category": "Conor McGregor",
    "desc": "Red panties"
  },
  {
    "title": "mcgregorsfriends",
    "link": "mcgregorsfriends.mp3",
    "category": "Conor McGregor",
    "desc": "Mcgregors Friend"
  },
  {
    "title": "mcgregorshutyourmouth",
    "link": "mcgregorshutyourmouth.mp3",
    "category": "Conor McGregor",
    "desc": "Shut yo mouth"
  },
  {
    "title": "mcgregorsorry",
    "link": "mcgregorsorry.mp3",
    "category": "Conor McGregor",
    "desc": "Sorry"
  },
  {
    "title": "mcgregortakeover",
    "link": "mcgregortakeover.mp3",
    "category": "Conor McGregor",
    "desc": "Takeover"
  },
  {
    "title": "mcgregorthisisnotover",
    "link": "mcgregorthisisnotover.mp3",
    "category": "Conor McGregor",
    "desc": "This is not over"
  },
  {
    "title": "mcgregortiming",
    "link": "mcgregortiming.mp3",
    "category": "Conor McGregor",
    "desc": "Timing beats"
  },
  {
    "title": "mcgregorwho2",
    "link": "mcgregorwho2.mp3",
    "category": "Conor McGregor",
    "desc": "Who is that"
  },
  {
    "title": "mcgregorwho",
    "link": "mcgregorwho.mp3",
    "category": "Conor McGregor",
    "desc": "Who is that 2"
  },
  {
    "title": "danawhiteillegale",
    "link": "danawhiteillegale.mp3",
    "category": "Dana White",
    "desc": "Thats illeagle"
  },
  {
    "title": "dccalloutjonjones",
    "link": "dccalloutjonjones.mp3",
    "category": "Daniel Cormier",
    "desc": "Jon Jones "
  },
  {
    "title": "dcwhowho",
    "link": "dcwhowho.mp3",
    "category": "Daniel Cormier",
    "desc": "Who"
  },
  {
    "title": "darrentilldoubters",
    "link": "darrentilldoubters.mp3",
    "category": "Darren Till",
    "desc": "Doubters"
  },
  {
    "title": "darrentillscared",
    "link": "darrentillscared.mp3",
    "category": "Darren Till",
    "desc": "Scared"
  },
  {
    "title": "lewisfrench",
    "link": "lewisfrench.mp3",
    "category": "Derick Lewis",
    "desc": "Excuse my french"
  },
  {
    "title": "diazasalamualeykum",
    "link": "diazasalamualeykum.mp3",
    "category": "Diaz brothers",
    "desc": "Asalamu aleykum"
  },
  {
    "title": "diazcallout",
    "link": "diazcallout.mp3",
    "category": "Diaz brothers",
    "desc": "Diaz callout f that"
  },
  {
    "title": "diazgameplan",
    "link": "diazgameplan.mp3",
    "category": "Diaz brothers",
    "desc": "Diaz Gameplan"
  },
  {
    "title": "diazgangster1",
    "link": "diazgangster1.mp3",
    "category": "Diaz brothers",
    "desc": "He aint not west coast gangsta"
  },
  {
    "title": "diazgangster",
    "link": "diazgangster.mp3",
    "category": "Diaz brothers",
    "desc": "He aint not west coast gangsta 2"
  },
  {
    "title": "diaznotsuprised",
    "link": "diaznotsuprised.mp3",
    "category": "Diaz brothers",
    "desc": "I am not surprised"
  },
  {
    "title": "diazpoison",
    "link": "diazpoison.mp3",
    "category": "Diaz brothers",
    "desc": "They poisoned my ivs"
  },
  {
    "title": "diazscared",
    "link": "diazscared.mp3",
    "category": "Diaz brothers",
    "desc": "I dont think hes hurt"
  },
  {
    "title": "diazslap",
    "link": "diazslap.mp3",
    "category": "Diaz brothers",
    "desc": "Where I come from people like that get slapped"
  },
  {
    "title": "diazsteroids2",
    "link": "diazsteroids2.mp3",
    "category": "Diaz brothers",
    "desc": "Everybody is on steroids"
  },
  {
    "title": "diazsteroids",
    "link": "diazsteroids.mp3",
    "category": "Diaz brothers",
    "desc": "You are on steroids"
  },
  {
    "title": "diazsuck",
    "link": "diazsuck.mp3",
    "category": "Diaz brothers",
    "desc": "The reason I was off because everybody sucked"
  },
  {
    "title": "diazwhereyouat",
    "link": "diazwhereyouat.mp3",
    "category": "Diaz brothers",
    "desc": "Where you at George"
  },
  {
    "title": "diazwolftickets",
    "link": "diazwolftickets.mp3",
    "category": "Diaz brothers",
    "desc": "Wolf tickets"
  },
  {
    "title": "diazwrestlerr",
    "link": "diazwrestlerr.mp3",
    "category": "Diaz brothers",
    "desc": "Wrestler"
  },
  {
    "title": "gazellediaz",
    "link": "gazellediaz.mp3",
    "category": "Diaz brothers",
    "desc": "No one knows what a gazelle is "
  },
  {
    "title": "alcoholandcigaretes",
    "link": "alcoholandcigaretes.mp3",
    "category": "Dominic Cruz",
    "desc": "The ref smelled like alcohol and cigaretes"
  },
  {
    "title": "poiriermcgregorfast",
    "link": "poiriermcgregorfast.mp3",
    "category": "Dustin Poirier",
    "desc": "McGregor sleep"
  },
  {
    "title": "eddiealvarzsoul",
    "link": "eddiealvarzsoul.mp3",
    "category": "Eddie Alvarez",
    "desc": "Taking his soul"
  },
  {
    "title": "imnotimpressed",
    "link": "imnotimpressed.mp3",
    "category": "GSP",
    "desc": "I am not impressed"
  },
  {
    "title": "cejudocallout",
    "link": "cejudocallout.mp3",
    "category": "Henry Cejudo",
    "desc": "Cejudo callout"
  },
  {
    "title": "joanaagain",
    "link": "joanaagain.mp3",
    "category": "Joanna",
    "desc": "And AGAIN AND AGAIN"
  },
  {
    "title": "heypusy",
    "link": "heypusy.mp3",
    "category": "Jon Jones",
    "desc": "Hey psy are you still there"
  },
  {
    "title": "jonjoneslesnar",
    "link": "jonjoneslesnar.mp3",
    "category": "Jon Jones",
    "desc": "Lesnar"
  },
  {
    "title": "khabibbulshii",
    "link": "khabibbulshii.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "This is no1 bs"
  },
  {
    "title": "khabibchicken",
    "link": "khabibchicken.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "I want to fight with your chicken"
  },
  {
    "title": "khabibrussian",
    "link": "khabibrussian.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "Russian"
  },
  {
    "title": "khabibstupid",
    "link": "khabibstupid.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "Stupid guy"
  },
  {
    "title": "allahuakbar",
    "link": "allahuakbar.mp3",
    "category": "Khamzat Chimaev",
    "desc": "Allahu Akbar"
  },
  {
    "title": "kill everybody",
    "link": "kill everybody.mp3",
    "category": "Khamzat Chimaev",
    "desc": "Kill everybody"
  },
  {
    "title": "edwardstitleshot2",
    "link": "edwardstitleshot2.mp3",
    "category": "Leon Edwards",
    "desc": "I believe I deserve the title shot"
  },
  {
    "title": "edwardstitleshot",
    "link": "edwardstitleshot.mp3",
    "category": "Leon Edwards",
    "desc": "I believe I deserve the title shot 2"
  },
  {
    "title": "rockholdcosta",
    "link": "rockholdcosta.mp3",
    "category": "Luke Rockhold",
    "desc": "Costa is like a duck"
  },
  {
    "title": "vettoriquestion",
    "link": "vettoriquestion.mp3",
    "category": "Marvin Vettori",
    "desc": "How the f is that even a question"
  },
  {
    "title": "conceievebelieveachieve",
    "link": "conceievebelieveachieve.mp3",
    "category": "Micheal Bisping",
    "desc": "Conceive believe achieve"
  },
  {
    "title": "chandlersurprise",
    "link": "chandlersurprise.mp3",
    "category": "Micheal Chandler",
    "desc": "SURPRISE SURPRISE"
  },
  {
    "title": "andherewego",
    "link": "andherewego.mp3",
    "category": "Other",
    "desc": "And here we go"
  },
  {
    "title": "beatyoutolivingdeath",
    "link": "beatyoutolivingdeath.mp3",
    "category": "Other",
    "desc": "Beat you to living death"
  },
  {
    "title": "brucebufferkhabib",
    "link": "brucebufferkhabib.mp3",
    "category": "Other",
    "desc": "Bruce Buffer Khabib"
  },
  {
    "title": "brucebuffermcgregor",
    "link": "brucebuffermcgregor.mp3",
    "category": "Other",
    "desc": "Bruce Buffer Mcgregor"
  },
  {
    "title": "bulgingdisk",
    "link": "bulgingdisk.mp3",
    "category": "Other",
    "desc": "I had a bulging disk"
  },
  {
    "title": "joeroganumar",
    "link": "joeroganumar.mp3",
    "category": "Other",
    "desc": "Umar Nurmagmmm"
  },
  {
    "title": "fukorfight",
    "link": "fukorfight.mp3",
    "category": "Other",
    "desc": "I want to f9k fight"
  },
  {
    "title": "ohhhhblahovic",
    "link": "ohhhhblahovic.mp3",
    "category": "Other",
    "desc": "Ohhhhh Blahovic"
  },
  {
    "title": "ohhhhhrose",
    "link": "ohhhhhrose.mp3",
    "category": "Other",
    "desc": "Ohhhh Rose"
  },
  {
    "title": "ohhhhmasvidal",
    "link": "ohhhhmasvidal.mp3",
    "category": "Other",
    "desc": "OHhhh Masvidal"
  },
  {
    "title": "ohhhhwonderboy",
    "link": "ohhhhwonderboy.mp3",
    "category": "Other",
    "desc": "Ohhhhh Wonderboy"
  },
  {
    "title": "ontheirfeet",
    "link": "ontheirfeet.mp3",
    "category": "Other",
    "desc": "They are on their feet"
  },
  {
    "title": "smithmerrychristmas",
    "link": "smithmerrychristmas.mp3",
    "category": "Other",
    "desc": "Merry xmas to me"
  },
  {
    "title": "thisisstilmyboy",
    "link": "thisisstilmyboy.mp3",
    "category": "Other",
    "desc": "This is still my boy"
  },
  {
    "title": "tjbetterknowledge",
    "link": "tjbetterknowledge.mp3",
    "category": "Other",
    "desc": "I have better knowledge than the ref"
  },
  {
    "title": "ufcembedded",
    "link": "ufcembedded.mp3",
    "category": "Other",
    "desc": "UFC embedded"
  },
  {
    "title": "victory",
    "link": "victory.mp3",
    "category": "Other",
    "desc": "Most satisfying victory"
  },
  {
    "title": "wearelive",
    "link": "wearelive.mp3",
    "category": "Other",
    "desc": "We are live"
  },
  {
    "title": "paddypimblet",
    "link": "paddypimblet.mp3",
    "category": "Paddy Pimblett",
    "desc": "Im a scouser"
  },
  {
    "title": "costaexcuse",
    "link": "costaexcuse.mp3",
    "category": "Paulo Costa",
    "desc": "No excuses"
  },
  {
    "title": "costalicense",
    "link": "costalicense.mp3",
    "category": "Paulo Costa",
    "desc": "You have license "
  },
  {
    "title": "stipemiocicmumbling",
    "link": "stipemiocicmumbling.mp3",
    "category": "Stipe Miocic",
    "desc": "Stipe mumbling"
  },
  {
    "title": "fergusondanawhiteprivilege",
    "link": "fergusondanawhiteprivilege.mp3",
    "category": "Tony Ferguson",
    "desc": "Dana White Privilege"
  },
  {
    "title": "fergusonholdon2",
    "link": "fergusonholdon2.mp3",
    "category": "Tony Ferguson",
    "desc": "Hold on im talking brother"
  },
  {
    "title": "fergusonholdon",
    "link": "fergusonholdon.mp3",
    "category": "Tony Ferguson",
    "desc": "Hold on im talking"
  },
  {
    "title": "fergusonmcnuggets",
    "link": "fergusonmcnuggets.mp3",
    "category": "Tony Ferguson",
    "desc": "Where you at mcnuggets"
  },
  {
    "title": "fergusonpieceofshiet",
    "link": "fergusonpieceofshiet.mp3",
    "category": "Tony Ferguson",
    "desc": "Piece of shiz"
  },
  {
    "title": "fergusonstreetfigt",
    "link": "fergusonstreetfigt.mp3",
    "category": "Tony Ferguson",
    "desc": "Street fight"
  },
  {
    "title": "fergusontiramisu",
    "link": "fergusontiramisu.mp3",
    "category": "Tony Ferguson",
    "desc": "Tiramisu time"
  },
  {
    "title": "fergusonwooh",
    "link": "fergusonwooh.mp3",
    "category": "Tony Ferguson",
    "desc": "Woooh"
  },
  {
    "title": "fergusonwrestlers",
    "link": "fergusonwrestlers.mp3",
    "category": "Tony Ferguson",
    "desc": "You like beating on high school wrestlers"
  },
  {
    "title": "lacandela",
    "link": "lacandela.mp3",
    "category": "Yoel Romero",
    "desc": "La Candela"
  },
  {
    "title": "noforgetjesus",
    "link": "noforgetjesus.mp3",
    "category": "Yoel Romero",
    "desc": "No forget Jesus"
  },
  {
    "title": "romeroiloveyou",
    "link": "romeroiloveyou.mp3",
    "category": "Yoel Romero",
    "desc": "I love you"
  },
];

// @HiveType(typeId: 0)
// class SoundboardSound extends HiveObject {
//   @HiveField(0)
//   late String title;

//   @HiveField(1)
//   late String link;
// }