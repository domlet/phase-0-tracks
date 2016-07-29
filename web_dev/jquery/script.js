    // <button id="select">Select Words</button>
    // <button id="war">War Story</button>
    // <button id="peace">Peace Story</button>

    var button1 = document.getElementById("select");
    button1.addEventListener("click", selectWords);

    var button2 = document.getElementById("peace");
    button2.addEventListener("click", replaceWords);

    var button3 = document.getElementById("war");
    button3.addEventListener("click", reload);

    function reload() {
        location.reload();
    }

    // HIGHLIGHT WAR NOUNS
    function selectWords() {
        $("em").css('background-color', 'yellow');
        $("strong").css('background-color', '#ccffff');
    }

    // COLLECT WAR NOUNS INTO ARRAYS
    var warNouns = $("em").map(function() {
        return $(this).text()
    }).get();
    var warNounsPl = $("strong").map(function() {
        return $(this).text()
    }).get();

    // DECLARE ARRAY OF PEACE NOUNS
    var peaceNouns = ['harmony', 'agreement', 'accord', 'friendship', 'love', 'reconciliation', 'truce', 'unity', 'amity', 'armistice', 'cessation', 'conciliation', 'concord', 'neutrality', 'order', 'pacification', 'pacifism', 'treaty', 'unanimity', 'union', 'harmony', 'agreement', 'accord', 'friendship', 'love', 'reconciliation', 'truce', 'unity', 'amity', 'armistice', 'cessation', 'conciliation', 'concord', 'neutrality', 'order', 'pacification', 'pacifism', 'treaty', 'unanimity', 'union'];
    var peaceNounsPl = ['hearts', 'rainbows', 'unicorns', 'cookies', 'candies', 'friends', 'lovers', 'cupcakes', 'dandelions', 'roses', 'daisies', 'petit fours', 'dances', 'pillows', 'hearts', 'rainbows', 'unicorns', 'cookies', 'candies', 'friends', 'lovers', 'cupcakes', 'dandelions', 'roses', 'daisies', 'petit fours', 'dances', 'pillows'];

    // ITERATE THRU PEACE NOUNS
    function replaceWords() {
        for (i = 0; i < warNouns.length; i++) {
            var nextPeaceNoun = peaceNouns[i];
            $("em:first").text(nextPeaceNoun);
            $("em:first").replaceWith("<span>" + nextPeaceNoun + "</span>");
        }
        for (i = 0; i < warNounsPl.length; i++) {
            var nextPeaceNounPl = peaceNounsPl[i];
            $("strong:first").text(nextPeaceNounPl);
            $("strong:first").replaceWith("<span>" + nextPeaceNounPl + "</span>");
        }
        $("span").css('background-color', 'pink');
    }
