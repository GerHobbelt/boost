#! /bin/bash
#
# Generated by the utility: /z/tools/collect_git_checked_out_branch_recusively.sh 
#
# Checkout each git repository to the given branch/commit or list them
#

mode=h;
while getopts ":hlrc" opt ; do
  #echo opt+arg = "$opt$OPTARG"
  case "$opt$OPTARG" in
  l )
    mode=l;
    ;;

  c )
    mode=c;
    ;;

  r )
    mode=r;
    ;;

  * )
    ;;
  esac
done

if test "$mode" = "h" ; then
  cat <<EOH
checkout_to_known_git_branches_recursive.sh options

Options:

-h      : print this help
-l      : LIST the branch/commit for each git repository (directory) registered in this script.
-c      : CHECKOUT each git repository to the BRANCH registered in this script.
-r      : CHECKOUT/REVERT each git repository to the COMMIT registered in this script.

Note:

Use the '-r' option to set each repository to an exact commit position, which is useful if,
for instance, you wish to reproduce this registered previous software state (which may
represent a software release) which you wish to analyze/debug.

EOH
  exit 1;
fi

if test "$mode" = "l" ; then
  cat <<EOH

Git repository directory                    :: commit hash                         / branch name
--------------------------------------------::--------------------------------------------------
EOH
fi



# args: DIR COMMIT [BRANCH]
git_repo_checkout_branch() {
  if test "$mode" = "c" || test "$mode" = "r" ; then
    if test -d "$1" ; then
      pushd "$1"                                                               2> /dev/null  > /dev/null
      printf "%-43s :: %s / %s\n" "$1" "$2" "$3"
      if test "$mode" = "c" ; then
        if test -n "$3" ; then
          # make sure the branch is created locally and is a tracking branch, if it isn't already:
          # https://www.cyberciti.biz/faq/bash-remove-whitespace-from-string/
          current_branch=$( git branch --show-current )
          if test -z "$current_branch" -o "$current_branch" != "$3" ; then
            git checkout "$3"
          fi

          shopt -s extglob
          remote_branch=$( git branch -vv --list $3 '--format=%(upstream)' )
          # Trim leading whitespaces
          remote_branch="${remote_branch##*( )}"
          # Trim trailing whitespaces
          remote_branch="${remote_branch%%*( )}"
          echo "=${remote_branch}="
          shopt -u extglob

          if test -z "$remote_branch" ; then
            echo "No remote branch registered for local branch: $3 --> setting up the remote."
            git branch --track "$3" "remotes/origin/$3"                          2> /dev/null  > /dev/null
            git branch --set-upstream-to=remotes/origin/$3 $3                    2> /dev/null  > /dev/null
            git checkout "$3"
          fi
        else
          current_branch=$( git branch --show-current )
          echo "=${current_branch}="
          if test -z "$current_branch" -o "$current_branch" != "master" ; then
            # checkout to the first of `master` or `main` in case we're not checked out to either right now:
            if test "$current_branch" != "main" -a "$current_branch" != "master" ; then
              echo "Checking out to master/main:"
              git checkout master
              if test $? -ne 0 ; then
                git checkout main
              fi
            fi
          fi
        fi
      else
        git checkout "$2"
      fi
      popd                                                                     2> /dev/null  > /dev/null
    fi
  else
    if test -d "$1" ; then
      printf "%-43s :: %s / %s\n" "$1" "$2" "$3"
    else
      printf "%-43s :: %s / %s\n" "[DIRECTORY DOES NOT EXIST!] $1" "$2" "$3"
    fi
  fi
}


#
# Make sure we switch to the utility directory as all the relative paths for the repositories
# are based off that path!
#
pushd $(dirname $0)                                                            2> /dev/null  > /dev/null



#
# The registered repositories:
#

git_repo_checkout_branch "../libs/accumulators" 9d9e5dae2202660f57e2dc91efb620aa001525b3 master    
git_repo_checkout_branch "../libs/algorithm" 32c5a6327cfdca5d41ce0f1d8849b811886daa2f master    
git_repo_checkout_branch "../libs/align" 5ad7df63cd792fbdb801d600b93cad1a432f0151 master    
git_repo_checkout_branch "../libs/any" aee53090c04bd0a263480fae25fddddcef54ca82 master    
git_repo_checkout_branch "../libs/array" 23f6b27c0d9916b9932baac898ae3009817a9153 master    
git_repo_checkout_branch "../libs/asio" e65367991cb5fbdb8a7cf218ae38f69ca9a0a9f5 master    
git_repo_checkout_branch "../libs/assert" e4142c28337657832b253cd8e85cc1ede8f69831 master    
git_repo_checkout_branch "../libs/assign" ababd47970e8a5fa1bebc8ccad526c4f25bd867a master    
git_repo_checkout_branch "../libs/atomic" 6ee31382b271193064db2bfe0a446260c5b344c0 master    
git_repo_checkout_branch "../libs/beast" 9ce8c8581b374c19150f26e5b51d73eeaa798cee master    
git_repo_checkout_branch "../libs/bimap" 6865e94cc56a33bb8b162bf8d62cfe620b06d2b6 master    
git_repo_checkout_branch "../libs/bind" 9fbfdcb3577e9427815d4f8cc25b3a25d5b9696b master    
git_repo_checkout_branch "../libs/callable_traits" 2a56a3a2496cdb66496f844db55085dd992d5e49 master    
git_repo_checkout_branch "../libs/charconv" ecdca0865d4d8fcfbf8e5b48914f2b5711c418ad           
git_repo_checkout_branch "../libs/chrono" ee0d6d543a37d9b7243682549e9ae359eb89daa9 master    
git_repo_checkout_branch "../libs/circular_buffer" a08a5b55ee82e0c2487523471379ac53a23935dc master    
git_repo_checkout_branch "../libs/cobalt" 0b813affb41e0dd2a42c3c34033f4ae68431b3e9           
git_repo_checkout_branch "../libs/compat" fb5f95b3b2c6426edc03f586e8a4545c76a665e7           
git_repo_checkout_branch "../libs/compatibility" d0caac5c346f7e24b4f8ec1e55110119492b64bd master    
git_repo_checkout_branch "../libs/compute" 36350b7de849300bd3d72a05d8bf890ca405a014 master    
git_repo_checkout_branch "../libs/concept_check" 37c9bddf0bdefaaae0ca5852c1a153d9fc43f278 master    
git_repo_checkout_branch "../libs/config" d2062463f54fc29fc0e97dbb75c4e39e436cbe81 master    
git_repo_checkout_branch "../libs/container" 6e697d796897b32b471b4f0740dcaa03d8ee57cc master    
git_repo_checkout_branch "../libs/container_hash" 6d214eb776456bf17fbee20780a034a23438084f master    
git_repo_checkout_branch "../libs/context" eda684122269659f3f3c100f4cc83af129d36b91 master    
git_repo_checkout_branch "../libs/contract" eca93d24b5d3bb909ed64c12b5feb5296c5cc070 master    
git_repo_checkout_branch "../libs/conversion" 9f285ef0c43c101e49b37bf5e6085e8d635887dc master    
git_repo_checkout_branch "../libs/convert" 0dd7a76b1c051c048b4991b7aa9c8b5aeb5776ee master    
git_repo_checkout_branch "../libs/core" 965508d9e187d589070c5cd1853cc035b51ea3cf master    
git_repo_checkout_branch "../libs/coroutine" 1e1347c0b1910b9310ec1719edad8b0bf2fd03c8 master    
git_repo_checkout_branch "../libs/coroutine2" d7e1c1c4abcf8c1e90097279e485edea0b253a80 master    
git_repo_checkout_branch "../libs/crc" 13f9200ecacb011ba52bc3b0bea7955634de1499 master    
git_repo_checkout_branch "../libs/date_time" 75be56b4c85d8e2dcbc22a1eb251d18cc942fceb master    
git_repo_checkout_branch "../libs/describe" 50719b212349f3d1268285c586331584d3dbfeb5 master    
git_repo_checkout_branch "../libs/detail" 080df0554b968a269e335b0c83942c44c92c0993 master    
git_repo_checkout_branch "../libs/dll" 6c60dde50bf67138c90cc84938111866813feaff master    
git_repo_checkout_branch "../libs/dynamic_bitset" 8e20aa1462bf6dcadc338835df529a6d568431b1 master    
git_repo_checkout_branch "../libs/endian" 900fe18a117daa9ce023529b006f122ad4116749 master    
git_repo_checkout_branch "../libs/exception" b9170a02f102250b308c9f94ed6593c5f30eab39 master    
git_repo_checkout_branch "../libs/fiber" 88b8304e78dfab4baee5d6beca09938d2826061a master    
git_repo_checkout_branch "../libs/filesystem" 9235003371114c86836ca84a1be0888e108d8d3b master    
git_repo_checkout_branch "../libs/flyweight" e9f3a0a005eca8baa377f13423107b35985d9119 master    
git_repo_checkout_branch "../libs/foreach" cc2f75ae30492b9de69b3b692f5c59afcb7dea5e master    
git_repo_checkout_branch "../libs/format" 78ef371d2d90462671b90c3af407fae07820b193 master    
git_repo_checkout_branch "../libs/function" bd181fdf898ccf405a69be6fff3e0e4c02240432 master    
git_repo_checkout_branch "../libs/function_types" 895335874d67987ada0d8bf6ca1725e70642ed49 master    
git_repo_checkout_branch "../libs/functional" 6a573e4b8333ee63ee62ce95558c3667348db233 master    
git_repo_checkout_branch "../libs/fusion" 53da4e0b2c8cd4969b09fa646d314ac0c414c1ff master    
git_repo_checkout_branch "../libs/geometry" f82eb32da79641697583a43be9988d7517d8553c master    
git_repo_checkout_branch "../libs/gil" e2714cc5821c5cf8e759c1ff1c1b611b6464d222 master    
git_repo_checkout_branch "../libs/graph" 198616d896e0db612d507baed7f8e01c38809066 master    
git_repo_checkout_branch "../libs/graph_parallel" 5520a5617d2763c48a06a4ff277ad76e665c7cf3 master    
git_repo_checkout_branch "../libs/hana" e66cd6bc3fdba37b31440e013d026a10e26ca486 master    
git_repo_checkout_branch "../libs/headers" 0456900fadde4b07c84760eadea4ccc9f948fe28 master    
git_repo_checkout_branch "../libs/heap" dc2f19f8815cbe0654df61bfc5f31ad8b06fc883 master    
git_repo_checkout_branch "../libs/histogram" a29729e6682652800b06dc8aded29bbeb4acea61 master    
git_repo_checkout_branch "../libs/hof" 63ac019fca325038bfb4f56db17fbb281d2b5f49 master    
git_repo_checkout_branch "../libs/icl" 2741c3a1b7b79f7326360c26c3e1588b385c9e53 master    
git_repo_checkout_branch "../libs/integer" dea8e3445dc3ca29201498260307138b9460a70c master    
git_repo_checkout_branch "../libs/interprocess" 8e4caa9fca8ff92b739b570f399f4407da0ecc2f master    
git_repo_checkout_branch "../libs/intrusive" 07ba0e376177409c396c109807c13b7181a98ebe master    
git_repo_checkout_branch "../libs/io" 342e4c6d10d586058818daa84201a2d301357a53 master    
git_repo_checkout_branch "../libs/iostreams" 8f571c1297c4d8929a9bf99e6739b310ef67c4a6 master    
git_repo_checkout_branch "../libs/iterator" 4f7219965a399051bb0d8088ea4ab3929b1ac3f2 master    
git_repo_checkout_branch "../libs/json" 9f85ed6d62ff91c6dc4fc30e3a20e9049ec67585 master    
git_repo_checkout_branch "../libs/lambda" af16036c576b14896e8c62cf0bd0a1f8235ce07b master    
git_repo_checkout_branch "../libs/lambda2" 4118a318ca1a517f17d1980fab2a11ae13c4f2a5 master    
git_repo_checkout_branch "../libs/leaf" ed8f9cd32f4fde695d497502f696f6f861b68559 master    
git_repo_checkout_branch "../libs/lexical_cast" 7861401ac434a4b5fb00d784fd35c812767d9111 master    
git_repo_checkout_branch "../libs/local_function" 258aeaa6c1a9618c02ca4e4af2890e70833035f0 master    
git_repo_checkout_branch "../libs/locale" 5edb7eb4f4848546d3d285598374b5d37daae387 master    
git_repo_checkout_branch "../libs/lockfree" fdd4d0632dd0904f6e9c656c45397fe8ef985bc9 master    
git_repo_checkout_branch "../libs/log" 38bf38e835d968ac306800b6f46f4d63a04346bb master    
git_repo_checkout_branch "../libs/logic" 145778490c2d332c1411df6a5274a4b53ec3e091 master    
git_repo_checkout_branch "../libs/math" 434a017db4c7abc115d8a8ae08a446b70feb34f2 master    
git_repo_checkout_branch "../libs/metaparse" 0ef448c1a7ce22b5de514f9cd504c323c28f4379 master    
git_repo_checkout_branch "../libs/move" 7c01072629d83a7b54c99de70ef535d699ebd200 master    
git_repo_checkout_branch "../libs/mp11" d0f3481b210a3baf49ce16d7b595ba5f4bee8ce6 master    
git_repo_checkout_branch "../libs/mpi" 273afde6ac85ab8df4837e9a9a70316d47c8ee4e master    
git_repo_checkout_branch "../libs/mpl" d102922c6acfd0606649a282a18e0775de94ce53 master    
git_repo_checkout_branch "../libs/msm" f607d5154df4a5cc7f5ae014f0796f0b21b8bfc4 master    
git_repo_checkout_branch "../libs/multi_array" 0c5348bef71b890c4bd06eff1ee5ebda69e7b27a master    
git_repo_checkout_branch "../libs/multi_index" d702a48363997f65fb717346f6694e0703902f8a master    
git_repo_checkout_branch "../libs/multiprecision" 51e01210078bae160ebc9fc4ede9281928d5b3c1 master    
git_repo_checkout_branch "../libs/mysql" 343006142ba49eb034fef1e75922757f8ba65f24           
git_repo_checkout_branch "../libs/nowide" 7ea5d333cce9f07d09dc59272771b610c6b33126 master    
git_repo_checkout_branch "../libs/numeric/conversion" 50a1eae942effb0a9b90724323ef8f2a67e7984a master    
git_repo_checkout_branch "../libs/numeric/interval" 2eda7413ac16dd4158005446438daf8a7e435dd9 master    
git_repo_checkout_branch "../libs/numeric/odeint" 1f4e47dfb395461a5c00d23b3728062f8290dfe6 master    
git_repo_checkout_branch "../libs/numeric/ublas" 15d871b410ff92592c6f3e0a53550035e7817046 master    
git_repo_checkout_branch "../libs/optional" c60db27762ff9cc16529e069c3c15f2fa898f994 master    
git_repo_checkout_branch "../libs/outcome" 1e3270d8106a59ac0b9c6e317fbfc836d2c66427 master    
git_repo_checkout_branch "../libs/parameter" c07f2b8d37ded87f6f9d5bac867550f6e61282c1 master    
git_repo_checkout_branch "../libs/parameter_python" 1f7f9ce9930119f0dda7dcd5e1ec3b5ed7c6b091 master    
git_repo_checkout_branch "../libs/pfr" 449bf360f7d7a945639710b0fbb670ffde70e772 master    
git_repo_checkout_branch "../libs/phoenix" 8913607a3788cb82d48ed461ea59c919b7bad3df master    
git_repo_checkout_branch "../libs/poly_collection" 0b8bfc4cff012d0f23049fc5a0009ac4abadceb4 master    
git_repo_checkout_branch "../libs/polygon" 8ba35b57c1436c4b36f7544aadd78c2b24acc7db master    
git_repo_checkout_branch "../libs/pool" ec7da07ed13e0c61e50d945b574a12ae7ec83cf4 master    
git_repo_checkout_branch "../libs/predef" 9aca7f5b609a731106a6d70e8dca9a4196dca968 master    
git_repo_checkout_branch "../libs/preprocessor" c4ea7e40d365ba28faecef8917d5c3f1e0121bf9 master    
git_repo_checkout_branch "../libs/process" 406cd3ecf36c19b94b4376241a4b3b43d1eae308 master    
git_repo_checkout_branch "../libs/program_options" 06e103d363b1380ed6c95e9cb25ab4f0ac8120bc master    
git_repo_checkout_branch "../libs/property_map" e3a3c3655f4118fd15a02d8315f86a48db7390fd master    
git_repo_checkout_branch "../libs/property_map_parallel" a2f90e9660e4e7e012c0b54a1338d8e69fb71906 master    
git_repo_checkout_branch "../libs/property_tree" 8080ecd14f2d952a4bb7ae869fc0f54f54f5a31f master    
git_repo_checkout_branch "../libs/proto" 7f924934689b940f3a72212ab0f714ec6fd6e34b master    
git_repo_checkout_branch "../libs/ptr_container" cf94735c87e073b33e54887a3d5e33598177ee1a master    
git_repo_checkout_branch "../libs/python" 47d5bc76f69e20625214381c930a2fad5765e2b3 master    
git_repo_checkout_branch "../libs/qvm" 68f960dc43b52c0cce7b2e2c5f3d8c53ed3f454d master    
git_repo_checkout_branch "../libs/random" 09594050246adcf944be2b2c8dd2b9901083de79 master    
git_repo_checkout_branch "../libs/range" 2bb6b636796f7b008196888613f51f5bb347c77d master    
git_repo_checkout_branch "../libs/ratio" d5b33caa7d564be9be6d962b18659b7741d764ac master    
git_repo_checkout_branch "../libs/rational" 564623136417068916495e2b24737054d607347c master    
git_repo_checkout_branch "../libs/redis" a4d2bb983dba0aac546a41d04f6af94568e817fc           
git_repo_checkout_branch "../libs/regex" 4cbcd3078e6ae10d05124379623a1bf03fcb9350 master    
git_repo_checkout_branch "../libs/safe_numerics" 777e0be5ec763d0333a717c5e421a4f7c5e5bdc9 master    
git_repo_checkout_branch "../libs/scope" 7f730d399777b3cdfaf55e80433d06273ddceffe           
git_repo_checkout_branch "../libs/scope_exit" 60baaae454b2da887a31cf939e22015b6263c9e4 master    
git_repo_checkout_branch "../libs/serialization" a20c4d97c37e5f437c8ba78f296830edb79cff9e master    
git_repo_checkout_branch "../libs/signals2" 50c5b537edda006042c8c9572ed062d5fd083cf6 master    
git_repo_checkout_branch "../libs/smart_ptr" c4ae5e0c429f2792b45e51a19c2153bf975b38ae master    
git_repo_checkout_branch "../libs/sort" d12ad000fc63d9c21e299c9ef420ccf85cba8548 master    
git_repo_checkout_branch "../libs/spirit" 43112c3f055fa109f20b8e8e6e50d0a016da742a master    
git_repo_checkout_branch "../libs/stacktrace" 39afcefb6413b773b9f464689e994698a7a2ddc8 master    
git_repo_checkout_branch "../libs/statechart" 586445b824c5cf0e7e6ce4ff2df620fda5d0f0d7 master    
git_repo_checkout_branch "../libs/static_assert" ba72d3340f3dc6e773868107f35902292f84b07e master    
git_repo_checkout_branch "../libs/static_string" ac84c4f40ec38f7a7237255738e3e5259aa4a1a8 master    
git_repo_checkout_branch "../libs/stl_interfaces" 0f422d58cb392674bace893d237a6ddd121d8c31 master    
git_repo_checkout_branch "../libs/system" ef012fad525f04c3fe08b274e31899205e139c62 master    
git_repo_checkout_branch "../libs/test" 822dc24718a33316bcef78b08f6bf57ae20d9335 master    
git_repo_checkout_branch "../libs/thread" aec18d337f41d8e3081ee65f5cf3b5090179ab0e master    
git_repo_checkout_branch "../libs/throw_exception" 7c8ec2114bc1f9ab2a8afbd629b96fbdd5901294 master    
git_repo_checkout_branch "../libs/timer" a701cafb6be0021cf8e154cab5fc5d680c863f06 master    
git_repo_checkout_branch "../libs/tokenizer" 90106f155bd72b62aaca0d9ad826f4132030dba0 master    
git_repo_checkout_branch "../libs/tti" a09ad0a24c982096c102847411c37045865a8098 master    
git_repo_checkout_branch "../libs/tuple" b67941dd7d03536a854b96f001954792311ab515 master    
git_repo_checkout_branch "../libs/type_erasure" 729f3e739abc65d36d46df470c5bab735599d042 master    
git_repo_checkout_branch "../libs/type_index" e37bc99e85e85bcac420ac1d4c1a8a5bca280d47 master    
git_repo_checkout_branch "../libs/type_traits" cc6fc3daa8e20c4a70b563d67ceb4c34d8c1c4d7 master    
git_repo_checkout_branch "../libs/typeof" 4bc9de322cd44373435540d4e6c8f207892fc9a0 master    
git_repo_checkout_branch "../libs/units" 45787015dd8c11653eb988260acf05c4af9d42e5 master    
git_repo_checkout_branch "../libs/unordered" 5e6b9291deb55567d41416af1e77c2516dc1250f master    
git_repo_checkout_branch "../libs/url" c9a39b93eb05f1fed47361cff1572b4bea4b1f82 master    
git_repo_checkout_branch "../libs/utility" e0ecf927643b13c63dfd9a38741315ea8b845135 master    
git_repo_checkout_branch "../libs/uuid" f3100d7d808eed731e99509ee042791690128182 master    
git_repo_checkout_branch "../libs/variant" b33ff4f811a27d4dc4a4c8a840310523de4df4f8 master    
git_repo_checkout_branch "../libs/variant2" f9bdafd3ca0f5025012f60a405b559888513a9be master    
git_repo_checkout_branch "../libs/vmd" 34cad2c1a574d445812c7c2432d3a5a5c843b412 master    
git_repo_checkout_branch "../libs/wave" c11757decf393f6f1cf46f3f70b0bf892cdda5ee master    
git_repo_checkout_branch "../libs/winapi" 39396bd78254053f3137510478e8f956bd2b83d4 master    
git_repo_checkout_branch "../libs/xpressive" 4679fbd23f962bfa78d44acf5fa48f6f790642c0 master    
git_repo_checkout_branch "../libs/yap" ae49bf2744586e6bd6c0cedff4500a58a4386860 master    
git_repo_checkout_branch "../more" f6b199edde111a4b958dacfc2c8a3970b9753ea3 master    
git_repo_checkout_branch "../tools/auto_index" d8be00789cbe3aae8f247bcedbfa01f39c1a4343 master    
git_repo_checkout_branch "../tools/bcp" e0b9262f6ff4778973a29b601183f3f9367e69d2 master    
git_repo_checkout_branch "../tools/boost_install" 7fae88e841e94830e1b8da67e425ae1cddb35d84 master    
git_repo_checkout_branch "../tools/boostbook" faacd1f26a714a5e2ec7d5c67ef81da371a1de50 master    
git_repo_checkout_branch "../tools/boostdep" 8f9cb2ef559fbe760f6522ddb8f693c02b83c032 master    
git_repo_checkout_branch "../tools/build" efbf6ce59b4023f7adc9be2fc3875d371c7f52c6 master    
git_repo_checkout_branch "../tools/check_build" 32ca50c8ccd35e0ff62301b53fddcc8945728c4a master    
git_repo_checkout_branch "../tools/cmake" 59bdd93ebb82d725c677f5a5a47143569c414294 master    
git_repo_checkout_branch "../tools/docca" 0ce4e198398dbb52f1de0029f4ed9b7d2bded273 master    
git_repo_checkout_branch "../tools/inspect" d18744cddbd4304f7b939131004571dbb301fa4f master    
git_repo_checkout_branch "../tools/litre" 564d4d8d30b7e03ac5e25d78e14d2c19fa321c83 master    
git_repo_checkout_branch "../tools/quickbook" 12a390e624f26e2e3f615b10c9681ce5390b02b2 master    

# --- all done ---

popd                                                                           2> /dev/null  > /dev/null

