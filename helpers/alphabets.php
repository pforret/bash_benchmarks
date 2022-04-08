<?php

$alphabets=[];

## EUROPEAN LANGUAGES
$alphabets["DE"]["original"]["lower"]=explode(",","ä,ö,ü,ß");
$alphabets["DE"]["original"]["upper"]=explode(",","Ä,Ö,Ü,ẞ");
$alphabets["DE"]["romanize"]["lower"]=explode(",","a,o,u,ss");
$alphabets["DE"]["romanize"]["upper"]=explode(",","A,O,U,SS");
$alphabets["EN"]["original"]["lower"]=explode(",","a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z");
$alphabets["EN"]["original"]["upper"]=explode(",","A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z");
$alphabets["EN"]["romanize"]["lower"]=explode(",","a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z");
$alphabets["EN"]["romanize"]["upper"]=explode(",","A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z");
$alphabets["ES"]["original"]["lower"]=explode(",","ñ");
$alphabets["ES"]["original"]["upper"]=explode(",","Ñ");
$alphabets["ES"]["romanize"]["lower"]=explode(",","n");
$alphabets["ES"]["romanize"]["upper"]=explode(",","N");
$alphabets["FR"]["original"]["lower"]=explode(",","a,à,â,æ,b,c,ç,d,e,é,è,ê,ë,f,g,h,i,j,k,l,m,n,o,ô,œ,p,q,r,s,t,u,ù,û,ü,v,w,x,y,ÿ,z");
$alphabets["FR"]["original"]["upper"]=explode(",","A,À,Â,Æ,B,C,Ç,D,E,É,È,Ê,Ë,F,G,H,I,J,K,L,M,N,O,Ô,Œ,P,Q,R,S,T,U,Ù,Û,Ü,V,W,X,Y,Ÿ,Z");
$alphabets["FR"]["romanize"]["lower"]=explode(",","a,a,a,ae,b,c,c,d,e,e,e,e,e,f,g,h,i,j,k,l,m,n,o,o,oe,p,q,r,s,t,u,u,u,u,v,w,x,y,y,z");
$alphabets["FR"]["romanize"]["upper"]=explode(",","A,A,A,AE,B,C,C,D,E,E,E,E,E,F,G,H,I,J,K,L,M,N,O,O,OE,P,Q,R,S,T,U,U,U,U,V,W,X,Y,Y,Z");

$alphabets["GR"]["original"]["lower"]=explode(",","α,β,γ,δ,ε,ζ,η,θ,ι,κ,λ,μ,ν,ξ,ο,π,ρ,σ,τ,υ,φ,χ,ψ,ω");
$alphabets["GR"]["original"]["upper"]=explode(",","Α,Β,Γ,Δ,Ε,Ζ,Η,Θ,Ι,Κ,Λ,Μ,Ν,Ξ,Ο,Π,Ρ,Σ,Τ,Υ,Φ,Χ,Ψ,Ω");
$alphabets["GR"]["romanize"]["lower"]=explode(",","a,v,g,d,e,z,e,th,i,k,l,m,n,x,o,p,r,s,t,υ,ph,ch,ps,o");
$alphabets["GR"]["romanize"]["upper"]=explode(",","A,V,G,D,E,Z,E,TH,I,K,L,M,N,X,O,P,R,S,T,Υ,PH,CH,PS,O");

$alphabets["HR"]["original"]["lower"]=explode(",","Č,Ć,Đ,Š,Ž");
$alphabets["HR"]["original"]["lower"]=explode(",","č,ć,đ,š,ž");
$alphabets["HR"]["romanize"]["lower"]=explode(",","TS,C,D,S,Z");
$alphabets["HR"]["romanize"]["lower"]=explode(",","ts,c,d,s,z");
$alphabets["IS"]["original"]["lower"]=explode(",","á,ð,é,í,ó,ú,ý,þ,æ,ö");
$alphabets["IS"]["original"]["upper"]=explode(",","Á,Ð,É,Í,Ó,Ú,Ý,Þ,Æ,Ö");
$alphabets["IS"]["romanize"]["lower"]=explode(",","a,d,e,i,o,u,y,th,ae,o");
$alphabets["IS"]["romanize"]["upper"]=explode(",","A,D,E,I,O,U,Y,TH,AE,O");
$alphabets["NO"]["original"]["lower"]=explode(",","æ,å,ø,ó,ö");
$alphabets["NO"]["original"]["upper"]=explode(",","Æ,Å,Ø,Ó,Ö");
$alphabets["NO"]["romanize"]["lower"]=explode(",","ae,a,oe,o,o");
$alphabets["NO"]["romanize"]["upper"]=explode(",","AE,A,OE,O,O");
$alphabets["PL"]["original"]["lower"]=explode(",","Ą,Ć,Ę,Ł,Ń,Ó,Ś,Ź,Ż");
$alphabets["PL"]["original"]["lower"]=explode(",","ą,ć,ę,ł,ń,ó,ś,ź,ż");
$alphabets["PL"]["romanize"]["lower"]=explode(",","A,C,E,L,N,O,S,Z,Z");
$alphabets["PL"]["romanize"]["lower"]=explode(",","a,c,e,l,n,o,s,z,z");
$alphabets["RO"]["original"]["lower"]=explode(",","ă,â,î,ș,ț");
$alphabets["RO"]["original"]["upper"]=explode(",","Ă,Â,Î,Ș,Ț");
$alphabets["RO"]["romanize"]["lower"]=explode(",","a,a,i,sh,ts");
$alphabets["RO"]["romanize"]["upper"]=explode(",","A,A,I,SH,TS");

$alphabets["DIA"]["original"]["lower"]=explode(",","à,á,â,ä,æ,ã,å,ā,ǎ,ç,ć,č,è,é,ê,ë,ē,ė,ę,ě,î,ï,í,í,ī,į,ì,ǐ,ł,ô,ö,ò,ó,œ,ø,ō,ǒ,õ,û,ü,ǔ,ù,ǖ,ǘ,ǚ,ǜ,ú,ū,ž,ź,ż");
$alphabets["DIA"]["original"]["upper"]=explode(",","À,Á,Â,Ä,Æ,Ã,Å,Ā,Ǎ,Ç,Ć,Č,È,É,Ê,Ë,Ē,Ė,Ę,Ě,Î,Ï,Í,Í,Ī,Į,Ì,Ǐ,Ł,Ô,Ö,Ò,Ó,Œ,Ø,Ō,Ǒ,Õ,Û,Ü,Ǔ,Ù,Ǖ,Ǘ,Ǚ,Ǜ,Ú,Ū,Ž,Ź,Ż");
$alphabets["DIA"]["romanize"]["lower"]=explode(",","a,a,a,a,ae,a,a,a,a,c,c,c,e,e,e,e,e,e,e,e,i,i,i,i,i,i,i,i,l,o,o,o,o,oe,o,o,o,o,u,u,u,u,u,u,u,u,u,u,z,z,z");
$alphabets["DIA"]["romanize"]["upper"]=explode(",","A,A,A,A,AE,A,A,A,A,C,C,C,E,E,E,E,E,E,E,E,I,I,I,I,I,I,I,I,L,O,O,O,O,OE,O,O,O,O,U,U,U,U,U,U,U,U,U,U,Z,Z,Z");

## CYRILLIC LANGUAGES
$alphabets["BY"]["original"]["lower"]=explode(",","ў");
$alphabets["BY"]["original"]["upper"]=explode(",","Ў");
$alphabets["BY"]["romanize"]["lower"]=explode(",","w");
$alphabets["BY"]["romanize"]["upper"]=explode(",","W");
$alphabets["CS"]["original"]["lower"]=explode(",","Љ,Њ,Ћ,Ђ,Џ");
$alphabets["CS"]["original"]["lower"]=explode(",","љ,њ,ћ,ђ,џ");
$alphabets["CS"]["romanize"]["lower"]=explode(",","LJ,NJ,C,D,DZ");
$alphabets["CS"]["romanize"]["lower"]=explode(",","lj,nj,c,d,dz");
$alphabets["MK"]["original"]["lower"]=explode(",","ѓ,ќ,џ");
$alphabets["MK"]["original"]["upper"]=explode(",","Ѓ,Ќ,Џ");
$alphabets["MK"]["romanize"]["lower"]=explode(",","f,k,dz");
$alphabets["MK"]["romanize"]["upper"]=explode(",","F,K,DZ");
$alphabets["RU"]["original"]["lower"]=explode(",","α,б,в,г,д,е,ё,ж,з,и,й,к,л,м,н,о,п,р,с,т,у,ф,х,ц,ч,ш,щ,ъ,ы,ь,э,ю,я");
$alphabets["RU"]["original"]["upper"]=explode(",","Α,Б,В,Г,Д,Е,Ё,Ж,З,И,Й,К,Л,М,Н,О,П,Р,С,Т,У,Ф,Х,Ц,Ч,Ш,Щ,Ъ,Ы,Ь,Э,Ю,Я");
$alphabets["RU"]["romanize"]["lower"]=explode(",","a,b,v,g,d,e,e,zh,z,i,j,k,l,m,n,o,p,r,s,t,u,f,kh,c,ch,sh,sch,,y,,e,yu,ya");
$alphabets["RU"]["romanize"]["upper"]=explode(",","A,B,V,G,D,E,E,ZH,Z,I,J,K,L,M,N,O,P,R,S,T,U,F,KH,C,CH,SH,SCH,,Y,,E,YU,YA");

## SLAVIC LANGUAGES
$alphabets["LT"]["original"]["lower"]=explode(",","ą,č,ę,ė,į,š,u,ų,ū,ž");
$alphabets["LT"]["original"]["upper"]=explode(",","Ą,Č,Ę,Ė,Į,Š,U,Ų,Ū,Ž");
$alphabets["LT"]["romanize"]["lower"]=explode(",","a,c,e,e,i,s,u,u,u,z");
$alphabets["LT"]["romanize"]["upper"]=explode(",","A,C,E,E,I,S,U,U,U,Z");
$alphabets["LV"]["original"]["lower"]=explode(",","ā,č,ē,ģ,ī,ķ,ļ,ņ,š,ū,ž");
$alphabets["LV"]["original"]["upper"]=explode(",","Ā,Č,Ē,Ģ,Ī,Ķ,Ļ,Ņ,Š,Ū,Ž");
$alphabets["LV"]["romanize"]["lower"]=explode(",","a,c,e,g,i,k,l,n,s,u,z");
$alphabets["LV"]["romanize"]["upper"]=explode(",","A,C,E,G,I,K,L,N,S,U,Z");
$alphabets["SI"]["original"]["lower"]=explode(",","č,š,ž");
$alphabets["SI"]["original"]["upper"]=explode(",","Č,Š,Ž");
$alphabets["SI"]["romanize"]["lower"]=explode(",","ch,sh,zh");
$alphabets["SI"]["romanize"]["upper"]=explode(",","CH,SH,ZH");
$alphabets["SK"]["original"]["lower"]=explode(",","Á,Ä,Č,Ď,Í,Ĺ,Ľ,Ň,Ó,Ô,Ŕ,Š,Ť,Ú,Ý,Ž");
$alphabets["SK"]["original"]["lower"]=explode(",","á,ä,č,ď,í,ĺ,ľ,ň,ó,ô,ŕ,š,ť,ú,ý,ž");
$alphabets["SK"]["romanize"]["lower"]=explode(",","A,A,C,D,I,L,L,N,O,O,R,S,T,U,Y,Z");
$alphabets["SK"]["romanize"]["lower"]=explode(",","a,a,c,d,i,l,l,n,o,o,r,s,t,u,y,z");
$alphabets["CZ"]["original"]["lower"]=explode(",","á,č,ď,é,ě,ň,ó,ř,š,ť,ú,ů,ý,ž");
$alphabets["CZ"]["original"]["upper"]=explode(",","Á,Č,Ď,É,Ě,Ň,Ó,Ř,Š,Ť,Ú,Ů,Ý,Ž");
$alphabets["CZ"]["romanize"]["lower"]=explode(",","a,c,d,e,e,n,o,r,s,t,u,u,y,z");
$alphabets["CZ"]["romanize"]["upper"]=explode(",","A,C,D,E,E,N,O,R,S,T,U,U,Y,Z");

## TURKIC LANGUAGES
$alphabets["TR"]["original"]["lower"]=explode(",","ğ,ı,ö,ş,ü");
$alphabets["TR"]["original"]["lower"]=explode(",","ğ,ı,ö,ş,ü");
$alphabets["TR"]["romanize"]["lower"]=explode(",",",i,o,sh,y");
$alphabets["TR"]["romanize"]["lower"]=explode(",",",i,o,sh,y");

## ALTERNATIVE WRITING SYSTEMS
$alphabets["AM"]["original"]["lower"]=explode(",","ա,բ,գ,դ,ե,զ,է,ը,թ,ժ,ի,լ,խ,ծ,կ,հ,ձ,ղ,ճ,մ,յ,ն,շ,ո,չ,պ,ջ,ռ,ս,վ,տ,ր,ց,ւ,փ,ք,օ,ֆ,ու,և");
$alphabets["AM"]["original"]["upper"]=explode(",","Ա,Բ,Գ,Դ,Ե,Զ,Է,Ը,Թ,Ժ,Ի,Լ,Խ,Ծ,Կ,Հ,Ձ,Ղ,Ճ,Մ,Յ,Ն,Շ,Ո,Չ,Պ,Ջ,Ռ,Ս,Վ,Տ,Ր,Ց,Ւ,Փ,Ք,Օ,Ֆ,ՈՒ,ԵՒ");
$alphabets["AM"]["romanize"]["lower"]=explode(",","a,b,g,d,e,z,e,e,t,z,i,l,x,c,k,h,dz,g,ch,m,y,n,sh,o,c,p,j,r,s,v,t,r,c,w,p,k,o,f,u,ew");
$alphabets["AM"]["romanize"]["upper"]=explode(",","A,B,G,D,E,Z,E,E,T,Z,I,L,X,C,K,H,DZ,G,CH,M,Y,N,SH,O,C,P,J,R,S,V,T,R,C,W,P,K,O,F,U,EW");

$mapping=[];
foreach($alphabets as $lang => $data1){
    if(!isset($data1["original"])){
        print "no original for [$lang]\n";
        continue;
    }
    foreach($data1["original"] as $case => $list){
        foreach($list as $nr => $letter){
            $mapped_to=$data1["romanize"][$case][$nr];
            if($letter <> $mapped_to){
                $mapping[$mapped_to][$letter]=$letter;
            }
        }
    }
}
ksort($mapping);
print "# using AWK\n";
print "awk '{ ";
foreach($mapping as $mapped_to => $list){
    sort($list);
    printf("gsub(/[%s]/,\"%s\"); ",implode("",$list),$mapped_to);
}
print "print $0; }'\n\n";

$from="";
$to="";
foreach($mapping as $mapped_to => $list){
    if(mb_strlen($mapped_to) <> 1) continue;
    foreach($list as $letter){
        if(mb_strlen($letter) <> 1) continue;
        $from.=$letter;
        $to.=$mapped_to;
    }
    $from.=" ";
}

print "# using SED\n";
print "sed 'y/$from/$to/'\n\n";

print "# using TR\n";
print "tr '$from' '$to'\n\n";