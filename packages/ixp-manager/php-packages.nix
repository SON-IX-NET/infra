{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "anahkiasen/former" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "anahkiasen-former-5c595b8cd47fb271b10f281e6450617e20eaddb9";
        src = fetchurl {
          url = "https://api.github.com/repos/formers/former/zipball/5c595b8cd47fb271b10f281e6450617e20eaddb9";
          sha256 = "00zj4fl97rwk3id8w7mc5sz918wb0dmhh8s1nwz4b9x4xg6ii06l";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-73e5b88775c64ccc0b84fb60836b30dc9d92ac4a";
        src = fetchurl {
          url = "https://api.github.com/repos/asm89/stack-cors/zipball/73e5b88775c64ccc0b84fb60836b30dc9d92ac4a";
          sha256 = "1idpisw39ba2dic9jl2s2yrkdgbyny9dfxf0qdr5i0wfvvlmbdih";
        };
      };
    };
    "aura/html" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aura-html-2b1a53cd8d07a734a57d21a6492a915c74d04d56";
        src = fetchurl {
          url = "https://api.github.com/repos/auraphp/Aura.Html/zipball/2b1a53cd8d07a734a57d21a6492a915c74d04d56";
          sha256 = "1hixryzsj2r8jsp7056wpv68w3ig64phszzyrag78pd66idybbga";
        };
      };
    };
    "bacon/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bacon-bacon-qr-code-8674e51bb65af933a5ffaf1c308a660387c35c22";
        src = fetchurl {
          url = "https://api.github.com/repos/Bacon/BaconQrCode/zipball/8674e51bb65af933a5ffaf1c308a660387c35c22";
          sha256 = "0hb0w6m5rwzghw2im3yqn6ly2kvb3jgrv8jwra1lwd0ik6ckrngl";
        };
      };
    };
    "barryvdh/laravel-dompdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-dompdf-5b99e1f94157d74e450f4c97e8444fcaffa2144b";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-dompdf/zipball/5b99e1f94157d74e450f4c97e8444fcaffa2144b";
          sha256 = "1r82fzrnjrjy5jgpyc071miiw1rwhwys9ccj81gs3yydq9hi4crw";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-0ad82ce168c82ba30d1c01ec86116ab52f589478";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/0ad82ce168c82ba30d1c01ec86116ab52f589478";
          sha256 = "04kqy1hqvp4634njjjmhrc2g828d69sk6q3c55bpqnnmsqf154yb";
        };
      };
    };
    "dasprid/enum" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dasprid-enum-8e6b6ea76eabbf19ea2bf5b67b98e1860474012f";
        src = fetchurl {
          url = "https://api.github.com/repos/DASPRiD/Enum/zipball/8e6b6ea76eabbf19ea2bf5b67b98e1860474012f";
          sha256 = "0cckq42c9iyjfv7xmy6rl4xj3dn80v9k8qzc3ppdjm4wgj43rrkz";
        };
      };
    };
    "dflydev/dot-access-data" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dflydev-dot-access-data-f41715465d65213d644d3141a6a93081be5d3549";
        src = fetchurl {
          url = "https://api.github.com/repos/dflydev/dflydev-dot-access-data/zipball/f41715465d65213d644d3141a6a93081be5d3549";
          sha256 = "1vgbjrq8qh06r26y5nlxfin4989r3h7dib1jifb2l3cjdn1r5bmj";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-1ca8f21980e770095a31456042471a57bc4c68fb";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb";
          sha256 = "1p8ia9g3mqz71bv4x8q1ng1fgcidmyksbsli1fjbialpgjk9k1ss";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-9a747d29e7e6b39509b8f1847e37a23a0163ea6a";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/9a747d29e7e6b39509b8f1847e37a23a0163ea6a";
          sha256 = "1lpgs0cqmyrcf2yccz02wfywrqpmhg76m2nsvsckixdk873si4ih";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-612a3ee5ab0d5dd97b7cf3874a6efe24325efac3";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/612a3ee5ab0d5dd97b7cf3874a6efe24325efac3";
          sha256 = "078w4k0xdywyb44caz5grbcbxsi87iy13g7a270rs9g5f0p245fi";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-95aa4cb529f1e96576f3fda9f5705ada4056a520";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/95aa4cb529f1e96576f3fda9f5705ada4056a520";
          sha256 = "0xi2s28jmmvrndg1yd0r5s10d9a0q6j2dxdbazvcbws9waf0yrvj";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
          sha256 = "1kdq3sbwrzwprxr36cdw9m1zlwn15c0nz6i7mw0sq9mhnd2sgbrb";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-c268e882d4dbdd85e36e4ad69e02dc284f89d229";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/c268e882d4dbdd85e36e4ad69e02dc284f89d229";
          sha256 = "12g069nljl3alyk15884nd1jc4mxk87isqsmfj7x6j2vxvk9qchs";
        };
      };
    };
    "dompdf/dompdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dompdf-dompdf-5031045d9640b38cfc14aac9667470df09c9e090";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/dompdf/zipball/5031045d9640b38cfc14aac9667470df09c9e090";
          sha256 = "1ciw3mc6pq3rwpzsgc71gdbwppqjdfcr0fhq3435c27ni5y8z4c5";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-782ca5968ab8b954773518e9e49a6f892a34b2a8";
        src = fetchurl {
          url = "https://api.github.com/repos/dragonmantank/cron-expression/zipball/782ca5968ab8b954773518e9e49a6f892a34b2a8";
          sha256 = "18pxn1v3b2yhwzky22p4wn520h89rcrihl7l6hd0p769vk1b2qg9";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-0dbf5d78455d4d6a41d186da50adc1122ec066f4";
        src = fetchurl {
          url = "https://api.github.com/repos/egulias/EmailValidator/zipball/0dbf5d78455d4d6a41d186da50adc1122ec066f4";
          sha256 = "00kwb8rhk1fq3a1i152xniipk3y907q1v5r3szqbkq5rz82dwbck";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
        src = fetchurl {
          url = "https://api.github.com/repos/erusev/parsedown/zipball/cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
          sha256 = "1iil9v8g03m5vpxxg3a5qb2sxd1cs5c4p5i0k00cqjnjsxfrazxd";
        };
      };
    };
    "evenement/evenement" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "evenement-evenement-6ba9a777870ab49f417e703229d53931ed40fd7a";
        src = fetchurl {
          url = "https://api.github.com/repos/igorw/evenement/zipball/6ba9a777870ab49f417e703229d53931ed40fd7a";
          sha256 = "12iymi47ggkxkgvxxbg5si3h4fvqknvznckb71a07x0hbsmdc6w4";
        };
      };
    };
    "ezyang/htmlpurifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ezyang-htmlpurifier-523407fb06eb9e5f3d59889b3978d5bfe94299c8";
        src = fetchurl {
          url = "https://api.github.com/repos/ezyang/htmlpurifier/zipball/523407fb06eb9e5f3d59889b3978d5bfe94299c8";
          sha256 = "1g65bndiwd2dmq5p6f29lh66x8lwxhpp1pmd619qbm8bnsy7hvki";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-a751f2bc86dd8e6cfef12dc0cbdada82f5a18750";
        src = fetchurl {
          url = "https://api.github.com/repos/fideloper/TrustedProxy/zipball/a751f2bc86dd8e6cfef12dc0cbdada82f5a18750";
          sha256 = "11whawpjkiphdfpfwm5c2v3finc3apl9gp8b4lwq76370i41plcf";
        };
      };
    };
    "foil/foil" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "foil-foil-b820f5fd759b3f187439fcd0359126ea25ea199b";
        src = fetchurl {
          url = "https://api.github.com/repos/FoilPHP/Foil/zipball/b820f5fd759b3f187439fcd0359126ea25ea199b";
          sha256 = "0qq3l3bs18siwscr22ry7vv232zfbgb1n09729k6dpisa7d4vdny";
        };
      };
    };
    "fruitcake/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-laravel-cors-783a74f5e3431d7b9805be8afb60fd0a8f743534";
        src = fetchurl {
          url = "https://api.github.com/repos/fruitcake/laravel-cors/zipball/783a74f5e3431d7b9805be8afb60fd0a8f743534";
          sha256 = "13mqhjks048fb5042l0rfrr52rz7knp9gjn8qviw9cx76kllw2c9";
        };
      };
    };
    "graham-campbell/result-type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-result-type-672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
          sha256 = "156zbfs19r9g543phlpjwhqin3k2x4dsvr5p0wk7rk4j0wwp8l2v";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-fb7566caccf22d74d1ab270de3551f72a58399f5";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/fb7566caccf22d74d1ab270de3551f72a58399f5";
          sha256 = "0cmpq50s5xi9sg1dygllrhwj5dz5bxxj83xkvjspz63751xr51cs";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-3a494dc7dc1d7d12e511890177ae2d0e6c107da6";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/3a494dc7dc1d7d12e511890177ae2d0e6c107da6";
          sha256 = "1x8m4j1snrwyaywa0bsch26lr4050cnwpximbx4k66awc562f068";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-b635f279edd83fc275f822a1188157ffea568ff6";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/b635f279edd83fc275f822a1188157ffea568ff6";
          sha256 = "0734h3r8db06hcffagr8s7bxhjkvlfzvqg1klwmqidflwdwk7yj1";
        };
      };
    };
    "igorw/get-in" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "igorw-get-in-170ded831f49abc6a6061f655aba9bdbcf7b8111";
        src = fetchurl {
          url = "https://api.github.com/repos/igorw/get-in/zipball/170ded831f49abc6a6061f655aba9bdbcf7b8111";
          sha256 = "1fgnhh7i211xbqb9xmiy7j74i9cnrds183a3giv4vzhxk201ikyp";
        };
      };
    };
    "intervention/image" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "intervention-image-04be355f8d6734c826045d02a1079ad658322dad";
        src = fetchurl {
          url = "https://api.github.com/repos/Intervention/image/zipball/04be355f8d6734c826045d02a1079ad658322dad";
          sha256 = "1cbg43hm2jgwb7gm1r9xcr4cpx8ng1zr93zx6shk9xhjlssnv0bx";
        };
      };
    };
    "kylekatarnls/html-object" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kylekatarnls-html-object-7e06624fa9aac2a33e683491abea163089087a88";
        src = fetchurl {
          url = "https://api.github.com/repos/kylekatarnls/html-object/zipball/7e06624fa9aac2a33e683491abea163089087a88";
          sha256 = "0g612nja3l7lisw2fb2aldsnyjgz26gjd83nm32q4yrznw37w3ja";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-e1afe088b4ca613fb96dc57e6d8dbcb8cc2c6b49";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/e1afe088b4ca613fb96dc57e6d8dbcb8cc2c6b49";
          sha256 = "1k7afj4himxmhv02lmq8dc992m2vdkw8hcjyfcnff99cv555z9ph";
        };
      };
    };
    "laravel/horizon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-horizon-ddd6a49063ba3bdfdf5f8ce885d27a8368ad03c4";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/horizon/zipball/ddd6a49063ba3bdfdf5f8ce885d27a8368ad03c4";
          sha256 = "1ys97c2wcm9x069hm8wcdrnqmnpp7frj7f3gdrkbvmh9mzl5bi6r";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-serializable-closure-f23fe9d4e95255dacee1bf3525e0810d1a1b0f37";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/serializable-closure/zipball/f23fe9d4e95255dacee1bf3525e0810d1a1b0f37";
          sha256 = "0dyvqph5q1lb6gl6ga4b1xkziqzj6s2ia5pbd7h40anm4sh3z8dl";
        };
      };
    };
    "laravel/socialite" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-socialite-00ea7f8630673ea49304fc8a9fca5a64eb838c7e";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/socialite/zipball/00ea7f8630673ea49304fc8a9fca5a64eb838c7e";
          sha256 = "0ryw1hwngxqdsi5cvsj69zfqg1ql92z4wmi7bb1wj75x7dn1v76f";
        };
      };
    };
    "laravel/telescope" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-telescope-8067e857ca3733f738666994f0b5cd305fa0ed59";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/telescope/zipball/8067e857ca3733f738666994f0b5cd305fa0ed59";
          sha256 = "0p64w8ylmydrisr96ddyq3dccs19vmk0qgqqh8j9345km4v6y4hb";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/tinker/zipball/04a2d3bd0d650c0764f70bf49d1ee39393e4eb10";
          sha256 = "06rivrmcf8m8hm4vn9s7wwpfmgl89p73b78dm0qx26rs0lpr36p0";
        };
      };
    };
    "laravel/ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-ui-65ec5c03f7fee2c8ecae785795b829a15be48c2c";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/ui/zipball/65ec5c03f7fee2c8ecae785795b829a15be48c2c";
          sha256 = "0hr8kkbxvxxidnw86r1i92938wajhskv68zjn1627h1i16b10ysm";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/d44a24690f16b8c1808bf13b1bd54ae4c63ea048";
          sha256 = "1qx99m1qa2g3l6r2fim3rak6qh28zjj8sqjj86nq743dm3yszygw";
        };
      };
    };
    "league/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-config-754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/config/zipball/754b3604fb2984c71f4af4a9cbe7b57f346ec1f3";
          sha256 = "0yjb85cd0qa0mra995863dij2hmcwk9x124vs8lrwiylb0l3mn8s";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-3239285c825c152bcc315fe0e87d6b55f5972ed1";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/3239285c825c152bcc315fe0e87d6b55f5972ed1";
          sha256 = "0p1cirl7j9b3gvbp264d08abfnrki89jr7rx0cbw0bjw1apf4spz";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/ff6248ea87a9f116e78edd6002e39e5128a0d4dd";
          sha256 = "1a63nvqd6cz3vck3y8vjswn6c3cfwh13p0cn0ci5pqdf0bgjvvfz";
        };
      };
    };
    "league/oauth1-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-oauth1-client-d6365b901b5c287dd41f143033315e2f777e1167";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/oauth1-client/zipball/d6365b901b5c287dd41f143033315e2f777e1167";
          sha256 = "0hkh8l7884g8ssja1biwfb59x0jj951lwk6kmiacjqvyvzs07qmx";
        };
      };
    };
    "mews/purifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mews-purifier-48e7bddc18140412d7cd815b6eea2fc7a141c432";
        src = fetchurl {
          url = "https://api.github.com/repos/mewebstudio/Purifier/zipball/48e7bddc18140412d7cd815b6eea2fc7a141c432";
          sha256 = "1z3qh73v458sm143w08lygizds2zdqakjm54rab9792i0zxnlmfg";
        };
      };
    };
    "mmucklo/inflect" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mmucklo-inflect-b665bcd3d4c23b6aa1990b6405ff96dd437689e9";
        src = fetchurl {
          url = "https://api.github.com/repos/mmucklo/inflect/zipball/b665bcd3d4c23b6aa1990b6405ff96dd437689e9";
          sha256 = "07lpbbsmgli3aggrm2iddayhdsz1v0rbm5dfvdf3zmxqvyd6d3lb";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-f259e2b15fb95494c83f52d3caad003bbf5ffaa1";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/f259e2b15fb95494c83f52d3caad003bbf5ffaa1";
          sha256 = "0lz7lgr1bcxsh4c63z8k26bxawkx14h689wgdiap8992rf97kbk2";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-c1001b3bc75039b07f38a79db5237c4c529e04c8";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/c1001b3bc75039b07f38a79db5237c4c529e04c8";
          sha256 = "0w5gk7b05pfsbf091plfr0ag6sx6h90sckz1phr46kd6cnrzk3rh";
        };
      };
    };
    "nette/schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-schema-abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/schema/zipball/abbdbb70e0245d5f3bf77874cea1dfb0c930d06f";
          sha256 = "16i8gim0jpmmbq0pp4faw8kn2448yvpgsd1zvipbv9xrk37vah5q";
        };
      };
    };
    "nette/utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-utils-cacdbf5a91a657ede665c541eda28941d4b09c1e";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/utils/zipball/cacdbf5a91a657ede665c541eda28941d4b09c1e";
          sha256 = "0v3as5xdmr9j7d4q4ly18f7g8g0sjcy25l4ispsdp60byldi7m8h";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-11e2663a5bc9db5d714eedb4277ee300403b4a9e";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/11e2663a5bc9db5d714eedb4277ee300403b4a9e";
          sha256 = "1kkz11dsc11zhflc8wxjxxa8xjww371nwkmjf7ncn0spjf6hx4g5";
        };
      };
    };
    "opensolutions/oss-snmp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opensolutions-oss-snmp-1445daf3b3a99c71246afa97c8e5e96d1f8586bc";
        src = fetchurl {
          url = "https://api.github.com/repos/opensolutions/OSS_SNMP/zipball/1445daf3b3a99c71246afa97c8e5e96d1f8586bc";
          sha256 = "1agw3rkpb19863p2abx8r2r0msf3qnjn9g21i87xk5p61miww0zy";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-3d81e4309d2a927abbe66df935f4bb60082805ad";
        src = fetchurl {
          url = "https://api.github.com/repos/opis/closure/zipball/3d81e4309d2a927abbe66df935f4bb60082805ad";
          sha256 = "0hqs6rdkkcggswrgjlispkby2yg4hwn63bl2ma62lnmpfbpwn0sd";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-58c3f47f650c94ec05a151692652a868995d2938";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/58c3f47f650c94ec05a151692652a868995d2938";
          sha256 = "0i9km0lzvc7df9758fm1p3y0679pzvr5m9x3mrz0d2hxlppsm764";
        };
      };
    };
    "parsedown/laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "parsedown-laravel-c713ffe28c76730754389180e86e93e8e84087e7";
        src = fetchurl {
          url = "https://api.github.com/repos/parsedown/laravel/zipball/c713ffe28c76730754389180e86e93e8e84087e7";
          sha256 = "1sjgnksdpahz303c8dyfmx9ckjlwbcqny0g9bsh78z4w200b11sf";
        };
      };
    };
    "phenx/php-font-lib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phenx-php-font-lib-dd448ad1ce34c63d09baccd05415e361300c35b4";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/php-font-lib/zipball/dd448ad1ce34c63d09baccd05415e361300c35b4";
          sha256 = "0l20inbvipjdg9fdd32v8b7agjyvcs0rpqswcylld64vbm2sf3il";
        };
      };
    };
    "phenx/php-svg-lib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phenx-php-svg-lib-4498b5df7b08e8469f0f8279651ea5de9626ed02";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/php-svg-lib/zipball/4498b5df7b08e8469f0f8279651ea5de9626ed02";
          sha256 = "01w65haq96sfyjl8ahm9nb95wasgl66ymv5lycx1cbagy653xdin";
        };
      };
    };
    "php-ds/php-ds" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-ds-php-ds-43d2df301a9e2017f67b8c11d94a5222f9c00fd1";
        src = fetchurl {
          url = "https://api.github.com/repos/php-ds/polyfill/zipball/43d2df301a9e2017f67b8c11d94a5222f9c00fd1";
          sha256 = "1gkkxkg6km1kz74mcvygfi7bsya4ay6p9v9yhfs2ar46r5xnpzn4";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-dd3a383e599f49777d8b628dadbb90cae435b87e";
        src = fetchurl {
          url = "https://api.github.com/repos/schmittjoh/php-option/zipball/dd3a383e599f49777d8b628dadbb90cae435b87e";
          sha256 = "029gpfa66hwg395jvf7swcvrj085wsw5fw6041nrl5kbc36fvwlb";
        };
      };
    };
    "pimple/pimple" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pimple-pimple-a94b3a4db7fb774b3d78dad2315ddc07629e1bed";
        src = fetchurl {
          url = "https://api.github.com/repos/silexphp/Pimple/zipball/a94b3a4db7fb774b3d78dad2315ddc07629e1bed";
          sha256 = "1wdq0cyqgys55vvjphh58lxgspzap1f3bs0r1k4vgphvf1m6m8pl";
        };
      };
    };
    "pragmarx/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-80c3d801b31fe165f8fe99ea085e0a37834e1be3";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa/zipball/80c3d801b31fe165f8fe99ea085e0a37834e1be3";
          sha256 = "0qfjgkl02ifc0zicv3d5d6zs8mwpq68bg211jy3psgghnqpxyhlm";
        };
      };
    };
    "pragmarx/google2fa-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-laravel-f9014fd7ea36a1f7fffa233109cf59b209469647";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa-laravel/zipball/f9014fd7ea36a1f7fffa233109cf59b209469647";
          sha256 = "1y1b24fyfsf8mrhla3j699x1x6pd23rw5k3pjsag0vqgvd4v3a8n";
        };
      };
    };
    "pragmarx/google2fa-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-qrcode-fd5ff0531a48b193a659309cc5fb882c14dbd03f";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa-qrcode/zipball/fd5ff0531a48b193a659309cc5fb882c14dbd03f";
          sha256 = "1csa15v68bznrz3262xjcdgcgw0lg8fwb6fhrbms2mnylhq4s35g";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
          sha256 = "07rnyjwb445sfj30v5ny3gfsgc1m7j7cyvwjgs2cm9slns1k1ml8";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-client-0955afe48220520692d2d09f7ab7e0f93ffd6a31";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-client/zipball/0955afe48220520692d2d09f7ab7e0f93ffd6a31";
          sha256 = "09r970lfpwil861gzm47446ck1s6km6ijibkxl13p1ymwdchnv6m";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-e616d01114759c4c489f93b099585439f795fe35";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-factory/zipball/e616d01114759c4c489f93b099585439f795fe35";
          sha256 = "1vzimn3h01lfz0jx0lh3cy9whr3kdh103m1fw07qric4pnnz5kx8";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-402d35bcb92c70c026d1a6a9883f06b2ead23d71";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/402d35bcb92c70c026d1a6a9883f06b2ead23d71";
          sha256 = "13cnlzrh344n00sgkrp5cgbkr8dznd99c3jfnpl0wg1fdv1x4qfm";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-ef29f6d262798707a9edd554e2b82517ef3a9376";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/ef29f6d262798707a9edd554e2b82517ef3a9376";
          sha256 = "02z3lixbb248li6y060afd2mdz6w5chfwxgsnwkff89205xafzg1";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-4f00ee9e236fa6a48f4560d1300b9c961a70a7ec";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/4f00ee9e236fa6a48f4560d1300b9c961a70a7ec";
          sha256 = "10754cxjwjf818g7i3vyd4jk0sy8r3i36jxpqk38n70ckasdd7w0";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-ad7475d1c9e70b190ecffc58f2d989416af339b4";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/ad7475d1c9e70b190ecffc58f2d989416af339b4";
          sha256 = "1a1wqdwdrbzkf2hias2kw9crr31265pn027vm69pr7alyq2qrzfw";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-60a4c63ab724854332900504274f6150ff26d286";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/60a4c63ab724854332900504274f6150ff26d286";
          sha256 = "1w1i50pbd18awmvzqjkbszw79dl09912ibn95qm8lxr4nsjvbb27";
        };
      };
    };
    "s1lentium/iptools" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "s1lentium-iptools-88be1aaaab3c50fc131ebe778e246215ff006d8e";
        src = fetchurl {
          url = "https://api.github.com/repos/S1lentium/IPTools/zipball/88be1aaaab3c50fc131ebe778e246215ff006d8e";
          sha256 = "1xmykz45pwway8xww08gj89hq9ac7k852896pvwh69fs0jxiifkn";
        };
      };
    };
    "sabberworm/php-css-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabberworm-php-css-parser-e41d2140031d533348b2192a83f02d8dd8a71d30";
        src = fetchurl {
          url = "https://api.github.com/repos/sabberworm/PHP-CSS-Parser/zipball/e41d2140031d533348b2192a83f02d8dd8a71d30";
          sha256 = "0slqh0ra9cwk1pm4q7bqhndynir0yxypzrxb2vrfzfkmnh0rm02c";
        };
      };
    };
    "socialiteproviders/manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "socialiteproviders-manager-47402cbc5b7ef445317e799bf12fd5a12062206c";
        src = fetchurl {
          url = "https://api.github.com/repos/SocialiteProviders/Manager/zipball/47402cbc5b7ef445317e799bf12fd5a12062206c";
          sha256 = "0lmsb1ni27dw1zipd3l24dzm43xggh4dd92iws3r161s4pppf7sc";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-8a5d5072dca8f48460fce2f4131fcc495eec654c";
        src = fetchurl {
          url = "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/8a5d5072dca8f48460fce2f4131fcc495eec654c";
          sha256 = "1p9m4fw9y9md9a7msbmnc0hpdrky8dwrllnyg1qf1cdyp9d70x1d";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-560fc3ed7a43e6d30ea94a07d77f9a60b8ed0fb8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/560fc3ed7a43e6d30ea94a07d77f9a60b8ed0fb8";
          sha256 = "1ir8wsdkd11a3v00pbxg9s5rxd9418f17ic4rf6v69ivl1b3mhm9";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-95f3c7468db1da8cc360b24fa2a26e7cefcb355d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/95f3c7468db1da8cc360b24fa2a26e7cefcb355d";
          sha256 = "1kg6q10qirg7gq6va3v3w076jm1kfi4rz1pdsqf8nl9gnaj5n8kb";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-e8b495ea28c1d97b5e0c121748d6f9b53d075c66";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/e8b495ea28c1d97b5e0c121748d6f9b53d075c66";
          sha256 = "09k869asjb7cd3xh8i5ps824k5y6v510sbpzfalndwy3knig9fig";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-c1b9be3b8a6f60f720bec28c4ffb6fb5b00a8946";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/c1b9be3b8a6f60f720bec28c4ffb6fb5b00a8946";
          sha256 = "0cjf5z2lknyl1r2ckkjk9a01s88zj7q5i98hyj7jdqc758dmbjf5";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-1df20e45d56da29a4b1d8259dd6e950acbf1b13f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/1df20e45d56da29a4b1d8259dd6e950acbf1b13f";
          sha256 = "162ncixk5yfqjn6rzmiqri2ycj34lr2w2lwgqgra99ij2p2gk3bn";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-f98b54df6ad059855739db6fcbc2d36995283fe1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/f98b54df6ad059855739db6fcbc2d36995283fe1";
          sha256 = "114zpsd8vac016a0ppf5ag5lmgllrha7nwln8vvhq9282r79xhsl";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-078e9a5e1871fcfe6a5ce421b539344c21afef19";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/078e9a5e1871fcfe6a5ce421b539344c21afef19";
          sha256 = "0w14pizksi8yqjzdgghxbrvly3svx5diyi23dli7kqhjf6q3g6a9";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-3c59f97f6249ce552a44f01b93bfcbd786a954f5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/3c59f97f6249ce552a44f01b93bfcbd786a954f5";
          sha256 = "0m36cfrr05z58j7khlpa14s8jglhfkymhn9snap6amrckxmq7c19";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-f38b722e1557eb3f487d351b48f5a1279b50e9d1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/f38b722e1557eb3f487d351b48f5a1279b50e9d1";
          sha256 = "01g9rd80ddrn4f01725x43agzkm5s1bxz1sssxf3ib5nl0mm5acp";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-ae0a1032a450a3abf305ee44fc55ed423fbf16e3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mime/zipball/ae0a1032a450a3abf305ee44fc55ed423fbf16e3";
          sha256 = "1fj0z9bxwvw5w7h218n885xk2avsyangq9xvqajx1vjighycliga";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-5bbc823adecdae860bb64756d639ecfec17b050a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/5bbc823adecdae860bb64756d639ecfec17b050a";
          sha256 = "0vyv70z1yi2is727d1mkb961w5r1pb1v3wy1pvdp30h8ffy15wk6";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-927013f3aac555983a5059aada98e1907d842695";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-iconv/zipball/927013f3aac555983a5059aada98e1907d842695";
          sha256 = "1qmnzd3r2l35rx84r8ai0596dywsj7q5y3dngaf1vsz16k5ig409";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-511a08c03c1960e08a883f4cffcacd219b758354";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/511a08c03c1960e08a883f4cffcacd219b758354";
          sha256 = "0ifsgsyxf0z0nkynqvr5259dm5dsmbgdpvyi5zfvy8935mi0ki0i";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-639084e360537a19f9ee352433b84ce831f3d2da";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/639084e360537a19f9ee352433b84ce831f3d2da";
          sha256 = "1i2wcsbfbwdyrx8545yrrvbdaf4l2393pjvg9266q74611j6pzxj";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-19bd1e4fcd5b91116f14d8533c57831ed00571b6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/19bd1e4fcd5b91116f14d8533c57831ed00571b6";
          sha256 = "1d80jph5ykiw6ydv8fwd43s0aglh24qc1yrzds2f3aqanpbk1gr2";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/8ad114f6b39e2c98a8b0e3bd907732c207c2b534";
          sha256 = "1ym84qp609i50lv4vkd4yz99y19kaxd5kmpdnh66mxx1a4a104mi";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-869329b1e9894268a8a61dabb69153029b7a8c97";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/869329b1e9894268a8a61dabb69153029b7a8c97";
          sha256 = "1h0lbh8d41sa4fymmw03yzws3v3z0lz4lv1kgcld7r53i2m3wfwp";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/9e8ecb5f92152187c4799efd3c96b78ccab18ff9";
          sha256 = "1p0jr92x323pl4frjbhmziyk5g1zig1g30i1v1p0wfli2sq8h5mb";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936";
          sha256 = "16yydk7rsknlasrpn47n4b4js8svvp4rxzw99dkav52wr3cqmcwd";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-707403074c8ea6e2edaf8794b0157a0bfa52157a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/707403074c8ea6e2edaf8794b0157a0bfa52157a";
          sha256 = "05qrjfnnnz402l11wm0ydblrip7hjll12yqxmh2wd02b0s8dj29f";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-e3c46cc5689c8782944274bb30702106ecbe3b64";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/e3c46cc5689c8782944274bb30702106ecbe3b64";
          sha256 = "103bdd0nycl9k9lgf64p0f6qy12mf5k5anwdr2vhfy8ab4kv6a7y";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-c2ac11eb34947999b7c38fb4c835a57306907e6d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/c2ac11eb34947999b7c38fb4c835a57306907e6d";
          sha256 = "15w8b93nq64i7gjfv5kzaidvcl0c1vams57b1cq2d14kfbm2xnvb";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
          sha256 = "0lh0vxy0h4wsjmnlf42s950bicsvkzz6brqikfnfb5kmvi0xhcm6";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-8036a4c76c0dd29e60b6a7cafcacc50cf088ea62";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/8036a4c76c0dd29e60b6a7cafcacc50cf088ea62";
          sha256 = "18vggc1ydnibd150vha9njlp5dpv6xl3b8jj3r0arx01jwkg51n5";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-de237e59c5833422342be67402d487fbf50334ff";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/de237e59c5833422342be67402d487fbf50334ff";
          sha256 = "10qc1fymfvchk161hykkbqpy5ndxh6kigjhjsz5qp968dqcrckj2";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-136b19dd05cdf0709db6537d058bcab6dd6e2dbe";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation-contracts/zipball/136b19dd05cdf0709db6537d058bcab6dd6e2dbe";
          sha256 = "1z1514i3gsxdisyayzh880i8rj954qim7c183cld91kvvqcqi7x0";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-8e12706bf9c68a2da633f23bfdc15b4dce5970b3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/8e12706bf9c68a2da633f23bfdc15b4dce5970b3";
          sha256 = "17g2lmdmzgdzqri5bm0glns0y4nyi3a8yihsba0gf9wi821k50jk";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-c42125b83a4fa63b187fdf29f9c93cb7733da30c";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/c42125b83a4fa63b187fdf29f9c93cb7733da30c";
          sha256 = "0ckk04hwwz0fdkfr20i7xrhdjcnnw1b0liknbb81qyr1y4b7x3dd";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
          sha256 = "13h4xyxhdjn1n7xcxbcdhj20rv5fsaigbsbz61x2i224hj76620a";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-87337c91b9dfacee02452244ee14ab3c43bc485a";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/portable-ascii/zipball/87337c91b9dfacee02452244ee14ab3c43bc485a";
          sha256 = "1j2xpbv7xiwxwb6gfc3h6imc6xcbyb2jw3h8wgfnpvjl5yfbi4xb";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
        };
      };
    };
    "webpatser/laravel-countries" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webpatser-laravel-countries-000d7aaa67a1eb488275feafe6ab74a6b7544e84";
        src = fetchurl {
          url = "https://api.github.com/repos/webpatser/laravel-countries/zipball/000d7aaa67a1eb488275feafe6ab74a6b7544e84";
          sha256 = "0smclizp7q0cbc8g68f5my9rmcnf1bzs9p7rd3nh2h75wdygkkky";
        };
      };
    };
    "wolfcast/browser-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wolfcast-browser-detection-77fad169776d6c4fc61fa740fb16495cafc505eb";
        src = fetchurl {
          url = "https://api.github.com/repos/Wolfcast/BrowserDetection/zipball/77fad169776d6c4fc61fa740fb16495cafc505eb";
          sha256 = "0f3r97akyzcfi7jircs4q442npvicwbj92a6dl5wkrvlh9gv3j7g";
        };
      };
    };
    "zendesk/zendesk_api_client_php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendesk-zendesk_api_client_php-13f0c1f299796cc271a2b84c7eda98b3ab0c97a9";
        src = fetchurl {
          url = "https://api.github.com/repos/zendesk/zendesk_api_client_php/zipball/13f0c1f299796cc271a2b84c7eda98b3ab0c97a9";
          sha256 = "0ka0z1hrz01g77nc53j35ldrk9drw7kh1qkmpc3wzdbx7dv3f71d";
        };
      };
    };
  };
  devPackages = {
    "amphp/amp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-amp-9d5100cebffa729aaffecd3ad25dc5aeea4f13bb";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/amp/zipball/9d5100cebffa729aaffecd3ad25dc5aeea4f13bb";
          sha256 = "0pwk9xx2wr5h0lyihccinvzlkk17hc4gjc0w5jsinxsnazfqhmn1";
        };
      };
    };
    "amphp/byte-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-byte-stream-acbd8002b3536485c997c4e019206b3f10ca15bd";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/byte-stream/zipball/acbd8002b3536485c997c4e019206b3f10ca15bd";
          sha256 = "14jqc5igivq54bwj0gr9rpbnw1rapi11ddhmvbkx1251a1bbyzr2";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-3372ed65e6d2039d663ed19aa699956f9d346271";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/3372ed65e6d2039d663ed19aa699956f9d346271";
          sha256 = "08ll8z25mbq21q8gxdlgdb0pymx7z3xxc1la68m879l5r2ddhi05";
        };
      };
    };
    "barryvdh/laravel-ide-helper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-ide-helper-81d5b223ff067a1f38e14c100997e153b837fe4a";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-ide-helper/zipball/81d5b223ff067a1f38e14c100997e153b837fe4a";
          sha256 = "0z1zpkznvrqs0wnr0zj8fj832a8bqgzkhk4s3j6mmaxjkxbxa8s9";
        };
      };
    };
    "barryvdh/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-reflection-docblock-bf44b757feb8ba1734659029357646466ded673e";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/ReflectionDocBlock/zipball/bf44b757feb8ba1734659029357646466ded673e";
          sha256 = "0wqay983dn0j4b71f7i8r454r0ciypjss9hbwn5dadlrw0wgssmv";
        };
      };
    };
    "beyondcode/laravel-dump-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "beyondcode-laravel-dump-server-1f2452617afc64e47b3cf49978beb7beeef084df";
        src = fetchurl {
          url = "https://api.github.com/repos/beyondcode/laravel-dump-server/zipball/1f2452617afc64e47b3cf49978beb7beeef084df";
          sha256 = "0ljhihcgbj6x0xd3p5i171l1vjr7ggpf4qwsrhrz3zs6l9vl95nx";
        };
      };
    };
    "composer/class-map-generator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-class-map-generator-1e1cb2b791facb2dfe32932a7718cf2571187513";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/class-map-generator/zipball/1e1cb2b791facb2dfe32932a7718cf2571187513";
          sha256 = "02avlgdwwm6pbh5pbv3bd2km4xy6vzbf3kyg6awsrfwd40v6kdqg";
        };
      };
    };
    "composer/package-versions-deprecated" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-package-versions-deprecated-b4f54f74ef3453349c24a845d22392cd31e65f1d";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/package-versions-deprecated/zipball/b4f54f74ef3453349c24a845d22392cd31e65f1d";
          sha256 = "1hrjxvk8i14pw9gi7j3qc0gljjy74hwdkv8zwsrg5brgyzhqfwam";
        };
      };
    };
    "composer/pcre" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-pcre-4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/pcre/zipball/4bff79ddd77851fe3cdd11616ed3f92841ba5bd2";
          sha256 = "05cvb25kawk3wjq9pvkx15rsjf9gjvhksmbq3xxhrmvqsl42mzrs";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-3953f23262f2bff1919fc82183ad9acb13ff62c9";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/3953f23262f2bff1919fc82183ad9acb13ff62c9";
          sha256 = "0sp54hzb2gq777rd0w5ciq00g0l85irc2m6s2zx7675g24wfbbms";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-ced299686f41dce890debac69273b47ffe98a40c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/ced299686f41dce890debac69273b47ffe98a40c";
          sha256 = "1hnhrp26mk3zjsp6cl351b12bcbbbdglc677vjz9n8l7qj466b0h";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
        src = fetchurl {
          url = "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
          sha256 = "02n4b4wkwncbqiz8mw2rq35flkkhn7h6c0bfhjhs32iay1y710fq";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-0a0fa9780f5d4e507415a065172d26a98d02047b";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/0a0fa9780f5d4e507415a065172d26a98d02047b";
          sha256 = "00qv07k8hpl2nj5pmamzihflgc0yx04h0rcln2fy3bz65jd6kb5j";
        };
      };
    };
    "facade/flare-client-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-flare-client-php-213fa2c69e120bca4c51ba3e82ed1834ef3f41b8";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/flare-client-php/zipball/213fa2c69e120bca4c51ba3e82ed1834ef3f41b8";
          sha256 = "1pnwkvnix1qhf0vh0qa7nm71y1fhhif5r8ralwa0fn54vgr1pwsa";
        };
      };
    };
    "facade/ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-b4f5955825bb4b74cba0f94001761c46335c33e9";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/ignition/zipball/b4f5955825bb4b74cba0f94001761c46335c33e9";
          sha256 = "1in28ra8k7s8bwabb1ap024n456jlsg0n75r1f1q1hyzpmv8xvf4";
        };
      };
    };
    "facade/ignition-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-contracts-3c921a1cdba35b68a7f0ccffc6dffc1995b18267";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/ignition-contracts/zipball/3c921a1cdba35b68a7f0ccffc6dffc1995b18267";
          sha256 = "1nsjwd1k9q8qmfvh7m50rs42yxzxyq4f56r6dq205gwcmqsjb2j0";
        };
      };
    };
    "fakerphp/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fakerphp-faker-e3daa170d00fde61ea7719ef47bb09bb8f1d9b01";
        src = fetchurl {
          url = "https://api.github.com/repos/FakerPHP/Faker/zipball/e3daa170d00fde61ea7719ef47bb09bb8f1d9b01";
          sha256 = "1n99cfc737xcyvip3k9j1f5iy91bh1m64xg404xa7gvzlgpdnm7n";
        };
      };
    };
    "felixfbecker/advanced-json-rpc" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "felixfbecker-advanced-json-rpc-b5f37dbff9a8ad360ca341f3240dc1c168b45447";
        src = fetchurl {
          url = "https://api.github.com/repos/felixfbecker/php-advanced-json-rpc/zipball/b5f37dbff9a8ad360ca341f3240dc1c168b45447";
          sha256 = "1414k12bznhi6zbb41sm7m2wjnpabvi1xybh0v6rxf8khj15rccq";
        };
      };
    };
    "felixfbecker/language-server-protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "felixfbecker-language-server-protocol-6e82196ffd7c62f7794d778ca52b69feec9f2842";
        src = fetchurl {
          url = "https://api.github.com/repos/felixfbecker/php-language-server-protocol/zipball/6e82196ffd7c62f7794d778ca52b69feec9f2842";
          sha256 = "0gildnl5ciiq3sv23l2j6zrcf3glab56vvr4sxlwsd6pqzz2yl37";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-aac9304c5ed61bf7b1b7a6064bf9806ab842ce73";
        src = fetchurl {
          url = "https://api.github.com/repos/filp/whoops/zipball/aac9304c5ed61bf7b1b7a6064bf9806ab842ce73";
          sha256 = "029in6mbxfxvhfakcdnqh6xmn237x889glyz5654gnx36w538zdj";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "laravel/dusk" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-dusk-25a595ac3dc82089a91af10dd23b0d58fd3f6d0b";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/dusk/zipball/25a595ac3dc82089a91af10dd23b0d58fd3f6d0b";
          sha256 = "1qkfdvri6zdwdy8i0za7qy8irbahkjmipwd0bhjs40p4kn479vk2";
        };
      };
    };
    "laravel/sail" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-sail-4f230634a3163f3442def6a4e6ffdb02b02e14d6";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/sail/zipball/4f230634a3163f3442def6a4e6ffdb02b02e14d6";
          sha256 = "136v3ki7qfc1jsdm9z1c0dld6n3ycbabza01h8jd2pbpn1rjdrq8";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
        src = fetchurl {
          url = "https://api.github.com/repos/maximebf/php-debugbar/zipball/17dcf3f6ed112bb85a37cf13538fd8de49f5c274";
          sha256 = "06g98wazm9lfimz21m8833123h06gh48pmp8xixljra9lbl50g7v";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-13a7fa2642c76c58fa2806ef7f565344c817a191";
        src = fetchurl {
          url = "https://api.github.com/repos/mockery/mockery/zipball/13a7fa2642c76c58fa2806ef7f565344c817a191";
          sha256 = "174bkkbgzwb9fprcihxnacfzbifx8ppkdkb516cnf5vvv2qx134i";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
          sha256 = "16k44y94bcr439bsxm5158xvmlyraph2c6n17qa5y29b04jqdw5j";
        };
      };
    };
    "netresearch/jsonmapper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "netresearch-jsonmapper-f60565f8c0566a31acf06884cdaa591867ecc956";
        src = fetchurl {
          url = "https://api.github.com/repos/cweiske/jsonmapper/zipball/f60565f8c0566a31acf06884cdaa591867ecc956";
          sha256 = "1hbn95pcfb63b6z17lgwz16li34cdad92zj4py6vjzdbz14m0xq5";
        };
      };
    };
    "nunomaduro/collision" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-collision-8b610eef8582ccdc05d8f2ab23305e2d37049461";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/collision/zipball/8b610eef8582ccdc05d8f2ab23305e2d37049461";
          sha256 = "0w559vqpknkl6fbhz5hnkc9g37ydcyrqx82w3kjl88vmjycd1f61";
        };
      };
    };
    "openlss/lib-array2xml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "openlss-lib-array2xml-a91f18a8dfc69ffabe5f9b068bc39bb202c81d90";
        src = fetchurl {
          url = "https://api.github.com/repos/nullivex/lib-array2xml/zipball/a91f18a8dfc69ffabe5f9b068bc39bb202c81d90";
          sha256 = "0h8f4ag6gq7xbh6bvybzbfmnxcsyqnk9dni0bdm195bnjqjw1l2q";
        };
      };
    };
    "orchestra/testbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "orchestra-testbench-554949455a88e5afe31f3f7aa3c7104ab659995b";
        src = fetchurl {
          url = "https://api.github.com/repos/orchestral/testbench/zipball/554949455a88e5afe31f3f7aa3c7104ab659995b";
          sha256 = "0b230l74rz5sw8b3gfid7xnkzlvqx5ilsjy3m436d14p0w31sb5k";
        };
      };
    };
    "orchestra/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "orchestra-testbench-core-12baf011c23e64bfe2a6c89f2eb07602e387f259";
        src = fetchurl {
          url = "https://api.github.com/repos/orchestral/testbench-core/zipball/12baf011c23e64bfe2a6c89f2eb07602e387f259";
          sha256 = "178m330z79n9jjrg9byz7pkvc5w5zv0q8zhziq8fzg2a3d7dlz3h";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "php-webdriver/webdriver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-webdriver-webdriver-3ea4f924afb43056bf9c630509e657d951608563";
        src = fetchurl {
          url = "https://api.github.com/repos/php-webdriver/php-webdriver/zipball/3ea4f924afb43056bf9c630509e657d951608563";
          sha256 = "0mwhw5b7axvcsf7zk9nsjich4yj9sc0vdp11klddgm0z6w0i9rqr";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-b2fe4d22a5426f38e014855322200b97b5362c0d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/b2fe4d22a5426f38e014855322200b97b5362c0d";
          sha256 = "06nsbg1min5qw3126pb9fs70n7pqqzihkj2ficxqf4fjrc2vznv6";
        };
      };
    };
    "phpstan/phpdoc-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpdoc-parser-ec58baf7b3c7f1c81b3b00617c953249fb8cf30c";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpdoc-parser/zipball/ec58baf7b3c7f1c81b3b00617c953249fb8cf30c";
          sha256 = "1d0hs50hfa39fxczz7zvl078yphn56wmkfxars8jla1ym45mr768";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-443bc6912c9bd5b409254a40f4b0f4ced7c80ea1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/443bc6912c9bd5b409254a40f4b0f4ced7c80ea1";
          sha256 = "18v2xs142pw4dl9l6imcmkdvv5m18zd36ar41i586f4mg8d961d1";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-a9aceaf20a682aeacf28d582654a1670d8826778";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/a9aceaf20a682aeacf28d582654a1670d8826778";
          sha256 = "169mxfmx4a1vb9j7hvfi7j5kmw4b7px4hf3nv22lhyb0q4r4wy6l";
        };
      };
    };
    "psalm/plugin-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psalm-plugin-laravel-8c46a820d4de59ae601a9fcf5534df6bb03e619a";
        src = fetchurl {
          url = "https://api.github.com/repos/psalm/psalm-plugin-laravel/zipball/8c46a820d4de59ae601a9fcf5534df6bb03e619a";
          sha256 = "0m3cjhfksg647ypgfg6kdwbwdnh6jwpkxyazx631kp1jmw64lixl";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-fa0f136dd2334583309d32b62544682ee972b51a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a";
          sha256 = "0m8ibkwaxw2q5v84rlvy7ylpkddscsa8hng0cjczy4bqpqavr83w";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
          sha256 = "0f90471bi8lkmffms3bc2dnggqv8a81y1f4gi7p3r5120328mjm0";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
          sha256 = "02045n3in01zk571v1phyhj0b2mvnvx8qnlqvw4j33r7qdd4clzn";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
          sha256 = "1a6yj8v8rwj3igip8xysdifvbd7gkzmwrj9whdx951pdq7add46j";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-0ca8db5a5fc9c8646244e629625ac486fa286bf2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/0ca8db5a5fc9c8646244e629625ac486fa286bf2";
          sha256 = "1csrfa5b7ivza712lfmbywp9jhwf4ls5lc0vn812xljkj7w24kg1";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
          sha256 = "1ag6ysxffhxyg7g4rj9xjjlwq853r4x92mmin4f09hn5mqn9f0l1";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
          sha256 = "0bvfvb62qbpy2hzxs4bjzb0xhks6h3cp6qx96z4qlyz6wl2fa1w5";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "spatie/backtrace" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-backtrace-47794d19e3215ace9e005a8f200cd7cc7be52572";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/backtrace/zipball/47794d19e3215ace9e005a8f200cd7cc7be52572";
          sha256 = "0jm7qihffjfpg7dv6cqgxbygn3xz7q7lk3wm1mdpy5b0rqnzlkw6";
        };
      };
    };
    "spatie/laravel-ray" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-laravel-ray-2274653f0a90dd87fbb887437be1c1ea1388a47c";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/laravel-ray/zipball/2274653f0a90dd87fbb887437be1c1ea1388a47c";
          sha256 = "1pm287r79gw394cx22yk028sknqw0jnx71vkkj77c0k1dd61nbf3";
        };
      };
    };
    "spatie/macroable" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-macroable-ec2c320f932e730607aff8052c44183cf3ecb072";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/macroable/zipball/ec2c320f932e730607aff8052c44183cf3ecb072";
          sha256 = "1b18vinvckqi4j9rsxz44672rfvj3i8dfbbz0wdyq0br4zj4lj29";
        };
      };
    };
    "spatie/ray" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-ray-dea16182d4bc9d9833adec7e39fbb3d7b553425d";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/ray/zipball/dea16182d4bc9d9833adec7e39fbb3d7b553425d";
          sha256 = "01b0jvi6wk5smd2nn0r0098hq06mhhqm25daix5k0yaxbr03dg6q";
        };
      };
    };
    "staudenmeir/dusk-updater" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "staudenmeir-dusk-updater-f81141cfbc1d14f78354a2f84496138afe11a394";
        src = fetchurl {
          url = "https://api.github.com/repos/staudenmeir/dusk-updater/zipball/f81141cfbc1d14f78354a2f84496138afe11a394";
          sha256 = "0dcxk4c1s2qyvp7ij2x124axslg12x1zc2d76pfw7vzcrvq5rfhd";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-f83692cd869a6f2391691d40a01e8acb89e76fee";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/f83692cd869a6f2391691d40a01e8acb89e76fee";
          sha256 = "1qh49p2jfca5kpcmlcbjx5izgqqvjd91385zy5mipyslsdik2lwg";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-4cd2e3ea301aadd76a4172756296fe552fb45b0b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/4cd2e3ea301aadd76a4172756296fe552fb45b0b";
          sha256 = "18yirwiqbh11fwlpqypm0wlc0lnx7prgk68xrn607zcg6cxnfhiz";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
    "vimeo/psalm" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vimeo-psalm-d0bc6e25d89f649e4f36a534f330f8bb4643dd69";
        src = fetchurl {
          url = "https://api.github.com/repos/vimeo/psalm/zipball/d0bc6e25d89f649e4f36a534f330f8bb4643dd69";
          sha256 = "11fqqb6hq709sfh9skzmh9crx8ifkc5fsgp11d6v14d4lqpx6vh6";
        };
      };
    };
    "webmozart/path-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-path-util-d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozart/path-util/zipball/d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
          sha256 = "0zv2di0fh3aiwij0nl6595p8qvm9zh0k8jd3ngqhmqnis35kr01l";
        };
      };
    };
    "zbateson/mail-mime-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zbateson-mail-mime-parser-20b3e48eb799537683780bc8782fbbe9bc25934a";
        src = fetchurl {
          url = "https://api.github.com/repos/zbateson/mail-mime-parser/zipball/20b3e48eb799537683780bc8782fbbe9bc25934a";
          sha256 = "0c98xvqq30vkzbvpa0ampnxql08m804hhnax18dbrldsx5na8csf";
        };
      };
    };
    "zbateson/mb-wrapper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zbateson-mb-wrapper-faf35dddfacfc5d4d5f9210143eafd7a7fe74334";
        src = fetchurl {
          url = "https://api.github.com/repos/zbateson/mb-wrapper/zipball/faf35dddfacfc5d4d5f9210143eafd7a7fe74334";
          sha256 = "0k933wxj90mzlskphd12wcn02hnz35kbmyvz25ncc58gr14jf7cl";
        };
      };
    };
    "zbateson/stream-decorators" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zbateson-stream-decorators-783b034024fda8eafa19675fb2552f8654d3a3e9";
        src = fetchurl {
          url = "https://api.github.com/repos/zbateson/stream-decorators/zipball/783b034024fda8eafa19675fb2552f8654d3a3e9";
          sha256 = "05imxpji6fm0h8spcgd7zcmb8ql7bgxd3pq0rrkdac4492g9ddr8";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "inex-ixp-manager";
  src = composerEnv.filterSrc ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    homepage = "https://github.com/inex/IXP-Manager/wiki";
    license = "GPL-2.0";
  };
}
