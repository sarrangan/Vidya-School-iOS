//
//  Utils.m
//  Practise
//
//  Created by DX175 on 11/19/14.
//  Copyright (c) 2014 DX175. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utils.h"

@interface Utils ()

@end

@implementation Utils : NSObject

+ (NSArray *) loadHeaderLineNumbers :(int) numOfLines{
    NSMutableArray *lineNums = [[NSMutableArray alloc] init];
        NSInteger numOfRows = numOfLines / 10;
        for(int i = 0; i < numOfRows; i++){
            NSString *line = @"Line ";
            NSString *firstNum;
            NSString *secondNum;
            if(i == 0){
                firstNum = @"1-";
                secondNum = @"10";
            }
            else{
                firstNum = [[@(i) stringValue] stringByAppendingString:@"1-"];
                secondNum = [[@(i + 1) stringValue] stringByAppendingString:@"0"];
            }
            line = [line stringByAppendingString:[firstNum stringByAppendingString:secondNum]];
            [lineNums addObject:line];
        }
        if(numOfLines % 10 != 0){
            NSString *lastLine;
            if(numOfRows == 0){
                lastLine = [@"Line " stringByAppendingString:@"1"];
            }
            else{
                lastLine = [@"Line " stringByAppendingString:[[@(numOfRows) stringValue] stringByAppendingString:@"1"]];
            }
            if(numOfLines % 10 > 1){
                lastLine = [lastLine stringByAppendingString:[@"-" stringByAppendingString:[@(numOfLines) stringValue]]];
            }
            [lineNums addObject:lastLine];
        }
    return lineNums;
}

+ (NSDictionary *) loadNeelaSuktam {
    NSDictionary *lyrics =
            @{@"Line 1-7" :@[
              @"om nīḻām devigum śaraṇamaham prapatye sutaritarasate namaha",
              @"gruṇāhī",
              @"dhruthavathī savitharādhipathyaih payasvathī ranthirāśāno asthu",
              @"dhruvā dhiśām viṣṇupathnyaghorāsyeśānā sahāsoyā manothā",
              @"bŕuḥaspathirṁāthariśvotha vāyussanḍhuvānā vāthā abhi no gŕuṇant",
              @"viṣtaṁbho dhivo ḍharuṇah pŕuṭhivyā asyeśānā jagatho viṣṇupathnī",
              @"mahadevyai ca vidmahe visnupatni ca dhimahi tanno nīḻā pracodayat"]};
    
    return lyrics;
}

+ (NSArray *) linesNeelaSuktam{
    return [Utils loadHeaderLineNumbers:7];
}

+ (NSDictionary *) loadDurgaSuktam {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"Om jātavedase sunavāma soma marātīyato nidahāti vedaḥ",
              @"sa naḥ parṣadati durgāṇi viśvā nāveva sindhuṁ duritātyagniḥ",
              @"tāmagnivarṇāṁ tapasā jvalantīṁ vairocanīṁ karmaphaleṣu juṣṭām",
              @"durgāṁ deviśaraṇamahaṁ prapadye sutarasi tarase namaḥ",
              @"agne tvaṁ pārayā navyo asmānthsvastibhiriti durgāṇi viśvā",
              @"pūśca pṛthvī bahulāna urvī bhavā tokāya tanayāya śaṁyoḥ",
              @"viśvāni no durgahā jātavedassindhu na nāvā duritātiparṣi",
              @"agne atrivanmanasā gṛṇāno smākaṁ bodhayitvā tanūnām",
              @"pṛtanā jitagum sahamānamugramagnigum huvem paramāthsadhasthāt",
              @"sa naḥ parṣadati durgāṇi viśvā kśāmaddevo ati duritātyagniḥ"],
      @"Line 11-15" :@[
              @"pratnoṣi kamīḍyo adhvareṣu sanācca hotā navyaśca sathsi",
              @"svāṁcāgne tanuvam piprayasvāsmabhyaṁ ca saubhāgyamāyajasva",
              @"gobhirjuṣṭamayujo niṣitktaṁ tavendra viṣṇoranusaṁcarema",
              @"nākasya pṛṣṭhamabhi saṁvasāno vaiṣṇavīṁ loka iha mādayantām",
              @"katyanaya vidmahe kanyakumari dheemahi tanno durgihi procoda"]};
    
    return lyrics;
}

+ (NSArray *) linesDurgaSuktam{
    return [Utils loadHeaderLineNumbers:15];
}

+ (NSDictionary *) loadPurushaSuktam {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"sahasra shirsha purushaha",
              @"sahasrakshas sahasrapat",
              @"sa bhumim vishvato vritva",
              @"atyatishthad dhashangulam",
              @"purusha evedagam sarvam",
              @"yadbhutam yaccha bhavyam",
              @"utamritatva syeshanaha",
              @"yadanne natirohati",
              @"etavanasya mahima",
              @"Ato jyayagashcha purushaha"],
      @"Line 11-20" :@[
              @"padosya vishva bhutani",
              @"tripadasya mritam divi",
              @"tripadurdhva udaitpurushaha",
              @"padosyeha bhavatpunaha",
              @"tato vishvajya kramat",
              @"sashana ashane abhi",
              @"tasmad viradajayata",
              @"virajo adhi purushah",
              @"sa jato atyarichyata",
              @"pashchad bhumimatho puraha"],
      @"Line 21-30" :@[
              @"yatpurushena havisha",
              @"deva yajnam atanvata",
              @"vasanto asyasidajyam",
              @"grishma idhmash sharaddhavihi",
              @"saptasyasan paridhayaha",
              @"trissapta samidhaha krataha",
              @"deva yadjajnam tanvanaha",
              @"abadhnan purusham pashum",
              @"tam yajnam barhishipraukshan",
              @"purusham jatamagrataha"],
      @"Line 31-40" :@[
              @"tena deva ayajantaha",
              @"sadhya rishayashchaye",
              @"tasmad yajnat sarvahutaha",
              @"sambhritam vrishadajyam",
              @"pashugasta gashchakre vayavyan",
              @"aranyan gramyashcaye",
              @"tasmad yajnat sarvahutaha",
              @"richa ssamani jagnire",
              @"chandhagamsi jagnire tasmat",
              @"yajus tasmad ajayata"],
      @"Line 41-50" :@[
              @"tasmadashva ajayanta",
              @"ye ke chobhaya dataha",
              @"gavo ha jagnire tasmat",
              @"tasmad jnata ajavayaha",
              @"yatpurusham vyadadhuhu",
              @"kadhita vyakalpayan",
              @"mukham kimasya kau bahu",
              @"kavuru padavuchayate",
              @"brahmanosya mukhamasit",
              @"bahu rajanyah kritaha"],
      @"Line 51-60" :@[
              @"uru tadasya yadvaishyaha",
              @"padhyagam shudro ajayata",
              @"chandrama manaso jataha",
              @"chakshoh suryo ajayata",
              @"mukhad indrash chagnishcha",
              @"pranadvayur ajayata",
              @"nabhya asidantariksham",
              @"shirshno dyauh samavartata",
              @"padhyam bhumirdishash shrotrat",
              @"tada lokagamm akalpayan"],
      @"Line 61-70" :@[
              @"vedahametam purusham mahantam",
              @"adityavarnam tamasastu pare",
              @"sarvani rupani vichitya dhiraha",
              @"namani kritvabhivadan yadaste",
              @"dhata purastadya mudajahara",
              @"shakrah pravidvan pradishashcha tasraha",
              @"tamevam vidvan amrita iha bhavati",
              @"nanyah pantha ayanaya vidyate",
              @"yajnena yajnamayajanta devaha",
              @"tani dharmani pradhamanyasan"],
      @"Line 71-80" :@[
              @"te ha nakam mahimanas sachante",
              @"yatra purve sadhyah santi devaha",
              @"adbhya sambhutah prithivyai rasaachh",
              @"vishvakarmanas samavartatadhi",
              @"tasya tvashta vidadha drupameti",
              @"tatpurushasya vishvamajanamagre",
              @"vedahametam purusham mahantam",
              @"adityavarnam tamasah parastat",
              @"tamevam vidvan amrita iha bhavati",
              @"nanyah pantha vidyate yanaya"],
      @"Line 81-90" :@[
              @"prajapatishcharati garbhe antaha",
              @"ajayamano bahudha vijayate",
              @"tasya dhirah parijananti yonim",
              @"marichinam padamicchanti vedhasaha",
              @"yo devebhya atapati",
              @"yo devanam purohitaha",
              @"purvo yo devebhyo jataha",
              @"namo ruchaya brahmaye",
              @"rucham brahmam janayantaha",
              @"deva agre tadabruvan"],
      @"Line 91-100" :@[
              @"yastvaivam brahmano vidyat",
              @"tasya deva asanvashe",
              @"hrishcha te lakshmishcha patnyau",
              @"ahoratre parshve",
              @"nakshatrani rupam",
              @"ashvinau vyattam",
              @"ishtam manishana",
              @"amun manishana",
              @"sarvam manishana",
              @"Om shanti shanti shantihi"]};
    return lyrics;
}

+ (NSArray *) linesPurushaSuktam{
    return [Utils loadHeaderLineNumbers:100];
}

+ (NSDictionary *) loadMedhaSuktam {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"oṃ medhādevī juṣamāṇā na āgādviśvācī bhadrā sumanasya mānā",
              @"tvayā juṣṭā nudamānā duruktān bṛhadvadema vidathe suvīrāḥ",
              @"tvayā juṣṭa ṛṣirbhavati devi tvayā brahmā gataśrīruta tvayā”",
              @"tvayā juṣṭaścitraṃ vindate vasu sā no juṣasva draviṇo na medhe",
              @"medhāṃ ma indro dadātu medhāṃ devī sarasvatī",
              @"medhāṃ me aśvināvubhāvādhattāṃ puṣkarasrajā",
              @"apsarāsu ca yā medhā gandharveṣu ca yanmanaḥ",
              @"daivīṃ medhā sarasvatī sā māṃ medhā surabhirjuṣatāg svāhā",
              @"āmāṃ medhā surabhirviśvarūpā hiraṇyavarṇā jagatī jagamyā",
              @"ūrjasvatī payasā pinvamānā sā māṃ medhā supratīkā juṣantām"],
      @"Line 11-14" :@[
              @"mayi medhāṃ mayi prajāṃ mayyagnistejo dadhātu",
              @"mayi medhāṃ mayi prajāṃ mayīndra indriyaṃ dadhātu",
              @"mayi medhāṃ mayi prajāṃ mayi sūryo bhrājo dadhātu",
              @"oṃ śāntiḥ śāntiḥ śāntiḥ"]};
    
    return lyrics;
}

+ (NSArray *) linesMedhaSuktam{
    return [Utils loadHeaderLineNumbers:14];
}

+ (NSDictionary *) loadNarayanaSuktam {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"sahasraśīrṣaṁ devaṁ viśvākśaṁ viśvaśambhuvaṁ",
              @"viśvaṁ nārāyaṇaṁ devamakśaraṁ paramaṁ padam",
              @"viśvataḥ paramam nityaṁ viśvaṁ nārāyaṇagï harim",
              @"viśvamevedaṁ puruṣastadviśvamupajīvat",
              @"patiṁ viśvasyātmeśvaragï śāśvatagï śivamacyutam",
              @"nārāyaṇaṁ mahājñeyaṁ viśvātmānaṁ parāyaṇam",
              @"nārāyaṇaḥ paro jyotirātmā nārāyaṇaḥ paraḥ",
              @"nārāyaṇaḥ paraṁ brahma tattvaṁ nārāyaṇaḥ paraḥ",
              @"nārāyaṇaḥ paro dhyātā dhyānam nārāyaṇaḥ paraḥ",
              @"yacca kiñcijjagatsarvaṁ dṛśyate śrūyate’pi vā"],
      @"Line 11-20" :@[
              @"antarbahiśca tatsarvaṁ vyāpya nārāyaṇaḥ sthitaḥ",
              @"anantamavyayaṁ kavigï samudre’ntaṁ  viśvaśambhuvam",
              @"padmakośapratīkāśagï hṛdayaṁ cāpyadhomukham",
              @"adho niṣṭayā vitasyānte nābhyāmupari tiṣṭhat",
              @"jvālamālākulaṁ bhāti viśvasyāyatanaṁ mahat",
              @"santatagï śilābhistu lambatyākośasannibham",
              @"tasyānte suṣiragï sūkśmaṁ tasmin sarvaṁ pratiṣṭhitam",
              @"tasya madhye mahanagnir viśvārcir viśvatomukhaḥ",
              @"so’grabhug vibhajan tiṣṭhan āhāramajaraḥ kaviḥ",
              @"tiryagūrdhvamadaḥśāyī raśmayastasya santatāḥ"],
      @"Line 21-30" :@[
              @"santāpayati svaṁ dehamāpātatalamastakam",
              @"tasya madhye vahniśikhā aṇīyordhvā vyavasthitaḥ",
              @"nīlatoyadamadhyasthād vidyullekheva bhāsvarā",
              @"nīvāraśūkavattanvī pītā bhāsvatyaṇūpamā",
              @"tasyāḥ śikhāyā madhye paramātmā vyavasthitaḥ",
              @"sa brahma sa śivaḥ sa hariḥ sendraḥ so’kṣaraḥ  paramaḥ svarāṭ",
              @"ṛtagï satyaṁ paraṁ brahma puruṣaṁ kṛṣṇapiṅgalam",
              @"ūrdhvaretaṁ virūpākśaṁ viśvarūpāya vai namo namaḥ",
              @"ōm nārāyaṇāya vidmahe vāsudevāya dhīmahi",
              @"tanno viṣṇuḥ pracodayāt"]};
    
    return lyrics;
}

+ (NSArray *) linesNarayanaSuktam{
    return [Utils loadHeaderLineNumbers:30];
}

+ (NSDictionary *) loadSriSuktam {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"ōm hiraṇyavarṇāṁ hariṇīṁ suvarṇarajatasrajām",
              @"candrāṁ hiraṇmayīṁ lakṣmīṁ jātavedo ma āvah",
              @"tāṁ ma āvaha jātavedo lakṣmīmanapagāminīm",
              @"yasyāṁ hiraṇyaṁ vindeyaṁ gāmaśvaṁ puruṣānaham",
              @"aśvapūrvāṁ rathamadhyāṁ hastinādapramodinīm",
              @"śriyaṁ devīmupahvaye śrīrmā devīrjuṣatām",
              @"kāṁ sosmitāṁ hiraṇyaprākārāmārdrāṁ jvalantīṁ tṛaptāṁ tarpayantīm",
              @"padme sthitāṁ padmavarṇāṁ tāmihopahvaye śriyam",
              @"candrāṁ prabhāsāṁ yaśasā jvalaṁtīṁ śriyaṁ loke devajuṣṭāmudārām",
              @"tāṁ padminīmīṁ śaraṇamahaṁ prapadye alakṣmīrme naśyatāṁ tvāṁ vṛṇe"],
      @"Line 11-20" :@[
              @"ādityavarṇe tapaso’dhijāto vanaspatistava vṛkṣo’tha bilvaḥ",
              @"tasya phalāni tapasā nudantu māyāntarāyāśca bāhyā alakṣmīḥ",
              @"upaitu māṁ devasakhaḥ kīrtiśca maṇinā saha",
              @"prādurbhūto’smi rāṣṭre’smin kīrtimṛddhiṁ dadātu me",
              @"kṣutpipāsāmalāṁ jyeṣṭhāmalakṣmīṁ nāśayāmyaham",
              @"abhūtimasamṛddhiṁ ca sarvāṁ nirṇuda me gṛahāt",
              @"gandhadvārāṁ durādharṣāṁ nityapuṣṭāṁ karīṣiṇīm",
              @"īśvarīṁ sarvabhūtānāṁ tāmihopahvaye śriyam",
              @"manasaḥ kāmamākūtiṁ vācaḥ satyamaśīmahi",
              @"paśūnāṁ rūpamannasya mayi śrīḥ śrayatāṁ yaśaḥ"],
      @"Line 21-30" :@[
              @"kardamena prajā bhūtā mayi sambhava kardama",
              @"śriyaṁ vāsaya me kule mātaraṁ padmamālinīm",
              @"āpaḥ sṛjantu snigdhāni ciklīta vasa me gṛhe",
              @"ni ca devīṁ mātaragï śriyaṁ vāsaya me kule",
              @"ārdrāṁ puṣkariṇīṁ puṣṭiṁ suvarṇāṁ hemamālinīm",
              @"candrāṁ hiraṇmayīṁ lakṣmīṁ jātavedo ma āvaha",
              @"ārdrāṁ yaḥ kariṇīṁ yaṣṭiṁ piṅgalāṁ padmamālinīm",
              @"sūryāṁ hiraṇmayīṁ lakṣmīṁ jātavedo ma āvaha",
              @"tāṁ ma āvaha jātavedo lakṣmīmanapagāminīm",
              @"yasyāṁ hiraṇyaṁ prabhūtaṁ gāvo dāsyo’śvānvindeyaṁ puruṣānaham"],
      @"Line 31-32" :@[
              @"mahādevyai ca vidmahe viṣṇupatnī ca dhīmahi",
              @"tanno lakṣmīḥ pracodayāt"]};
    
    return lyrics;
}

+ (NSArray *) linesSriSuktam{
    return [Utils loadHeaderLineNumbers:32];
}

+ (NSDictionary *) loadLSN {
    NSDictionary *lyrics =
    @{@"Line 1-10" :@[
              @"ōm śrī mātā śrī mahārāṅñī śrīmat-siṃhāsaneśvarī",
              @"cidagni kuṇḍasambhūtā devakāryasamudyatā",
              @"udyadbhānu sahasrābhā caturbāhu samanvitā",
              @"rāgasvarūpa pāśāḍhyā krodhākārāṅkuśojjvalā",
              @"manorūpekṣukodaṇḍā pañcatanmātra sāyakā",
              @"nijāruṇa prabhāpūra majjad-brahmāṇḍamaṇḍalā ",
              @"campakāśoka punnāga saugandhika lasatkacā",
              @"kuruvinda maṇiśreṇī kanatkoṭīra maṇḍitā ",
              @"aṣṭamī candra vibhrāja daḷikasthala śobhitā",
              @"mukhacandra kaḷaṅkābha mṛganābhi viśeṣakā"],
      @"Line 11-20" :@[
              @"vadanasmara māṅgalya gṛhatoraṇa cillikā",
              @"vaktralakṣmī parīvāha calanmīnābha locanā",
              @"navacampaka puṣpābha nāsādaṇḍa virājitā ",
              @"tārākānti tiraskāri nāsābharaṇa bhāsurā",
              @"kadamba mañjarīklupta karṇapūra manoharā ",
              @"tāṭaṅka yugaḷībhūta tapanoḍupa maṇḍalā",
              @"padmarāga śilādarśa paribhāvi kapolabhūḥ",
              @"navavidruma bimbaśrīḥ nyakkāri radanacchadā",
              @"śuddha vidyāṅkurākāra dvijapaṅkti dvayojjvalā",
              @"karpūravīṭi kāmoda samākarṣi digantarā"],
      @"Line 21-30" :@[
              @"nijasallāpa mādhurya vinirbhartsita kacchapī",
              @"mandasmita prabhāpūra majjatkāmeśa mānasā",
              @"anākalita sādṛśya cubuka śrī virājitā",
              @"kāmeśabaddha māṅgalya sūtra śobhita kantharā",
              @"kanakāṅgada keyūra kamanīya bhujānvitā",
              @"ratnagraiveya cintāka lola muktā phalānvitā",
              @"kāmeśvara premaratna maṇi pratipaṇastanī",
              @"nābhyālavāla romāḷi latā phala kucadvayī",
              @"lakṣyaroma latādhāratā samunneya madhyamā",
              @"stanabhāra daḷanmadhya paṭṭabandha vaḷitrayā"],
      @"Line 31-40" :@[
              @"aruṇāruṇa kausumbha vastra bhāsvat kaṭītaṭī",
              @"ratna kiṅkiṇikā ramya raśanā dāma bhūṣitā",
              @"kāmeśa jñāta saubhāgya mārdavoru dvayānvitā",
              @"māṇikya makuṭākāra jānudvaya virājitā",
              @"indragopa parikṣipta smara tūṇābha jaṅghikā",
              @"gūḍhagulbhā kūrmapṛṣṭha jayiṣṇu prapadānvitā",
              @"nakha dīdhiti sañchanna namajjana tamoguṇā",
              @"padadvaya prabhājāla parākṛta saroruhā",
              @"śiñjāna maṇimañjīra maṇḍita śrī padāmbujā",
              @"marāḷī mandagamanā mahālāvaṇya śevadhiḥ"],
      @"Line 41-50" :@[
              @"sarvāruṇā navadyāṅgī sarvābharaṇa bhūṣitā",
              @"śiva kāmeśvarāṅkasthā śivā svādhīna vallabhā",
              @"sumeru śṛṅgamadhyasthā śrīmannagara nāyikā",
              @"cintāmaṇi gṛhāntasthā pañca brahmāsana sthitā",
              @"mahāpadmāṭavī saṃsthā kadambavana vāsinī",
              @"sudhāsāgara madhyasthā kāmākṣī kāmadāyinī",
              @"devarṣi gaṇa saṅghāta stūyamānātma vaibhavā",
              @"bhaṇḍāsura vadhodyukta śaktisenā samanvitā",
              @"sampatkarī samārūḍha sindhura vraja sevitā",
              @"aśvārūḍhādhiṣṭhitāśva koṭi koṭibhir āvṛtā "],
      @"Line 51-60" :@[
              @"cakrarāja rathārūḍha sarvāyudha pariṣkṛtā",
              @"geyacakra rathārūḍha mantriṇī parisevitā",
              @"kiricakra rathārūḍha daṇḍanāthā puraskṛtā",
              @"jvālā mālinikākṣipta vahniprākāra madhyagā",
              @"bhaṇḍasainya vadhodyukta śakti vikrama harṣitā",
              @"nityā parākramāṭopa nirīkṣaṇa samutsukā",
              @"bhaṇḍaputra vadhodyukta bālā vikrama nanditā",
              @"mantriṇyambā viracita viṣaṅga vadha toṣitā",
              @"viśukra prāṇaharaṇa vārāhī vīrya nanditā",
              @"kāmeśvara mukhāloka kalpita śrī gaṇeśvarā"],
      @"Line 61-70" :@[
              @"mahāgaṇeśa nirbhinna vighnayantra praharṣitā",
              @"bhaṇḍāsurendra nirmukta śastra pratyastra varṣiṇī",
              @"karāṅguḷi nakhotpanna nārāyaṇa daśākṛtiḥ",
              @"mahā pāśupatāstrāgni nirdagdhāsura sainikā",
              @"kāmeśvarāstra nirdagdha sabhaṇḍāsura śūnyakā ",
              @"brahmopendra mahendrādi deva saṃstuta vaibhavā",
              @"hara netrāgni sandagdha kāma sañjīvanauṣadhiḥ",
              @"śrīmadvāgbhava kūṭaika svarūpa mukha paṅkajā",
              @"kaṇṭhādhaḥ kaṭi paryanta madhyakūṭa svarūpiṇī",
              @"śakti kūṭaika tāpanna kaṭyadhobhāga dhāriṇī"],
      @"Line 71-80" :@[
              @"mūla mantrātmikā mūlakūṭa traya kaḷebarā",
              @"kuḷāmṛtaika rasikā kuḷasaṅketa pālinī",
              @"kuḷāṅganā kuḷāntaḥsthā kauḷinī kuḷayoginī",
              @"akuḷā samayāntaḥsthā samayācāra tatparā",
              @"mūlādhāraika nilayā brahmagranthi vibhedinī",
              @"maṇipūrānta ruditā viṣṇugranthi vibhedinī",
              @"ājñā cakrāntarāḷasthā rudragranthi vibhedinī",
              @"sahasrārām bujā rūḍhā sudhā sārābhivarṣiṇī",
              @"taṭillatā samaruciḥ ṣaṭcakropari saṃsthitā",
              @"mahāśaktiḥ kuṇḍalinī bisatantu tanīyasī"],
      @"Line 81-90" :@[
              @"bhavānī bhāvanāgamyā bhavāraṇya kuṭhārikā",
              @"bhadrapriyā bhadramūrtir bhakta saubhāgya dāyinī",
              @"bhaktipriyā bhaktigamyā bhaktivaśyā bhayāpahā",
              @"śāmbhavī śāradārādhyā śarvāṇī śarmadāyinī",
              @"śāṅkarī śrīkarī sādhvī śaraccandra nibhānanā",
              @"śātodarī śāntimatī nirādhārā nirañjanā",
              @"nirlepā nirmalā nityā nirākārā nirākulā",
              @"nirguṇā niṣkaḷā śāntā niṣkāmā nirupaplavā",
              @"nityamuktā nirvikārā niṣprapañcā nirāśrayā",
              @"nityaśuddhā nityabuddhā niravadyā nirantarā"],
      @"Line 91-100" :@[
              @"niṣkāraṇā niṣkaḷaṅkā nirupādhi rnirīśvarā",
              @"nīrāgā rāgamathanī nirmadā madanāśinī",
              @"niścintā nirahaṅkārā nirmohā mohanāśinī",
              @"nirmamā mamatāhantrī niṣpāpā pāpanāśinī",
              @"niṣkrodhā krodhaśamanī nirlobhā lobhanāśinī",
              @"niḥsaṃśayā saṃśayaghnī nirbhavā bhavanāśinī",
              @"nirvikalpā nirābādhā nirbhedā bhedanāśinī",
              @"nirnāśā mṛtyumathanī niṣkriyā niṣparigrahā",
              @"nistulā nīlacikurā nirapāyā niratyayā",
              @"durlabhā durgamā durgā duḥkhahantrī sukhapradā"],
      @"Line 101-110" :@[
              @"duṣṭadūrā durācāra śamanī doṣavarjitā",
              @"sarvajñā sāndrakaruṇā samānādhika varjitā",
              @"sarvaśaktimayī sarva maṅgaḷā sadgatipradā",
              @"sarveśvarī sarvamayī sarvamantra svarūpiṇī",
              @"sarva yantrātmikā sarva tantrarūpā manonmanī",
              @"māheśvarī mahādevī mahālakṣmīr mṛḍapriyā",
              @"mahārūpā mahāpūjyā mahāpātaka nāśinī",
              @"mahāmāyā mahāsattvā mahāśaktir mahāratiḥ",
              @"mahābhogā mahaiśvaryā mahāvīryā mahābalā",
              @"mahābuddhir mahāsiddhir mahāyogeśvareśvarī"],
      @"Line 111-120" :@[
              @"mahātantrā mahāmantrā mahāyantrā mahāsanā",
              @"mahāyāga kramārādhyā mahābhairava pūjitā",
              @"maheśvara mahākalpa mahātāṇḍava sākṣiṇī",
              @"mahākāmeśa mahiṣī mahātripura sundarī",
              @"catuḥṣaṣṭyupacārāḍhyā catuṣṣaṣṭi kaḷāmayī",
              @"mahā catuṣṣaṣṭi koṭi yoginī gaṇasevitā",
              @"manuvidyā candravidyā candramaṇḍala madhyagā",
              @"cārurūpā cāruhāsā cārucandra kaḷādharā",
              @"carācara jagannāthā cakrarāja niketanā",
              @"pārvatī padmanayanā padmarāga samaprabhā "],
      @"Line 121-130" :@[
              @"pañca pretāsanāsīnā pañcabrahma svarūpiṇī",
              @"cinmayī paramānandā vijñāna ghanarūpiṇī",
              @"dhyāna dhyātṛ dhyeyarūpā dharmādharma vivarjitā",
              @"viśvarūpā jāgariṇī svapantī taijasātmikā",
              @"suptā prājñātmikā turyā sarvāvasthā vivarjitā",
              @"sṛṣṭikartrī brahmarūpā goptrī govindarūpiṇī",
              @"saṃhāriṇī rudrarūpā tirodhāna karīśvarī",
              @"sadāśivā nugrahadā pañcakṛtya parāyaṇā",
              @"bhānumaṇḍala madhyasthā bhairavī bhagamālinī",
              @"padmāsanā bhagavatī padmanābha sahodarī"],
      @"Line 131-140" :@[
              @"unmeṣa nimiṣotpanna vipanna bhuvanāvaḷiḥ",
              @"sahasra śīrṣavadanā sahasrākṣī sahasrapāt",
              @"ābrahma kīṭa jananī varṇāśrama vidhāyinī",
              @"nijājñārūpa nigamā puṇyāpuṇya phalapradā",
              @"śruti sīmanta sindhūrī kṛta pādābja dhūḷikā",
              @"sakalāgama sandoha śukti sampuṭa mauktikā",
              @"puruṣārthapradā pūrṇā bhoginī bhuvaneśvarī",
              @"ambikānādi nidhanā haribrahmendra sevitā",
              @"nārāyaṇī nādarūpā nāmarūpa vivarjitā",
              @"hrīṅkārī hrīmatī hṛdyā heyopādeya varjitā"],
      @"Line 141-150" :@[
              @"rājarājārcitā rājñī ramyā rājīvalocanā",
              @"rañjanī ramaṇī rasyā raṇatkiṅkiṇi mekhalā",
              @"ramā rākenduvadanā ratirūpā ratipriyā",
              @"rakṣākarī rākṣasaghnī rāmā ramaṇalampaṭā",
              @"kāmyā kāmakaḷārūpā kadamba kusumapriyā",
              @"kalyāṇī jagatīkandā karuṇārasa sāgarā",
              @"kaḷāvatī kaḷālāpā kāntā kādambarīpriyā",
              @"varadā vāmanayanā vāruṇī mada vihvalā",
              @"viśvādhikā vedavedyā vindhyācala nivāsinī",
              @"vidhātrī vedajananī viṣṇumāyā vilāsinī"],
      @"Line 151-160" :@[
              @"kṣetrasvarūpā kṣetreśī kṣetra kṣetrajña pālinī",
              @"kṣayavṛddhi vinirmuktā kṣetrapāla samarcitā",
              @"vijayā vimalā vandyā vandāru jana vatsalā",
              @"vāgvādinī vāmakeśī vahnimaṇḍala vāsinī",
              @"bhaktimat kalpalatikā paśupāśa vimocanī",
              @"saṃhṛtāśeṣa pāṣaṇḍā sadācāra pravartikā",
              @"tāpatrayāgni santapta samāhlādana candrikā",
              @"taruṇī tāpasārādhyā tanumadhyā tamo\'pahā",
              @"citistatpada lakṣyārthā cidekarasa rūpiṇī",
              @"svātmānanda lavībhūta brahmādyānanda santatiḥ"],
      @"Line 161-170" :@[
              @"parā pratyakcitī rūpā paśyantī paradevatā",
              @"madhyamā vaikharīrūpā bhaktamānasa haṃsikā",
              @"kāmeśvara prāṇanāḍī kṛtajñā kāmapūjitā",
              @"śṛṅgāra rasa sampūrṇā jayā jālandhara sthitā",
              @"oḍyāṇa pīṭha nilayā bindu maṇḍala vāsinī",
              @"rahoyāga kramārādhyā rahastarpaṇa tarpitā",
              @"sadyaḥ prasādinī viśva sākṣiṇī sākṣivarjitā",
              @"ṣaḍaṅgadevatā yuktā ṣāḍguṇya paripūritā",
              @"nityaklinnā nirupamā nirvāṇa sukha dāyinī",
              @"nityā ṣoḍaśikā rūpā śrīkaṇṭhārdha śarīriṇī"],
      @"Line 171-180" :@[
              @"prabhāvatī prabhārūpā prasiddhā parameśvarī",
              @"mūlaprakṛtir avyaktā vyaktāvyakta svarūpiṇī",
              @"vyāpinī vividhākārā vidyāvidyā svarūpiṇī",
              @"mahākāmeśa nayanā kumudāhlāda kaumudī",
              @"bhakta hārda tamobheda bhānumadbhānu santatiḥ",
              @"śivadūtī śivārādhyā śivamūrti śivaṅkarī",
              @"śivapriyā śivaparā śiṣṭeṣṭā śiṣṭapūjitā",
              @"aprameyā svaprakāśā manovācām agocarā",
              @"cicchaktiś cetanārūpā jaḍaśaktir jaḍātmikā",
              @"gāyatrī vyāhṛti sandhyā dvijabṛnda niṣevitā"],
      @"Line 181-190" :@[
              @"tattvāsanā tattvamayī pañca kośāntara sthitā",
              @"nisīma mahimā nityayauvanā madaśālinī",
              @"madaghūrṇita raktākṣī madapāṭala gaṇḍabhūḥ",
              @"candana drava digdhāṅgī cāmpeya kusuma priyā",
              @"kuśalā komalākārā kurukuḷḷā kuleśvarī",
              @"kuḷakuṇḍālayā kauḷa mārga tatpara sevitā",
              @"kumāra gaṇanāthāmbā tuṣṭiḥ puṣṭir matir dhṛtiḥ",
              @"śāntiḥ svastimatī kāntir nandinī vighnanāśinī",
              @"tejovatī trinayanā lolākṣī kāmarūpiṇī",
              @"mālinī haṃsinī mātā malayācala vāsinī"],
      @"Line 191-200" :@[
              @"sumukhī naḷinī subhrūḥ śobhanā suranāyikā",
              @"kālakaṇṭhī kāntimatī kṣobhiṇī sūkṣmarūpiṇī",
              @"vajreśvarī vāmadevī vayo\'vasthā vivarjitā",
              @"siddheśvarī siddhavidyā siddhamātā yaśasvinī",
              @"viśuddhi cakra nilayā raktavarṇā trilocanā",
              @"khaṭvāṅgādi praharaṇā vadanaika samanvitā",
              @"pāyasānnapriyā tvaksthā paśuloka bhayaṅkarī",
              @"amṛtādi mahāśakti saṃvṛtā ḍākinīśvarī",
              @"anāhatābja nilayā śyāmābhā vadanadvayā",
              @"daṃṣṭrojjvalā\'kṣa mālādhi dharā rudhira saṃsthitā"],
      @"Line 201-210" :@[
              @"kāḷarātryādi śaktyogha vṛtā snigdhaudanapriyā",
              @"mahāvīrendra varadā rākiṇyambā svarūpiṇī",
              @"maṇipūrābja nilayā vadanatraya saṃyutā",
              @"vajrādhikāyudhopetā ḍāmaryādibhir āvṛtā",
              @"raktavarṇā māṃsaniṣṭhā guḍānna prīta mānasā",
              @"samasta bhakta sukhadā lākinyambā svarūpiṇī",
              @"svādhiṣṭhānām buja gatā caturvaktra manoharā",
              @"śūlādyāyudha sampannā pītavarṇā tigarvitā",
              @"medoniṣṭhā madhuprītā bandinyādi samanvitā",
              @"dadhyan nāsakta hṛdayā kākinī rūpa dhāriṇī"],
      @"Line 211-220" :@[
              @"mūlā dhārāmbujārūḍhā pañca vaktrā\'sthi saṃsthitā",
              @"aṅkuśādi praharaṇā varadādi niṣevitā",
              @"mudgaudanāsakta cittā sākinyambā svarūpiṇī",
              @"ājñā cakrābjanilayā śuklavarṇā ṣaḍānanā",
              @"majjāsaṃsthā haṃsavatī mukhya śakti samanvitā",
              @"haridrānnaika rasikā hākinī rūpa dhāriṇī",
              @"sahasradaḷa padmasthā sarva varṇopa śobhitā",
              @"sarvāyudhadharā śukla saṃsthitā sarvatomukhī",
              @"sarvaudana prītacittā yākinyambā svarūpiṇī",
              @"svāhā svadhā matir medhā śrutiḥ smṛtir anuttamā"],
      @"Line 221-230" :@[
              @"puṇyakīrtiḥ puṇyalabhyā puṇyaśravaṇa kīrtanā",
              @"pulomajārcitā bandha mocanī bandhurālakā",
              @"vimarśarūpiṇī vidyā viyadādi jagatprasūḥ",
              @"sarvavyādhi praśamanī sarvamṛtyu nivāriṇī",
              @"agragaṇyā cintyarūpā kalikalmaṣa nāśinī",
              @"kātyāyinī kālahantrī kamalākṣa niṣevitā",
              @"tāmbūla pūrita mukhī dāḍimī kusuma prabhā",
              @"mṛgākṣī mohinī mukhyā mṛḍānī mitrarūpiṇī",
              @"nityatṛptā bhaktanidhir niyantrī nikhileśvarī",
              @"maitryādi vāsanālabhyā mahāpraḷaya sākṣiṇī"],
      @"Line 231-240" :@[
              @"parā śaktiḥ parā niṣṭhā prajñānaghana rūpiṇī",
              @"mādhvīpānālasā mattā mātṛkā varṇa rūpiṇī",
              @"mahākailāsa nilayā mṛṇāla mṛdu dorlatā",
              @"mahanīyā dayāmūrtīr mahāsāmrājya śālinī",
              @"ātmavidyā mahāvidyā śrīvidyā kāmasevitā",
              @"śrī ṣoḍaśākṣarī vidyā trikūṭā kāmakoṭikā",
              @"kaṭākṣa kiṅkarī bhūta kamalā koṭisevitā",
              @"śiraḥsthitā candranibhā bhālasthendra dhanuḥprabhā",
              @"hṛdayasthā raviprakhyā trikoṇāntara dīpikā",
              @"dākṣāyaṇī daityahantrī dakṣayajña vināśinī"],
      @"Line 241-250" :@[
              @"darāndoḷita dīrghākṣī dara hāsojjvalan mukhī",
              @"gurumūrtir guṇanidhir gomātā guhajanmabhūḥ",
              @"deveśī daṇḍanītisthā daharākāśa rūpiṇī",
              @"pratipanmukhya rākānta tithi maṇḍala pūjitā",
              @"kaḷātmikā kaḷānāthā kāvyālāpa vinodinī",
              @"sacāmara ramāvāṇī savya dakṣiṇa sevitā",
              @"ādiśaktir ameyātmā paramā pāvanākṛtiḥ",
              @"anekakoṭi brahmāṇḍa jananī divyavigrahā",
              @"klīṅkārī kevalā guhyā kaivalya padadāyinī",
              @"tripurā trijagadvandyā trimūrtis tridaśeśvarī"],
      @"Line 251-260" :@[
              @"tryakṣarī divya gandhāḍhyā sindhūra tilakāñcitā",
              @"umā śailendratanayā gaurī gandharva sevitā",
              @"viśvagarbhā svarṇagarbhā varadā vāgadhīśvarī",
              @"dhyānagamyā paricchedyā jñānadā jñānavigrahā",
              @"sarvavedānta saṃvedyā satyānanda svarūpiṇī",
              @"lopāmudrārcitā līlā klupta brahmāṇḍa maṇḍalā",
              @"adṛśyā dṛśyarahitā vijñātrī vedyavarjitā",
              @"yoginī yogadā yogyā yogānandā yugandharā",
              @"icchāśakti jñānaśakti kriyāśakti svarūpiṇī",
              @"sarvadhārā supratiṣṭhā sadasadrūpa dhāriṇī"],
      @"Line 261-270" :@[
              @"aṣṭamūrtir ajājaitrī lokayātrā vidhāyinī",
              @"ekākinī bhūmarūpā nirdvaitā dvaitavarjitā",
              @"annadā vasudā vṛddhā brahmātmaikya svarūpiṇī",
              @"bṛhatī brāhmaṇī brāhmī brahmānandā balipriyā",
              @"bhāṣārūpā bṛhatsenā bhāvābhāva vivarjitā",
              @"sukhārādhyā śubhakarī śobhanā sulabhā gatiḥ",
              @"rāja rājeśvarī rājya dāyinī rājya vallabhā",
              @"rājatkṛpā rājapīṭha niveśita nijāśritā",
              @"rājyalakṣmīḥ kośanāthā caturaṅga baleśvarī",
              @"sāmrājya dāyinī satyasandhā sāgaramekhalā"],
      @"Line 271-280" :@[
              @"dīkṣitā daityaśamanī sarvaloka vaśaṅkarī",
              @"sarvārthadātrī sāvitrī saccidānanda rūpiṇī",
              @"deśa kālā paricchinnā sarvagā sarvamohinī",
              @"sarasvatī śāstramayī guhāmbā guhyarūpiṇī",
              @"sarvopādhi vinirmuktā sadāśiva pativratā",
              @"sampradāyeśvarī sādhvī gurumaṇḍala rūpiṇī",
              @"kulottīrṇā bhagārādhyā māyā madhumatī mahī",
              @"gaṇāmbā guhyakārādhyā komalāṅgī gurupriyā",
              @"svatantrā sarvatantreśī dakṣiṇāmūrti rūpiṇī",
              @"sanakādi samārādhyā śivajñāna pradāyinī"],
      @"Line 281-290" :@[
              @"citkaḷā nanda kalikā premarūpā priyaṅkarī",
              @"nāmapārāyaṇa prītā nandividyā naṭeśvarī",
              @"mithyā jagadadhiṣṭhānā muktidā muktirūpiṇī",
              @"lāsyapriyā layakarī lajjā rambhādi vanditā",
              @"bhavadāva sudhāvṛṣṭiḥ pāpāraṇya davānalā",
              @"daurbhāgya tūla vātūlā jarādhvānta raviprabhā",
              @"bhāgyābdhi candrikā bhakta cittakeki ghanāghanā",
              @"rogaparvata dambhoḷir mṛtyudāru kuṭhārikā",
              @"maheśvarī mahākāḷī mahāgrāsā mahāśanā",
              @"aparṇā caṇḍikā caṇḍamuṇḍāsura niṣūdinī"],
      @"Line 291-300" :@[
              @"kṣarākṣarātmikā sarva lokeśī viśvadhāriṇī",
              @"trivargadātrī subhagā tryambakā triguṇātmikā",
              @"svargāpavargadā śuddhā japāpuṣpa nibhākṛtiḥ",
              @"ojovatī dyutidharā yajñarūpā priyavratā",
              @"durārādhyā durādarṣā pāṭalī kusuma priyā",
              @"mahatī merunilayā mandāra kusuma priyā",
              @"vīrārādhyā virāḍrūpā virajā viśvatomukhī",
              @"pratyagrūpā parākāśā prāṇadā prāṇarūpiṇī",
              @"mārtāṇḍa bhairavārādhyā mantriṇīnyasta rājyadhūḥ",
              @"tripureśī jayatsenā nistraiguṇyā parāparā"],
      @"Line 301-310" :@[
              @"satya jñānānanda rūpā sāmarasya parāyaṇā",
              @"kapardinī kalāmālā kāmadhuk kāmarūpiṇī",
              @"kaḷānidhiḥ kāvyakaḷā rasajñā rasaśevadhiḥ",
              @"puṣṭā purātanā pūjyā puṣkarā puṣkarekṣaṇā",
              @"parañjyotiḥ parandhāma paramāṇuḥ parātparā",
              @"pāśahastā pāśahantrī paramantra vibhedinī",
              @"mūrtā mūrtā nityatṛptā muni mānasa haṃsikā",
              @"satyavratā satyarūpā sarvāntaryāminī satī",
              @"brahmāṇī brahmajananī bahurūpā budhārcitā",
              @"prasavitrī pracaṇḍā\'jñā pratiṣṭhā prakaṭākṛtiḥ"],
      @"Line 311-320" :@[
              @"prāṇeśvarī prāṇadātrī pañcāśatpīṭha rūpiṇī",
              @"viśṛṅkhalā viviktasthā vīramātā viyatprasūḥ",
              @"mukundā muktinilayā mūlavigraha rūpiṇī",
              @"bhāvajñā bhavarogaghnī bhavacakra pravartinī",
              @"chandassārā śāstrasārā mantrasārā talodarī",
              @"udārakīrtir uddāmavaibhavā varṇarūpiṇī",
              @"janmamṛtyu jarātapta jana viśrānti dāyinī",
              @"sarvopaniṣa dud ghuṣṭā śāntyatīta kaḷātmikā",
              @"gambhīrā gaganāntaḥsthā garvitā gānalolupā",
              @"kalpanā rahitā kāṣṭhā kāntā kāntārdha vigrahā"],
      @"Line 321-330" :@[
              @"kāryakāraṇa nirmuktā kāmakeḷi taraṅgitā",
              @"kanatkanakatā ṭaṅkā līlā vigraha dhāriṅī",
              @"ajā kṣaya vinirmuktā mugdhā kṣipra prasādinī",
              @"antarmukha samārādhyā bahirmukha sudurlabhā",
              @"trayī trivarga nilayā tristhā tripuramālinī",
              @"nirāmayā nirālambā svātmārāmā sudhāsṛtiḥ",
              @"samsārapaṅka nirmagna samuddharaṅa paṅṅitā",
              @"yajñapriyā yajñakartrī yajamāna svarūpiṅī",
              @"dharmādhārā dhanādhyakṅā dhanadhānya vivardhinī",
              @"viprapriyā viprarūpā viśvabhramaṅa kāriṅī"],
      @"Line 331-340" :@[
              @"viśvagrāsā vidrumābhā vaiṣṅavī viṣṅurūpiṅī",
              @"ayonir yoninilayā kūtasthā kularūpiṅī",
              @"vīragoṣṅhīpriyā vīrā naiṣkarmyā nādarūpiṅī",
              @"vijñāna kalanā kalyā vidagdhā baindavāsanā",
              @"tattvādhikā tattvamayī tattvamartha svarūpiṅī",
              @"sāmagānapriyā saumyā sadāśiva kutumbinī",
              @"savyāpasavya mārgasthā sarvāpadvi nivāriṅī",
              @"svasthā svabhāvamadhurā dhīrā dhīra samarcitā",
              @"caitanyārghya samārādhyā caitanya kusumapriyā",
              @"sadoditā sadātuṣṅā taruṅāditya pātalā"],
      @"Line 341-350" :@[
              @"dakṣiṅā dakṣiṅārādhyā darasmera mukhāmbujā",
              @"kaulinī kevalā narghyā kaivalya padadāyinī",
              @"stotrapriyā stutimatī śruti samstuta vaibhavā",
              @"manasvinī mānavatī maheśī maṅgalākṛtiḥ",
              @"viśvamātā jagaddhātrī viśālākṣī virāgiṅī",
              @"pragalbhā paramodārā parāmodā manomayī",
              @"vyomakeśī vimānasthā vajriṅī vāmakeśvarī",
              @"pañcayajña priyā pañca preta mañcādhiśāyinī",
              @"pañcamī pañcabhūteśī pañca saṅkhyopacāriṅī",
              @"śāśvatī śāśvataiśvaryā śarmadā śambhumohinī"],
      @"Line 351-360" :@[
              @"dharā dharasutā dhanyā dharmiṅī dharmavardhinī",
              @"lokātītā guṅātītā sarvātītā śamātmikā",
              @"bandhūka kusumaprakhyā bālā līlāvinodinī",
              @"sumaṅgalī sukhakarī suveṣāḍhyā suvāsinī",
              @"suvāsinyarcana prītā śobhanā śuddha mānasā",
              @"bindu tarpaṅa santuṣtā pūrvajā tripurāmbikā",
              @"daśamudrā samārādhyā tripurā śrī vaśaṅkarī",
              @"jñānamudrā jñānagamyā jñānaṅñeya svarūpiṅī",
              @"yonimudrā trikhaṅḍeśī triguṅāmbā trikoṅagā",
              @"anaghādbhuta cāritrā vāñchitārtha pradāyinī"],
      @"Line 361-365" :@[
              @"abhyāsāti śaya jñātā ṣaḍadhvātīta rūpiṅī",
              @"avyāja karuṅā mūrtir ajñāna dhvānta dīpikā",
              @"ābāla gopa viditā sarvānullaṅghya śāsanā",
              @"śrī cakrarāja nilayā śrīmat tripura sundarī",
              @"śrī śivā śivaśaktyaikya rūpiṅī lalitāmbikā"]};

    return lyrics;
}

+ (NSArray *) linesLSN{
    return [Utils loadHeaderLineNumbers:365];
}

@end