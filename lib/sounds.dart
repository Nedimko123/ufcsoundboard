var saved = [];
var songs = [
  {
    "title": "ufctitlefightweighin",
    "link": "nedimtitlef.mp3",
    "desc": "Title Fight Weigh in"
  },
  {"title": "weighin4", "link": "nedimweighin4.mp3", "desc": "Weigh in 1"},
  {"title": "weighin1", "link": "nedimweighin1.mp3", "desc": "Weigh in 2"},
  {"title": "weighin3", "link": "nedimweighin3.mp3", "desc": "Weigh in 3"},
  {"title": "weighin2", "link": "nedimweighin2.mp3", "desc": "Weigh in 4"},
  {"title": "weighin5", "link": "nedimweighin5.mp3", "desc": "Weigh in 5"},
  {
    "title": "lacandela1",
    "link": "nedimlacandela1.mp3",
    "desc": "Romero La Candela"
  },
];
var soundBoard = [
  {
    "title": "ifeltthetap2",
    "link": "nedimifeltthetap2.mp3",
    "category": "Alistair Overeem",
    "desc": "I clearly felt the tap"
  },
  {
    "title": "ifeltthetap",
    "link": "nedimifeltthetap.mp3",
    "category": "Alistair Overeem",
    "desc": "I clearly felt the tap 2"
  },
  {
    "title": "silvaiback",
    "link": "nedimsilvaiback.mp3",
    "category": "Anderson Silva",
    "desc": "I back"
  },
  {
    "title": "imcoming",
    "link": "nedimimcoming.mp3",
    "category": "Brock Lesnar",
    "desc": "I am coming for you mf"
  },
  {
    "title": "lesnarcallout",
    "link": "nedimlesnarcallout.mp3",
    "category": "Brock Lesnar",
    "desc": "Lesnar DC"
  },
  {
    "title": "lesnarcanyouseeme",
    "link": "nedimlesnarcanyouseeme.mp3",
    "category": "Brock Lesnar",
    "desc": "Can you see me now"
  },
  {
    "title": "lesnarhorseshoe",
    "link": "nedimlesnarhorseshoe.mp3",
    "category": "Brock Lesnar",
    "desc": "Horse shoe"
  },
  {
    "title": "lesnartopwife",
    "link": "nedimlesnartopwife.mp3",
    "category": "Brock Lesnar",
    "desc": "Lesnar on top"
  },
  {
    "title": "chaelgreatness",
    "link": "nedimchaelgreatness.mp3",
    "category": "Chael Sonnen",
    "desc": "Chael Greatness"
  },
  {
    "title": "chaelicantletyougetclose",
    "link": "nedimchaelicantletyougetclose.mp3",
    "category": "Chael Sonnen",
    "desc": "I cant let you get close"
  },
  {
    "title": "chaelsilva",
    "link": "nedimchaelsilva.mp3",
    "category": "Chael Sonnen",
    "desc": "Anderson Silva you suck"
  },
  {
    "title": "colby10pushups2",
    "link": "nedimcolby10pushups2.mp3",
    "category": "Colby Covington",
    "desc": "Give me 10 pushups"
  },
  {
    "title": "colby10pushups",
    "link": "nedimcolby10pushups.mp3",
    "category": "Colby Covington",
    "desc": "Give me 10 pushups 2"
  },
  {
    "title": "colbybanana",
    "link": "nedimcolbybanana.mp3",
    "category": "Colby Covington",
    "desc": "I slip on a banana peel"
  },
  {
    "title": "colbybedsheets",
    "link": "nedimcolbybedsheets.mp3",
    "category": "Colby Covington",
    "desc": "Bed sheets"
  },
  {
    "title": "colbybenaskren",
    "link": "nedimcolbybenaskren.mp3",
    "category": "Colby Covington",
    "desc": "Ben Ascream"
  },
  {
    "title": "colbybrazil",
    "link": "nedimcolbybrazil.mp3",
    "category": "Colby Covington",
    "desc": "Brazil"
  },
  {
    "title": "colbycalloutdustin",
    "link": "nedimcolbycalloutdustin.mp3",
    "category": "Colby Covington",
    "desc": "Dustin callout"
  },
  {
    "title": "colbyconman",
    "link": "nedimcolbyconman.mp3",
    "category": "Colby Covington",
    "desc": "ConMan"
  },
  {
    "title": "colbydragonenergy",
    "link": "nedimcolbydragonenergy.mp3",
    "category": "Colby Covington",
    "desc": "Dragon energy"
  },
  {
    "title": "colbyhooker2",
    "link": "nedimcolbyhooker2.mp3",
    "category": "Colby Covington",
    "desc": "Dan Hooker"
  },
  {
    "title": "colbyhooker",
    "link": "nedimcolbyhooker.mp3",
    "category": "Colby Covington",
    "desc": "Dan Hooker 2"
  },
  {
    "title": "colbykhabib",
    "link": "nedimcolbykhabib.mp3",
    "category": "Colby Covington",
    "desc": "Khabib"
  },
  {
    "title": "colbyletthemenjoy",
    "link": "nedimcolbyletthemenjoy.mp3",
    "category": "Colby Covington",
    "desc": "Let them enjoy themselves"
  },
  {
    "title": "colbymarknotsogoodard",
    "link": "nedimcolbymarknotsogoodard.mp3",
    "category": "Colby Covington",
    "desc": "Mark Not so Goodard"
  },
  {
    "title": "colbymartyfakenewsman",
    "link": "nedimcolbymartyfakenewsman.mp3",
    "category": "Colby Covington",
    "desc": "Marty Fake newsman"
  },
  {
    "title": "colbypeptobismol",
    "link": "nedimcolbypeptobismol.mp3",
    "category": "Colby Covington",
    "desc": "Pepto bismol"
  },
  {
    "title": "colbypromocode",
    "link": "nedimcolbypromocode.mp3",
    "category": "Colby Covington",
    "desc": "Mybookie.ag"
  },
  {
    "title": "colbyrda",
    "link": "nedimcolbyrda.mp3",
    "category": "Colby Covington",
    "desc": "RDA"
  },
  {
    "title": "colbysize",
    "link": "nedimcolbysize.mp3",
    "category": "Colby Covington",
    "desc": "Size"
  },
  {
    "title": "colbyusman",
    "link": "nedimcolbyusman.mp3",
    "category": "Colby Covington",
    "desc": "That was my worst night"
  },
  {
    "title": "colbywho2",
    "link": "nedimcolbywho2.mp3",
    "category": "Colby Covington",
    "desc": "Whos that"
  },
  {
    "title": "colbywho",
    "link": "nedimcolbywho.mp3",
    "category": "Colby Covington",
    "desc": "Whos that 2"
  },
  {
    "title": "colbyyouredead",
    "link": "nedimcolbyyouredead.mp3",
    "category": "Colby Covington",
    "desc": "You are ded"
  },
  {
    "title": "conorapology",
    "link": "nedimconorapology.mp3",
    "category": "Conor McGregor",
    "desc": "Apology"
  },
  {
    "title": "mcgregoryayaya",
    "link": "nedimmcgregoryayaya.mp3",
    "category": "Conor McGregor",
    "desc": "Ayayaya"
  },
  {
    "title": "mccgregorsurprise",
    "link": "nedimmccgregorsurprise.mp3",
    "category": "Conor McGregor",
    "desc": "Surprise"
  },
  {
    "title": "mcgregor60gs",
    "link": "nedimmcgregor60gs.mp3",
    "category": "Conor McGregor",
    "desc": "60gs"
  },
  {
    "title": "mcgregorabdelaziz",
    "link": "nedimmcgregorabdelaziz.mp3",
    "category": "Conor McGregor",
    "desc": "Abelaziz"
  },
  {
    "title": "mcgregorcount",
    "link": "nedimmcgregorcount.mp3",
    "category": "Conor McGregor",
    "desc": "Nate can only count"
  },
  {
    "title": "mcgregordm",
    "link": "nedimmcgregordm.mp3",
    "category": "Conor McGregor",
    "desc": "Yo wife is in me Dms"
  },
  {
    "title": "mcgregorfoot",
    "link": "nedimmcgregorfoot.mp3",
    "category": "Conor McGregor",
    "desc": "My foot was a baloon"
  },
  {
    "title": "mcgregorgods",
    "link": "nedimmcgregorgods.mp3",
    "category": "Conor McGregor",
    "desc": "God"
  },
  {
    "title": "mcgregormamama",
    "link": "nedimmcgregormamama.mp3",
    "category": "Conor McGregor",
    "desc": "MAMAMA"
  },
  {
    "title": "mcgregornocheck",
    "link": "nedimmcgregornocheck.mp3",
    "category": "Conor McGregor",
    "desc": "there was no check"
  },
  {
    "title": "mcgregornuting",
    "link": "nedimmcgregornuting.mp3",
    "category": "Conor McGregor",
    "desc": "youll do nuttin"
  },
  {
    "title": "mcgregoroleoleole",
    "link": "nedimmcgregoroleoleole.mp3",
    "category": "Conor McGregor",
    "desc": "Ole ole ole ole"
  },
  {
    "title": "mcgregorredpanties",
    "link": "nedimmcgregorredpanties.mp3",
    "category": "Conor McGregor",
    "desc": "Red panties"
  },
  {
    "title": "mcgregorsfriends",
    "link": "nedimmcgregorsfriends.mp3",
    "category": "Conor McGregor",
    "desc": "Mcgregors Friend"
  },
  {
    "title": "mcgregorshutyourmouth",
    "link": "nedimmcgregorshutyourmouth.mp3",
    "category": "Conor McGregor",
    "desc": "Shut yo mouth"
  },
  {
    "title": "mcgregorsorry",
    "link": "nedimmcgregorsorry.mp3",
    "category": "Conor McGregor",
    "desc": "Sorry"
  },
  {
    "title": "mcgregortakeover",
    "link": "nedimmcgregortakeover.mp3",
    "category": "Conor McGregor",
    "desc": "Takeover"
  },
  {
    "title": "mcgregorthisisnotover",
    "link": "nedimmcgregorthisisnotover.mp3",
    "category": "Conor McGregor",
    "desc": "This is not over"
  },
  {
    "title": "mcgregortiming",
    "link": "nedimmcgregortiming.mp3",
    "category": "Conor McGregor",
    "desc": "Timing beats"
  },
  {
    "title": "mcgregorwho2",
    "link": "nedimmcgregorwho2.mp3",
    "category": "Conor McGregor",
    "desc": "Who is that"
  },
  {
    "title": "mcgregorwho",
    "link": "nedimmcgregorwho.mp3",
    "category": "Conor McGregor",
    "desc": "Who is that 2"
  },
  {
    "title": "danawhiteillegale",
    "link": "nedimdanawhiteillegale.mp3",
    "category": "Dana White",
    "desc": "Thats illeagle"
  },
  {
    "title": "dccalloutjonjones",
    "link": "nedimdccalloutjonjones.mp3",
    "category": "Daniel Cormier",
    "desc": "Jon Jones "
  },
  {
    "title": "dcwhowho",
    "link": "nedimdcwhowho.mp3",
    "category": "Daniel Cormier",
    "desc": "Who"
  },
  {
    "title": "darrentilldoubters",
    "link": "nedimdarrentilldoubters.mp3",
    "category": "Darren Till",
    "desc": "Doubters"
  },
  {
    "title": "darrentillscared",
    "link": "nedimdarrentillscared.mp3",
    "category": "Darren Till",
    "desc": "Scared"
  },
  {
    "title": "lewisfrench",
    "link": "nedimlewisfrench.mp3",
    "category": "Derick Lewis",
    "desc": "Excuse my french"
  },
  {
    "title": "diazasalamualeykum",
    "link": "nedimdiazasalamualeykum.mp3",
    "category": "Diaz brothers",
    "desc": "Asalamu aleykum"
  },
  {
    "title": "diazcallout",
    "link": "nedimdiazcallout.mp3",
    "category": "Diaz brothers",
    "desc": "Diaz callout f that"
  },
  {
    "title": "diazgameplan",
    "link": "nedimdiazgameplan.mp3",
    "category": "Diaz brothers",
    "desc": "Diaz Gameplan"
  },
  {
    "title": "diazgangster1",
    "link": "nedimdiazgangster1.mp3",
    "category": "Diaz brothers",
    "desc": "He aint not west coast gangsta"
  },
  {
    "title": "diazgangster",
    "link": "nedimdiazgangster.mp3",
    "category": "Diaz brothers",
    "desc": "He aint not west coast gangsta 2"
  },
  {
    "title": "diaznotsuprised",
    "link": "nedimdiaznotsuprised.mp3",
    "category": "Diaz brothers",
    "desc": "I am not surprised"
  },
  {
    "title": "diazpoison",
    "link": "nedimdiazpoison.mp3",
    "category": "Diaz brothers",
    "desc": "They poisoned my ivs"
  },
  {
    "title": "diazscared",
    "link": "nedimdiazscared.mp3",
    "category": "Diaz brothers",
    "desc": "I dont think hes hurt"
  },
  {
    "title": "diazslap",
    "link": "nedimdiazslap.mp3",
    "category": "Diaz brothers",
    "desc": "Where I come from people like that get slapped"
  },
  {
    "title": "diazsteroids2",
    "link": "nedimdiazsteroids2.mp3",
    "category": "Diaz brothers",
    "desc": "Everybody is on steroids"
  },
  {
    "title": "diazsteroids",
    "link": "nedimdiazsteroids.mp3",
    "category": "Diaz brothers",
    "desc": "You are on steroids"
  },
  {
    "title": "diazsuck",
    "link": "nedimdiazsuck.mp3",
    "category": "Diaz brothers",
    "desc": "The reason I was off because everybody sucked"
  },
  {
    "title": "diazwhereyouat",
    "link": "nedimdiazwhereyouat.mp3",
    "category": "Diaz brothers",
    "desc": "Where you at George"
  },
  {
    "title": "diazwolftickets",
    "link": "nedimdiazwolftickets.mp3",
    "category": "Diaz brothers",
    "desc": "Wolf tickets"
  },
  {
    "title": "diazwrestlerr",
    "link": "nedimdiazwrestlerr.mp3",
    "category": "Diaz brothers",
    "desc": "Wrestler"
  },
  {
    "title": "gazellediaz",
    "link": "nedimgazellediaz.mp3",
    "category": "Diaz brothers",
    "desc": "No one knows what a gazelle is "
  },
  {
    "title": "alcoholandcigaretes",
    "link": "nedimalcoholandcigaretes.mp3",
    "category": "Dominic Cruz",
    "desc": "The ref smelled like alcohol and cigaretes"
  },
  {
    "title": "poiriermcgregorfast",
    "link": "nedimpoiriermcgregorfast.mp3",
    "category": "Dustin Poirier",
    "desc": "McGregor sleep"
  },
  {
    "title": "eddiealvarzsoul",
    "link": "nedimeddiealvarzsoul.mp3",
    "category": "Eddie Alvarez",
    "desc": "Taking his soul"
  },
  {
    "title": "imnotimpressed",
    "link": "nedimimnotimpressed.mp3",
    "category": "GSP",
    "desc": "I am not impressed"
  },
  {
    "title": "cejudocallout",
    "link": "nedimcejudocallout.mp3",
    "category": "Henry Cejudo",
    "desc": "Cejudo callout"
  },
  {
    "title": "joanaagain",
    "link": "nedimjoanaagain.mp3",
    "category": "Joanna",
    "desc": "And AGAIN AND AGAIN"
  },
  {
    "title": "heypusy",
    "link": "nedimheypusy.mp3",
    "category": "Jon Jones",
    "desc": "Hey psy are you still there"
  },
  {
    "title": "jonjoneslesnar",
    "link": "nedimjonjoneslesnar.mp3",
    "category": "Jon Jones",
    "desc": "Lesnar"
  },
  {
    "title": "khabibbulshii",
    "link": "nedimkhabibbulshii.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "This is no1 bs"
  },
  {
    "title": "khabibchicken",
    "link": "nedimkhabibchicken.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "I want to fight with your chicken"
  },
  {
    "title": "khabibrussian",
    "link": "nedimkhabibrussian.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "Russian"
  },
  {
    "title": "khabibstupid",
    "link": "nedimkhabibstupid.mp3",
    "category": "Khabib Nurmagomedov",
    "desc": "Stupid guy"
  },
  {
    "title": "allahuakbar",
    "link": "nedimallahuakbar.mp3",
    "category": "Khamzat Chimaev",
    "desc": "Allahu Akbar"
  },
  {
    "title": "kill everybody",
    "link": "nedimkill everybody.mp3",
    "category": "Khamzat Chimaev",
    "desc": "Kill everybody"
  },
  {
    "title": "edwardstitleshot2",
    "link": "nedimedwardstitleshot2.mp3",
    "category": "Leon Edwards",
    "desc": "I believe I deserve the title shot"
  },
  {
    "title": "edwardstitleshot",
    "link": "nedimedwardstitleshot.mp3",
    "category": "Leon Edwards",
    "desc": "I believe I deserve the title shot 2"
  },
  {
    "title": "rockholdcosta",
    "link": "nedimrockholdcosta.mp3",
    "category": "Luke Rockhold",
    "desc": "Costa is like a duck"
  },
  {
    "title": "vettoriquestion",
    "link": "nedimvettoriquestion.mp3",
    "category": "Marvin Vettori",
    "desc": "How the f is that even a question"
  },
  {
    "title": "conceievebelieveachieve",
    "link": "nedimconceievebelieveachieve.mp3",
    "category": "Micheal Bisping",
    "desc": "Conceive believe achieve"
  },
  {
    "title": "chandlersurprise",
    "link": "nedimchandlersurprise.mp3",
    "category": "Micheal Chandler",
    "desc": "SURPRISE SURPRISE"
  },
  {
    "title": "andherewego",
    "link": "nedimandherewego.mp3",
    "category": "Other",
    "desc": "And here we go"
  },
  {
    "title": "beatyoutolivingdeath",
    "link": "nedimbeatyoutolivingdeath.mp3",
    "category": "Other",
    "desc": "Beat you to living death"
  },
  {
    "title": "brucebufferkhabib",
    "link": "nedimbrucebufferkhabib.mp3",
    "category": "Other",
    "desc": "Bruce Buffer Khabib"
  },
  {
    "title": "brucebuffermcgregor",
    "link": "nedimbrucebuffermcgregor.mp3",
    "category": "Other",
    "desc": "Bruce Buffer Mcgregor"
  },
  {
    "title": "bulgingdisk",
    "link": "nedimbulgingdisk.mp3",
    "category": "Other",
    "desc": "I had a bulging disk"
  },
  {
    "title": "joeroganumar",
    "link": "nedimjoeroganumar.mp3",
    "category": "Other",
    "desc": "Umar Nurmagmmm"
  },
  {
    "title": "fukorfight",
    "link": "nedimfukorfight.mp3",
    "category": "Other",
    "desc": "I want to f9k fight"
  },
  {
    "title": "ohhhhblahovic",
    "link": "nedimohhhhblahovic.mp3",
    "category": "Other",
    "desc": "Ohhhhh Blahovic"
  },
  {
    "title": "ohhhhhrose",
    "link": "nedimohhhhhrose.mp3",
    "category": "Other",
    "desc": "Ohhhh Rose"
  },
  {
    "title": "ohhhhmasvidal",
    "link": "nedimohhhhmasvidal.mp3",
    "category": "Other",
    "desc": "OHhhh Masvidal"
  },
  {
    "title": "ohhhhwonderboy",
    "link": "nedimohhhhwonderboy.mp3",
    "category": "Other",
    "desc": "Ohhhhh Wonderboy"
  },
  {
    "title": "ontheirfeet",
    "link": "nedimontheirfeet.mp3",
    "category": "Other",
    "desc": "They are on their feet"
  },
  {
    "title": "smithmerrychristmas",
    "link": "nedimsmithmerrychristmas.mp3",
    "category": "Other",
    "desc": "Merry xmas to me"
  },
  {
    "title": "thisisstilmyboy",
    "link": "nedimthisisstilmyboy.mp3",
    "category": "Other",
    "desc": "This is still my boy"
  },
  {
    "title": "tjbetterknowledge",
    "link": "nedimtjbetterknowledge.mp3",
    "category": "Other",
    "desc": "I have better knowledge than the ref"
  },
  {
    "title": "ufcembedded",
    "link": "nedimufcembedded.mp3",
    "category": "Other",
    "desc": "UFC embedded"
  },
  {
    "title": "victory",
    "link": "nedimvictory.mp3",
    "category": "Other",
    "desc": "Most satisfying victory"
  },
  {
    "title": "wearelive",
    "link": "nedimwearelive.mp3",
    "category": "Other",
    "desc": "We are live"
  },
  {
    "title": "paddypimblet",
    "link": "nedimpaddypimblet.mp3",
    "category": "Paddy Pimblett",
    "desc": "Im a scouser"
  },
  {
    "title": "costacirequedesole",
    "link": "nedimcostacirequedesole.mp3",
    "category": "Paulo Costa",
    "desc": "Costa cirque de sole"
  },
  {
    "title": "costahoneeymoon",
    "link": "nedimcostahoneeymoon.mp3",
    "category": "Paulo Costa",
    "desc": "Honeey moon"
  },
  {
    "title": "costaskinnyclaw",
    "link": "nedimcostaskinnyclaw.mp3",
    "category": "Paulo Costa",
    "desc": "Skinny claw"
  },
  {
    "title": "costayairpainter",
    "link": "nedimcostayairpainter.mp3",
    "category": "Paulo Costa",
    "desc": "Painter"
  },
  {
    "title": "costaswephisface",
    "link": "nedimcostaswephisface.mp3",
    "category": "Paulo Costa",
    "desc": "Swep his face"
  },
  {
    "title": "costabroing",
    "link": "nedimcostabroing.mp3",
    "category": "Paulo Costa",
    "desc": "Broing"
  },
  {
    "title": "costaiwillbe100percent",
    "link": "nedimcostaiwillbe100percent.mp3",
    "category": "Paulo Costa",
    "desc": "100 percent"
  },
  {
    "title": "costajizzaprove",
    "link": "nedimcostajizzaprove.mp3",
    "category": "Paulo Costa",
    "desc": "Jizzaprove"
  },
  {
    "title": "costaumantrash",
    "link": "nedimcostaumantrash.mp3",
    "category": "Paulo Costa",
    "desc": "Uman trash"
  },
  {
    "title": "costaexcuse",
    "link": "nedimcostaexcuse.mp3",
    "category": "Paulo Costa",
    "desc": "No excuses"
  },
  {
    "title": "costalicense",
    "link": "nedimcostalicense.mp3",
    "category": "Paulo Costa",
    "desc": "You have license "
  },
  {
    "title": "adesanyacalloutcosta",
    "link": "nedimadesanyacalloutcosta.mp3",
    "category": "Israel Adesanya",
    "desc": "Adesanya callout Costa"
  },
  {
    "title": "stipemiocicmumbling",
    "link": "nedimstipemiocicmumbling.mp3",
    "category": "Stipe Miocic",
    "desc": "Stipe mumbling"
  },
  {
    "title": "fergusondanawhiteprivilege",
    "link": "nedimfergusondanawhiteprivilege.mp3",
    "category": "Tony Ferguson",
    "desc": "Dana White Privilege"
  },
  {
    "title": "fergusonholdon2",
    "link": "nedimfergusonholdon2.mp3",
    "category": "Tony Ferguson",
    "desc": "Hold on im talking brother"
  },
  {
    "title": "fergusonholdon",
    "link": "nedimfergusonholdon.mp3",
    "category": "Tony Ferguson",
    "desc": "Hold on im talking"
  },
  {
    "title": "fergusonmcnuggets",
    "link": "nedimfergusonmcnuggets.mp3",
    "category": "Tony Ferguson",
    "desc": "Where you at mcnuggets"
  },
  {
    "title": "fergusonpieceofshiet",
    "link": "nedimfergusonpieceofshiet.mp3",
    "category": "Tony Ferguson",
    "desc": "Piece of shiz"
  },
  {
    "title": "fergusonstreetfigt",
    "link": "nedimfergusonstreetfigt.mp3",
    "category": "Tony Ferguson",
    "desc": "Street fight"
  },
  {
    "title": "fergusontiramisu",
    "link": "nedimfergusontiramisu.mp3",
    "category": "Tony Ferguson",
    "desc": "Tiramisu time"
  },
  {
    "title": "fergusonwooh",
    "link": "nedimfergusonwooh.mp3",
    "category": "Tony Ferguson",
    "desc": "Woooh"
  },
  {
    "title": "fergusonwrestlers",
    "link": "nedimfergusonwrestlers.mp3",
    "category": "Tony Ferguson",
    "desc": "You like beating on high school wrestlers"
  },
  {
    "title": "lacandela",
    "link": "nedimlacandela.mp3",
    "category": "Yoel Romero",
    "desc": "La Candela"
  },
  {
    "title": "noforgetjesus",
    "link": "nedimnoforgetjesus.mp3",
    "category": "Yoel Romero",
    "desc": "No forget Jesus"
  },
  {
    "title": "romeroiloveyou",
    "link": "nedimromeroiloveyou.mp3",
    "category": "Yoel Romero",
    "desc": "I love you"
  },
  {
    "title": "wandereiswoon",
    "link": "nedimwandereiswoon.mp3",
    "category": "Wanderlei Silva",
    "desc": "Swoon"
  },
  {
    "title": "wanderleisuckmyballs",
    "link": "nedimwanderleisuckmyballs.mp3",
    "category": "Wanderlei Silva",
    "desc": "Suck my balls"
  },
  {
    "title": "wanderleiwannanow2",
    "link": "nedimwanderleiwannanow2.mp3",
    "category": "Wanderlei Silva",
    "desc": "Wanna now"
  },
  {
    "title": "wanderleisilvawannanow",
    "link": "nedimwanderleisilvawannanow.mp3",
    "category": "Wanderlei Silva",
    "desc": "Wanna now 2"
  },
];

// @HiveType(typeId: 0)
// class SoundboardSound extends HiveObject {
//   @HiveField(0)
//   late String title;

//   @HiveField(1)
//   late String link;
// }