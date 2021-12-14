{=(COMMENT):TagScript blocks aliases}
{=(j):join}
{=(r):replace}
{=(i):index}
{=(ctn):contains}

{=(largs):{lower:{args}}}
{=(jargs):{{j}(~):! {largs}}}
{=(l1):{list(1):{jargs}}}
{=(l2):{list(2):{jargs}}}
{=(l3):{list(3):{jargs}}}

{=(COMMENT):Fallback value}
{=(fb):None}
{=(ph):%&$}

{=(COMMENT):List of subcommands. If not found, then defaults to "help".}
{=(subcommands):help start go finish stop help placeholder}

{=(COMMENT):Substring matched subcommand}
{=(subcommand):{subcommands({{i}({l1}):{{r}({l1},. {l1} .):{subcommands}}})}}
{=(COMMENT):Allowing aliases but making them return their exclusive equivalent. go becomes start and finish becomes stop}
{=(subcommand):{{r}(go,start):{{r}(finish,stop):{subcommand}}}}

{=(COMMENT):500 most common English words. Shortened from "wordsList" to "w" just because I will randomize it a lot}
{=(w):#:{{j}(~):the of to and a in is it you that he was for on are with as his they be at one have this from or had by hot but some what there we can out other were all your when up use word how said an each she which do their time if will way about many then them would write like so these her long make thing see him two has look more day could go come did my sound no most number who over know water than call first people may down side been now find any new work part take get place made live where after back little only round man year came show every good me give our under name very through just form much great think say help low line before turn cause same mean differ move right boy old too does tell sentence set three want air well also play small end put home read hand port large spell add even land here must big high such follow act why ask men change went light kind off need house picture try us again animal point mother world near build self earth father head stand own page should country found answer school grow study still learn plant cover food sun four thought let keep eye never last door between city tree cross since hard start might story saw far sea draw left late run don't while press close night real life few stop open seem together next white children begin got walk example ease paper often always music those both mark book letter until mile river car feet care second group carry took rain eat room friend began idea fish mountain north once base hear horse cut sure watch color face wood main enough plain girl usual young ready above ever red list though feel talk bird soon body dog family direct pose leave song measure state product black short numeral class wind question happen complete ship area half rock order fire south problem piece told knew pass farm top whole king size heard best hour better true during hundred am remember step early hold west ground interest reach fast five sing listen six table travel less morning ten simple several vowel toward war lay against pattern slow center love person money serve appear road map science rule govern pull cold notice voice fall power town fine certain fly unit lead cry dark machine note wait plan figure star box noun field rest correct able pound done beauty drive stood contain front teach week final gave green oh quick develop sleep warm free minute strong special mind behind clear tail produce fact street inch lot nothing course stay wheel full force blue object decide surface deep moon island foot yet busy test record boat common gold possible plane age dry wonder laugh thousand ago ran check game shape yes hot miss brought heat snow bed bring sit perhaps fill east weight language among}}

{=(COMMENT):List of quotes and their respective author.
https://thepracticetest.com/typing/tests/inspirational-quotes/}
{=(quotesList):You can fool all of the people some of the time, and some of the people all of the time, but you can't fool all of the people all of the time.|Abraham Lincoln~After you've done a thing the same way for two years, look it over carefully. After five years, look at it with suspicion. And after ten years, throw it out and start all over.|Alfred Edward Perlman~One cannot always live in the palaces and state apartments of language, but we can refuse to spend our days in searching for its vilest slums.|William Watson~A new idea is delicate. It can be killed by a sneer or a yawn; it can be stabbed to death by a quip and worried to death by a frown on the right man's brow.|Charles Brower~I am enthusiastic over humanity's extraordinary and sometimes very timely ingenuities. If you are in a shipwreck and all the boats are gone, a piano top buoyant enough to keep you afloat may come along and make a fortuitous life preserver. This is not to say, though, that the best way to design a life preserver is in the form of a piano top. I think that we are clinging to a great many piano tops in accepting yesterday's fortuitous contriving as constituting the only ends for solving a given problem|R. Buckminster Fuller~Our scientific power has outrun our spiritual power. We have guided missiles and misguided men.|Martin Luther King, Jr.~The first merit which attracts in the pages of a good writer, or the talk of a brilliant conversationalist, is the apt choice and contrast of the words employed. It is indeed a strange art to take these blocks rudely conceived for the purpose of the market or the bar, and by tact of application touch them to the finest meanings and distinctions.|Robert Louis Stevenson~One of the most important things about leadership is that you have to have the kind of humility that will allow you to be coached.|Jim Yong Kim~Anyone can look for fashion in a boutique or history in a museum. The creative person looks for history in a hardware store and fashion in an airport.|Robert Wieder}

{=(COMMENT):60 random most common words}
{=(wordText):`{lower:{{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}} {{w}}}`}

{=(quoteRaw):{#:{quotesList}}}
{=(quoteContent):{quoteRaw(1):|}}
{=(quoteAuthor):{quoteRaw(2):|}}
{=(quoteText):> {quoteContent}
*— {quoteAuthor}*}

{=(randomText):#:quoteText~wordText}

{=(COMMENT):Final text to pick, randomly}
{=(finalText):{{randomText}}}

{=(isStartSubcommand):{in(true):{{ctn}(start):{subcommand}} {{ctn}(go):{subcommand}}}}
{=(defaultTextToGenerate):random}
{=(COMMENT):TO-DO: Add substring matching for the second argument when "start" or "go", and return the text type to return}
{=(textTypeToGenerate):{defaultTextToGenerate}}

{=(COMMENT):Counting the characters and the words of the currently-picked final text}
{=(spacedText):{{r}(, ):{{r}(>,):{{r}(`,):{finalText(1):*}}}}}
{=(`):just to stop this green insanity}
{=(spacedText):{spacedText(2+)}}
{=(charactersCount):{{i}({ph}):{spacedText} {ph}}}
{=(wordsCount):{{i}({ph}):{finalText} {ph}}}

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

{=(COMMENT):Raw WPM calculated from the given amount of characters and the elapsed time in minutes}
{=(rawWPM):{m:trunc(({l2}/{averageKeystrokes})/({unixDelta}/60))}}

{=(COMMENT):Returns a datetime in that format:
Dec 14 2021 6:27 PM UTC}
{=(formattedDatetime):{strf:%b %-d %Y %-I:%M%p UTC}}

{=(startedTimestamp):<t:{unix}:R>}

{embed(color):#2f3136}

{=(msg.start):{finalText}
characters:
`{charactersCount}`
words:
`{wordsCount}`
started:
{startedTimestamp}

when you're done, copy and paste:```css
!type stop {charactersCount} {unix}}
```
}
{=(msg.stop):raw wpm:
`{rawWPM}`
elapsed time:
`{elapsedTime}`
characters:
`{l2}`
datetime:
{formattedDatetime}}
{=(msg.help):Typing Speed Test, this is the help subcommand's message}
{=(em.desc):{msg.{subcomand}}}
