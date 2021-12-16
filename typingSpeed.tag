{=(COMMENT):TagScript blocks aliases}
{=(j):join}
{=(r):replace}
{=(i):index}
{=(ctn):contains}

{=(COMMENT):Server's preferred prefix}
{=(p):!}
{=(tagName):type}
{=(tag):{p}{tagName}}
{=(COMMENT):Amount of decimals displayed for WPM/CPM}
{=(decimals):2}

{=(largs):{lower:{args}}}
{=(jargs):{{j}(~):! {largs}}}
{=(l1):{list(1):{jargs}}}
{=(l2):{list(2):{jargs}}}
{=(l3):{list(3):{jargs}}}

{=(COMMENT):Fallback value}
{=(fb):None}
{=(ph):%&$}

{=(COMMENT):List of subcommands. If not found, then defaults to "help".}
{=(subcommands):help start go nerd finish stop help {fb}}

{=(COMMENT):Substring matched subcommand}
{=(subcommand):{subcommands({{i}({l1}):{{r}({l1},. {l1} .):{subcommands}}})}}
{=(COMMENT):Allowing aliases but making them return their exclusive equivalent. go becomes start and finish becomes stop}
{=(subcommand):{{r}(go,start):{{r}(finish,stop):{subcommand}}}}

{=(COMMENT):500 most common English words. Shortened from "wordsList" to "w" just because I will randomize it a lot}
{=(w):the of to and a in is it you that he was for on are with as his they be at one have this from or had by hot but some what there we can out other were all your when up use word how said an each she which do their time if will way about many then them would write like so these her long make thing see him two has look more day could go come did my sound no most number who over know water than call first people may down side been now find any new work part take get place made live where after back little only round man year came show every good me give our under name very through just form much great think say help low line before turn cause same mean differ move right boy old too does tell sentence set three want air well also play small end put home read hand port large spell add even land here must big high such follow act why ask men change went light kind off need house picture try us again animal point mother world near build self earth father head stand own page should country found answer school grow study still learn plant cover food sun four thought let keep eye never last door between city tree cross since hard start might story saw far sea draw left late run don't while press close night real life few stop open seem together next white children begin got walk example ease paper often always music those both mark book letter until mile river car feet care second group carry took rain eat room friend began idea fish mountain north once base hear horse cut sure watch color face wood main enough plain girl usual young ready above ever red list though feel talk bird soon body dog family direct pose leave song measure state product black short numeral class wind question happen complete ship area half rock order fire south problem piece told knew pass farm top whole king size heard best hour better true during hundred am remember step early hold west ground interest reach fast five sing listen six table travel less morning ten simple several vowel toward war lay against pattern slow center love person money serve appear road map science rule govern pull cold notice voice fall power town fine certain fly unit lead cry dark machine note wait plan figure star box noun field rest correct able pound done beauty drive stood contain front teach week final gave green oh quick develop sleep warm free minute strong special mind behind clear tail produce fact street inch lot nothing course stay wheel full force blue object decide surface deep moon island foot yet busy test record boat common gold possible plane age dry wonder laugh thousand ago ran check game shape yes hot miss brought heat snow bed bring sit perhaps fill east weight language among}

{=(COMMENT):Amount of words and random position}
{=(wLen):{{i}({ph}):{w} {ph}}}
{=(ra):range:1-{wLen}}

{=(COMMENT):List of quotes and their respective author.
https://thepracticetest.com/typing/tests/inspirational-quotes/}
{=(quotesList):You can fool all of the people some of the time, and some of the people all of the time, but you can't fool all of the people all of the time.|Abraham Lincoln~After you've done a thing the same way for two years, look it over carefully. After five years, look at it with suspicion. And after ten years, throw it out and start all over.|Alfred Edward Perlman~One cannot always live in the palaces and state apartments of language, but we can refuse to spend our days in searching for its vilest slums.|William Watson~A new idea is delicate. It can be killed by a sneer or a yawn; it can be stabbed to death by a quip and worried to death by a frown on the right man's brow.|Charles Brower~I am enthusiastic over humanity's extraordinary and sometimes very timely ingenuities. If you are in a shipwreck and all the boats are gone, a piano top buoyant enough to keep you afloat may come along and make a fortuitous life preserver. This is not to say, though, that the best way to design a life preserver is in the form of a piano top. I think that we are clinging to a great many piano tops in accepting yesterday's fortuitous contriving as constituting the only ends for solving a given problem.|R. Buckminster Fuller~Our scientific power has outrun our spiritual power. We have guided missiles and misguided men.|Martin Luther King, Jr.~The first merit which attracts in the pages of a good writer, or the talk of a brilliant conversationalist, is the apt choice and contrast of the words employed. It is indeed a strange art to take these blocks rudely conceived for the purpose of the market or the bar, and by tact of application touch them to the finest meanings and distinctions.|Robert Louis Stevenson~One of the most important things about leadership is that you have to have the kind of humility that will allow you to be coached.|Jim Yong Kim~Anyone can look for fashion in a boutique or history in a museum. The creative person looks for history in a hardware store and fashion in an airport.|Robert Wieder}

{=(COMMENT):60 random most common words, picked thanks to a random index position}
{=(wordsText):`{lower:{w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})} {w({{ra}})}}`}

{=(quoteRaw):{#:{quotesList}}}
{=(quoteContent):{quoteRaw(1):|}}
{=(quoteAuthor):{quoteRaw(2):|}}
{=(quoteText):> {quoteContent}
*— {quoteAuthor}*}

{=(testTypes):random quote words random placeholder}

{=(COMMENT):Substring matched test type}
{=(testType):{testTypes({{i}({l2}):{{r}({l2},. {l2} .):{testTypes}}})}}

{=(f.randomText):#:quoteText~wordsText}
{=(f.quoteText):#:quoteText}
{=(f.wordsText):#:wordsText}

{=(COMMENT):Final text to pick, randomly}
{=(finalText):{{{f.{testType}Text}}}}

{=(finalTestType):{{r}(false,words):{{r}(true,quote):{{ctn}(>):{finalText(1)}}}}}

{=(isStartSubcommand):{in(true):{{ctn}(start):{subcommand}} {{ctn}(go):{subcommand}}}}
{=(defaultTextToGenerate):random}
{=(COMMENT):TO-DO: Add substring matching for the second argument when "start" or "go", and return the text type to return}
{=(textTypeToGenerate):{defaultTextToGenerate}}

{=(COMMENT):Counting the characters and the words of the currently-picked final text. Also counts the spaces}
{=(spacedText):{{r}(, ):{{r}(>,):{{r}(`,):{finalText(1):*}}}}}
{=(`):just to stop this green insanity}
{=(spacedText):{spacedText(2+)}}
{=(charactersNoSpace):{{i}({ph}):{spacedText} {ph}}}
{=(wordsCount):{{i}({ph}):{finalText} {ph}}}
{=(spacesCount):{m:trunc({wordsCount}-1)}}
{=(charactersCount):{m:trunc({charactersNoSpace}+{spacesCount})}}

{=(averageKeystrokes):5}

{=(providedUnix):1639512916}
{=(providedUnix):{l3}}

{=(unixDelta):{m:trunc(abs({unix}-{providedUnix}))}}
{=(COMMENT):!elaps snippet copy paste}
{=(hours):{m:trunc({unixDelta}/3600)}}
{=(minutes):{m:trunc(({unixDelta}/60)%60)}}
{=(seconds):{m:trunc({unixDelta}%60)}}

{=(COMMENT):Returns something like 1m35s}
{=(elapsedTime):{if({hours}>0):{hours}h}{if({minutes}>0):{minutes}m}{if({seconds}>0):{seconds}s}}

{=(rawCPM):{m:{l2}*(60/{unixDelta})}}
{=(rawCPM):{m:round({rawCPM}*10^{decimals})/10^{decimals}}}
{=(rawCPM):{{r}(Z,):{{r}(.0Z,):{m:{rawCPM}}Z}}}

{=(COMMENT):The formula that MonkeyType uses to calculate their WPM.}
{=(monkeyTypeWPM):{m:({rawCPM})/{averageKeystrokes}}}
{=(COMMENT):Rounding it to N decimals}
{=(monkeyTypeWPM):{m:round({monkeyTypeWPM}*10^{decimals})/10^{decimals}}}
{=(COMMENT):Conditionally returns the decimals, only when there was any, so there isn't ".0" at the end}
{=(monkeyTypeWPM):{{r}(Z,):{{r}(.0Z,):{m:{monkeyTypeWPM}}Z}}}

{=(COMMENT):Unused attempts:}
{=(COMMENT):Raw WPM calculated from the given amount of characters and the elapsed time in minutes}
{=(rawWPM):{m:trunc(({l2}/{averageKeystrokes})/({unixDelta}/60))}}

{=(COMMENT):Returns a datetime in that format:
Dec 14 2021 6:27 PM UTC}
{=(formattedDatetime):{strf:%b %-d %Y %-I:%M %p UTC}}

{=(startedTimestamp):<t:{unix}:R>}

{=(COMMENT):---- CLOUDINARY IMAGE OVERLAY PART ----}

{=(COMMENT):Cloudinary banner overlay part}
{=(clBackground):https://cdn.discordapp.com/attachments/345926635993694208/921016257862586408/final_results_overlay.png}
{=(clPrefix):https://res.cloudinary.com/demo/image/fetch}

{=(fl):fl_layer_apply}

{=(COMMENT):Theme colors}
{=(bgColor):121520}
{=(titleColor):676E8A}
{=(textColor):FFFFFF}

{=(COMMENT):Image size}
{=(height):244}
{=(width):333}

{=(font):Roboto%20Mono}
{=(fontSize):27}
{=(testTypeFontSize):16}
{=(datetimeFontSize):11}
{=(usernameFontSize):13}

{=(COMMENT):Character management}
{=(comma):%2C %252C}
{=(slash):%252F}

{=(COMMENT):URLencoded and sanitized username}
{=(saniUser):{{r}(/,{slash}):{{r}({comma(1)},{comma(2)}):{urlencode:{user(name)}}}}}

{=(COMMENT):Color Text}
{=(clrt):co_rgb:{textColor}}
{=(clrtitle):co_rgb:{titleColor}}
{=(lt):l_text:{font}}
{=(COMMENT):Top Left Bottom Left, and Bottom Right Gravity}
{=(tl):g_north_west}
{=(bl):g_south_west}
{=(br):g_south_east}

{=(COMMENT):Offsets and x and y coordinates}
{=(topOffsetTestType):19}
{=(leftOffsetTestType):116}

{=(leftOffsetCol1):19}
{=(leftOffsetCol2):150}

{=(topOffsetRow1):45}
{=(topOffsetRow2):135}

{=(botOffsetFooter):16}

{=(COMMENT):Layer flags, disallowing text to be trimmed and overflowing the image}
{=(noTrim):fl_text_no_trim}
{=(noOF):fl_disallow_overflow}

{=(clTestType):{lt}_{testTypeFontSize}:{finalTestType},{clrt}/{fl},{tl},x_{leftOffsetTestType},y_{topOffsetTestType}}
{=(clWPM):{lt}_{fontSize}:{monkeyTypeWPM},{clrt}/{fl},{tl},x_{leftOffsetCol1},y_{topOffsetRow1}}
{=(clCPM):{lt}_{fontSize}:{rawCPM},{clrt}/{fl},{tl},x_{leftOffsetCol2},y_{topOffsetRow1}}
{=(clTime):{lt}_{fontSize}:{elapsedTime},{clrt}/{fl},{tl},x_{leftOffsetCol1},y_{topOffsetRow2}}
{=(clChars):{lt}_{fontSize}:{urlencode:{l2}},{clrt}/{fl},{tl},x_{leftOffsetCol2},y_{topOffsetRow2}}
{=(clDatetime):{lt}_{datetimeFontSize}:{urlencode:{formattedDatetime}},{clrtitle}/{fl},{bl},x_{leftOffsetCol1},y_{leftOffsetCol1}}
{=(clUsername):{lt}_{usernameFontSize}_right:{saniUser},{clrtitle}/{fl},{br},x_{leftOffsetCol1},y_{leftOffsetCol1}}

{=(resultsBanner):{clPrefix}/{clWPM}/{clCPM}/{clTime}/{clChars}/{clDatetime}/{clUsername}/{clBackground}}

{=(COMMENT):Checking if the second and third arguments are positive intetegers. It will be used when the user stops a test and provides a number of characters and a unix value.}
{=(areStopNumbers):{in(1 1):{m:sgn({l2})} {m:sgn({l3})}}}

{=(COMMENT):Output & embed management}
{=(twr):<:twright:688074727167754320>}

{=(title.start):Type as fast as you can}
{=(desc.start):{finalText}

Started {startedTimestamp} by {user(mention)}.

When you're done, send your attempt then copy and paste:```css
{tag} stop {charactersCount} {unix}
```}
{=(img.start):}
{=(footer.start):}

{=(title.stop):Results}
{=(desc.stopInvalid):Come on {user(mention)}, don't try to fool the game.
Please copy and paste the values provided when you started your test, so the bot can calculate and display your results!

Now that you took time to read this error message, I suppose it is preferrable to start a new test and play the game genuinely. Have fun!```css
{tag} start [quote|words|random]
```}
{=(desc.stopValid):**Play again, {user(mention)}?**
Optionally specify a test type when starting:```css
{tag} start [quote|words|random]
```}
{=(desc.stop):{desc.stop{if({areStopNumbers}==true):Valid|Invalid}}}
{=(img.stop):{{if({areStopNumbers}==true):resultsBanner}}}
{=(footer.stop):Note: WPM and CPM values may not reflect your real typing speed.}

{=(title.help):Typing Speed Test}
{=(desc.help):The world's first way to know your Typing Speed with <@235148962103951360>, directly in Discord!

**How to Play**
`1)` Start a test and optionally specify a test type (defaults to `random`) using: ```css
{tag} start [quote|words|random]
``` `2)` Type the quote or words displayed, and send them in chat
`3)` Follow the instructions to stop the test and see your results!

> __Note:__ Keep in mind that the WPM (Words Per Minute) and CPM (Characters Per Minute) values are only indicators and may not reflect the typing speed you reach on online tests.

**Recommended Typing Speed Websites**
{twr} [MonkeyType](https://monkeytype.com/) — Minimalistic & Customizable
{twr} [Keyma.sh](https://keyma.sh/) — Gamified & Competitive Typing
{twr} [10FastFingers](https://10fastfingers.com/typing-test/english) — A reference, with many supported languages
{twr} [TypeRacer](https://play.typeracer.com/) — Multiplayer Live Typing

Feel like a nerd and want to know everything behind this command?
Then use `{tag} nerd` and have a read!
}
{=(img.help):}
{=(footer.help):}

{=(title.nerd):Nerdy Stuff}
{=(desc.nerd):You seem interested and curious about more things...

**How do you get my results from these numbers you ask me to paste after starting a test?**
The first value is the total amount of characters in the text, and the second value is called a ["unix"](https://en.wikipedia.org/wiki/Unix) value, which returns the current amount of seconds since January 1st, 1970.

The amount of characters is needed for the WPM & CPM calculation, and the unix value is used to return the difference in seconds between when the test was started and when you finished it, which is then used to display the elapsed time.

**Why are my WPM so different and lower than when I do tests on regular websites?**
I dug their [GitHub repository](https://github.com/Miodec/monkeytype) and found the formula that the website [MonkeyType](https://monkeytype.com/) uses, which takes the amount of characters and the time in seconds that the test lasted for.
I currently don't exactly know what makes it *that* different, given that I use the exact same formula, minus considering errors/mistakes and accuracy.

**How are my WPM and CPM then calculated?**
From the total amount of characters in the text and the elapsed time of the test in seconds, the CPM formula is as followed:
`CPM = [amount of characters] * (60 / [elapsed time in seconds])`

On [10FF's FAQ](https://10fastfingers.com/faq), they explain that [Wikipedia says](https://en.wikipedia.org/wiki/Words_per_minute#:~:text=the%20definition%20of%20each%20"word"%20is%20often%20standardized%20to%20be%20five%20characters%20or%20keystrokes%20long%20in%20English%2C%5B1%5D%20including%20spaces%20and%20punctuation.) that on average in the English language for the most common words, a word is considered to be composed of approximately 5 keystrokes.
A keystroke represents the amount of keys you press on your keyboard when typing characters. For example, `A` requires that you press `Shift` and the `a` keys, which represent 2 keystrokes.

Knowing this, they divide the amount of CPM by those 5 average keystrokes to get the number of WPM.
`WPM = [CPM / 5]`

**What language was used to create this command?**
A custom-made *light* programming language made specifically for <@235148962103951360> called [TagScript](https://docs.carl.gg/tags-and-triggers/tags-advanced-usage/).

**What do you use to generate my results on an image/banner?**
I use the [Cloudinary](https://cloudinary.com/) website, which allows for image generation, overlays and transformations, directly using URL parameters. It is *very* powerful ─ a lot more than it may first seem to be ─ although it took me hours of reading their documentation and of practice to figure out most of the things I know about it.

> __Note:__ All subcommands and arguments of this command include substring matching, meaning that you don't have to type the entire word for it to be recognized.
> For example, you could type `{tag} s q` to start a new test with a quote, or `{tag} s w` with words, or `{tag} n` for the `nerd` subcommand.
}
{=(img.nerd):}
{=(footer.nerd):Eager for more? Google is your best friend!}

{=(em.title):{title.{subcommand}}}
{=(em.desc):{desc.{subcommand}}}
{=(em.img):{img.{subcommand}}}
{=(em.footer):{footer.{subcommand}}}
{embed(color):#2f3136}
