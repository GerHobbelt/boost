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

git_repo_checkout_branch "../libs/accumulators"                   9d9e5dae2202660f57e2dc91efb620aa001525b3 master    
git_repo_checkout_branch "../libs/algorithm"                      32c5a6327cfdca5d41ce0f1d8849b811886daa2f master    
git_repo_checkout_branch "../libs/align"                          5ad7df63cd792fbdb801d600b93cad1a432f0151 master    
git_repo_checkout_branch "../libs/any"                            436e2991f9ad4bb9bbb70b01c688539382197c47 master    
git_repo_checkout_branch "../libs/array"                          fed8935fdf8e4fe86800fe63426179a4a2fa226b master    
git_repo_checkout_branch "../libs/asio"                           5d4bd8a1625745f22955697a29cdeef65f302bce master    
git_repo_checkout_branch "../libs/assert"                         2242cfb58269c03328957860006076386e7fa356 master    
git_repo_checkout_branch "../libs/assign"                         ababd47970e8a5fa1bebc8ccad526c4f25bd867a master    
git_repo_checkout_branch "../libs/atomic"                         b202228311eb4f5a9568d40b9314dfbb4ef20607 master    
git_repo_checkout_branch "../libs/beast"                          a21250d12d0eb2cff9d2e4ec87bf869938dea64c master    
git_repo_checkout_branch "../libs/bimap"                          c81ecb5b9e01c0e8bf4b4d4f83888f09e79fe75d master    
git_repo_checkout_branch "../libs/bind"                           68a9e0db858527834f6a791930bcd9a41e09ac9c master    
git_repo_checkout_branch "../libs/callable_traits"                2a56a3a2496cdb66496f844db55085dd992d5e49 master    
git_repo_checkout_branch "../libs/charconv"                       a3767c440cace86a0529c7b3888d4a3eae438231 master    
git_repo_checkout_branch "../libs/chrono"                         b4f92d91f81ed4956586d67c288f1a5ddcf34601 master    
git_repo_checkout_branch "../libs/circular_buffer"                a08a5b55ee82e0c2487523471379ac53a23935dc master    
git_repo_checkout_branch "../libs/cobalt"                         c56bad9b0833773884b07ed9de7c13051d98d1f4 master    
git_repo_checkout_branch "../libs/compat"                         1a8bb0b574205a56a3fe5c00231fb64a682a6e36 master    
git_repo_checkout_branch "../libs/compatibility"                  7be386ad98083806f805c6d1e2450e09ae10250f master    
git_repo_checkout_branch "../libs/compute"                        36350b7de849300bd3d72a05d8bf890ca405a014 master    
git_repo_checkout_branch "../libs/concept_check"                  37c9bddf0bdefaaae0ca5852c1a153d9fc43f278 master    
git_repo_checkout_branch "../libs/config"                         4cea857b4a72a16b2943a060d8fdbc5980b11e12 master    
git_repo_checkout_branch "../libs/container"                      608bcb45a939c6d5d5ca2b598609d1336e0dfa83 master    
git_repo_checkout_branch "../libs/container_hash"                 89e5b98f6bc05841a21069d76cc5adcbee62b9cc master    
git_repo_checkout_branch "../libs/context"                        46effe4588a6edd64d49a853454b5f67f7196e57 master    
git_repo_checkout_branch "../libs/contract"                       eca93d24b5d3bb909ed64c12b5feb5296c5cc070 master    
git_repo_checkout_branch "../libs/conversion"                     8a860e05d0f90d539e3e8710f6924668f1292a76 master    
git_repo_checkout_branch "../libs/convert"                        0dd7a76b1c051c048b4991b7aa9c8b5aeb5776ee master    
git_repo_checkout_branch "../libs/core"                           e3a2e88e4cc9ec39f4c67aef2a20e1b246c2a3b1 master    
git_repo_checkout_branch "../libs/coroutine"                      8b09bf7d0e8a13d1ef59aaff02a84d42acb034f3 master    
git_repo_checkout_branch "../libs/coroutine2"                     dbbf042e0a9081b4119d491b788ae0fe7c03192a master    
git_repo_checkout_branch "../libs/crc"                            bd22b63fd2593d615cd8f962950a3f51282761f6 master    
git_repo_checkout_branch "../libs/date_time"                      75be56b4c85d8e2dcbc22a1eb251d18cc942fceb master    
git_repo_checkout_branch "../libs/describe"                       3da6a1e295689612a5ba53e906ad036f84729ede master    
git_repo_checkout_branch "../libs/detail"                         a54b2619f8f75861836114d02a3fc70c7c9b3474 master    
git_repo_checkout_branch "../libs/dll"                            477583869ec304899170728e32ce9f0c5c597af2 master    
git_repo_checkout_branch "../libs/dynamic_bitset"                 8e20aa1462bf6dcadc338835df529a6d568431b1 master    
git_repo_checkout_branch "../libs/endian"                         be212912d7a080e084874882bff375cdd7416d0d master    
git_repo_checkout_branch "../libs/exception"                      ece51fe0f7b8273ffc3fa626c3d1442f7af24ef9 master    
git_repo_checkout_branch "../libs/fiber"                          7838ab09d700214e3d7dd7104fce241ca7552336 master    
git_repo_checkout_branch "../libs/filesystem"                     203b25de50014fc07dec0ab51f4492640dceba1e master    
git_repo_checkout_branch "../libs/flyweight"                      3c97c02777fe430182ef7d269b1f7b863cb80025 master    
git_repo_checkout_branch "../libs/foreach"                        cc2f75ae30492b9de69b3b692f5c59afcb7dea5e master    
git_repo_checkout_branch "../libs/format"                         9c6964ae01169974da56ba0d3f32ff2627604776 master    
git_repo_checkout_branch "../libs/function"                       89dfb032f29931358d57819edca15a7f02f10bb6 master    
git_repo_checkout_branch "../libs/function_types"                 6fba35ace59e9e7b1c3007ca6246a42ed6ead145 master    
git_repo_checkout_branch "../libs/functional"                     6a573e4b8333ee63ee62ce95558c3667348db233 master    
git_repo_checkout_branch "../libs/fusion"                         94cab8e4bbc8065d18481b96c0a8feea0491cf6e master    
git_repo_checkout_branch "../libs/geometry"                       2221c7bdc1dcc143b2a1869af98819822dce0904 master    
git_repo_checkout_branch "../libs/gil"                            36c715a8dc8a22ad21b7018cebacf5e73186efdd master    
git_repo_checkout_branch "../libs/graph"                          198616d896e0db612d507baed7f8e01c38809066 master    
git_repo_checkout_branch "../libs/graph_parallel"                 5520a5617d2763c48a06a4ff277ad76e665c7cf3 master    
git_repo_checkout_branch "../libs/hana"                           275ee334d4c406643e9f560c40f9b73638cd9c7e master    
git_repo_checkout_branch "../libs/headers"                        5c0228ed90ff32a54ba0b015ddae2b170062dcb1 master    
git_repo_checkout_branch "../libs/heap"                           450cc153aa2e84070fe19ee34c09cece62be95e0 master    
git_repo_checkout_branch "../libs/histogram"                      824719d91579fca4ddb93b01e5c1d26e592c68b5 master    
git_repo_checkout_branch "../libs/hof"                            63ac019fca325038bfb4f56db17fbb281d2b5f49 master    
git_repo_checkout_branch "../libs/icl"                            2741c3a1b7b79f7326360c26c3e1588b385c9e53 master    
git_repo_checkout_branch "../libs/integer"                        fbaf2dee580e378bc217a9efc86b6b9c25e3e560 master    
git_repo_checkout_branch "../libs/interprocess"                   1739eeb8871487074e1843d88e43dd2ae5f0786b master    
git_repo_checkout_branch "../libs/intrusive"                      ec5e251f547aa850e0e41a9ed204a08581931a6b master    
git_repo_checkout_branch "../libs/io"                             342e4c6d10d586058818daa84201a2d301357a53 master    
git_repo_checkout_branch "../libs/iostreams"                      65a3c039885560380964ff0c2c825c3ca4dc7870 master    
git_repo_checkout_branch "../libs/iterator"                       4b40364d6d110b130207bc498791e00050f94d6b master    
git_repo_checkout_branch "../libs/json"                           9b654f7b1a96aecf74729e41334752f9143d39cf master    
git_repo_checkout_branch "../libs/lambda"                         af16036c576b14896e8c62cf0bd0a1f8235ce07b master    
git_repo_checkout_branch "../libs/lambda2"                        f1d863c6b2fe11a39c400a3d733cfd9a80654370 master    
git_repo_checkout_branch "../libs/leaf"                           6633c368f1ee2d9c26fdd86e3ed11517c22f4e4c master    
git_repo_checkout_branch "../libs/lexical_cast"                   71a184d20fab0577b8bca7b9e9ffd6830cb56018 master    
git_repo_checkout_branch "../libs/local_function"                 258aeaa6c1a9618c02ca4e4af2890e70833035f0 master    
git_repo_checkout_branch "../libs/locale"                         52cf8f8a5e23fc6ab5e3d5c8c5657f178ec35e90 master    
git_repo_checkout_branch "../libs/lockfree"                       26a0337fdd9d8541e0ea84e2a07563e383844391 master    
git_repo_checkout_branch "../libs/log"                            1be88666c525a6ad8efa865c2d56818b9fc5c9ee master    
git_repo_checkout_branch "../libs/logic"                          145778490c2d332c1411df6a5274a4b53ec3e091 master    
git_repo_checkout_branch "../libs/math"                           f1b0b95a04f56717b3454cb599e0647770c5852e master    
git_repo_checkout_branch "../libs/metaparse"                      0ef448c1a7ce22b5de514f9cd504c323c28f4379 master    
git_repo_checkout_branch "../libs/move"                           974dc35b6828813d28bd86be5ca56704494e093f master    
git_repo_checkout_branch "../libs/mp11"                           1caff7ffa929662f57fac1dbea24c3d2d95205f6 master    
git_repo_checkout_branch "../libs/mpi"                            a6c2dd23d15e6f88f346abb77d96989f12f3be1b master    
git_repo_checkout_branch "../libs/mpl"                            e9cbd523165856e6875122e91a761f1c5be25907 master    
git_repo_checkout_branch "../libs/msm"                            33e77cbfc70956d4b99f3dfc9c1e83848fe2550b master    
git_repo_checkout_branch "../libs/multi_array"                    0c5348bef71b890c4bd06eff1ee5ebda69e7b27a master    
git_repo_checkout_branch "../libs/multi_index"                    216219998e3adbc82e32399e16cb099475bb8d8f master    
git_repo_checkout_branch "../libs/multiprecision"                 90149ad39ee4797081c18e3668f8cd67db219cc4 master    
git_repo_checkout_branch "../libs/mysql"                          f6c119210db1c7e92566fa9d16591840ace0b186 master    
git_repo_checkout_branch "../libs/nowide"                         7ea5d333cce9f07d09dc59272771b610c6b33126 master    
git_repo_checkout_branch "../libs/numeric/conversion"             50a1eae942effb0a9b90724323ef8f2a67e7984a master    
git_repo_checkout_branch "../libs/numeric/interval"               2eda7413ac16dd4158005446438daf8a7e435dd9 master    
git_repo_checkout_branch "../libs/numeric/odeint"                 9e75be5d9e435739b086aee928736fc241e77a4a master    
git_repo_checkout_branch "../libs/numeric/ublas"                  15d871b410ff92592c6f3e0a53550035e7817046 master    
git_repo_checkout_branch "../libs/optional"                       e21074030123956f4b0ac28fd591f5b253f18af6 master    
git_repo_checkout_branch "../libs/outcome"                        4e0def667c29ab5d9b9a6897cd509704d9ef58c8 master    
git_repo_checkout_branch "../libs/parameter"                      c142f7bdc27ed5abf945370c3bd82750fc0bdef1 master    
git_repo_checkout_branch "../libs/parameter_python"               1f7f9ce9930119f0dda7dcd5e1ec3b5ed7c6b091 master    
git_repo_checkout_branch "../libs/pfr"                            f09e6aeae9d050897fff72b93d5f5e866cc5e11a master    
git_repo_checkout_branch "../libs/phoenix"                        8913607a3788cb82d48ed461ea59c919b7bad3df master    
git_repo_checkout_branch "../libs/poly_collection"                49b4651b29664aa62c23ccd5aed89df5fe9c29aa master    
git_repo_checkout_branch "../libs/polygon"                        8ba35b57c1436c4b36f7544aadd78c2b24acc7db master    
git_repo_checkout_branch "../libs/pool"                           ec7da07ed13e0c61e50d945b574a12ae7ec83cf4 master    
git_repo_checkout_branch "../libs/predef"                         6364545bbabbab37ca7f6c9cedbe8a6145737feb master    
git_repo_checkout_branch "../libs/preprocessor"                   c4ea7e40d365ba28faecef8917d5c3f1e0121bf9 master    
git_repo_checkout_branch "../libs/process"                        64c4cdac83bd162be484fd0dabaa5fc339034d20 master    
git_repo_checkout_branch "../libs/program_options"                06e103d363b1380ed6c95e9cb25ab4f0ac8120bc master    
git_repo_checkout_branch "../libs/property_map"                   e3a3c3655f4118fd15a02d8315f86a48db7390fd master    
git_repo_checkout_branch "../libs/property_map_parallel"          a2f90e9660e4e7e012c0b54a1338d8e69fb71906 master    
git_repo_checkout_branch "../libs/property_tree"                  8080ecd14f2d952a4bb7ae869fc0f54f54f5a31f master    
git_repo_checkout_branch "../libs/proto"                          6392660ed6100285091143c95e95d2f0c532d292 master    
git_repo_checkout_branch "../libs/ptr_container"                  cf94735c87e073b33e54887a3d5e33598177ee1a master    
git_repo_checkout_branch "../libs/python"                         ff0ae9b29d7707d63d6f0ad4a64b578021783693 master    
git_repo_checkout_branch "../libs/qvm"                            c26cbf5c0d7723dbf2e1712259c5616d15f56ffa master    
git_repo_checkout_branch "../libs/random"                         56a476afdc77327a77ecb916872788038f8cfd3b master    
git_repo_checkout_branch "../libs/range"                          2bb6b636796f7b008196888613f51f5bb347c77d master    
git_repo_checkout_branch "../libs/ratio"                          e28181484dd2e2e8907b8abd859cd9afc9e5e4d3 master    
git_repo_checkout_branch "../libs/rational"                       564623136417068916495e2b24737054d607347c master    
git_repo_checkout_branch "../libs/redis"                          8df535f50ef9beaffe6721d1b78df6c9d87f502b master    
git_repo_checkout_branch "../libs/regex"                          45d6bd24cd6c50fe95ccca7ab3a9fb384beb7d10 master    
git_repo_checkout_branch "../libs/safe_numerics"                  777e0be5ec763d0333a717c5e421a4f7c5e5bdc9 master    
git_repo_checkout_branch "../libs/scope"                          03f3395fb0493f95b94faab9e234efc719986bf0 master    
git_repo_checkout_branch "../libs/scope_exit"                     60baaae454b2da887a31cf939e22015b6263c9e4 master    
git_repo_checkout_branch "../libs/serialization"                  a20c4d97c37e5f437c8ba78f296830edb79cff9e master    
git_repo_checkout_branch "../libs/signals2"                       b5d021af0b5c6ee9aa93cc911f3f73d17187e834 master    
git_repo_checkout_branch "../libs/smart_ptr"                      316f4cef77164a37b6a1a8891aa173910d3c2b46 master    
git_repo_checkout_branch "../libs/sort"                           d12ad000fc63d9c21e299c9ef420ccf85cba8548 master    
git_repo_checkout_branch "../libs/spirit"                         43112c3f055fa109f20b8e8e6e50d0a016da742a master    
git_repo_checkout_branch "../libs/stacktrace"                     088bf8ed7f4a6ca59c96bdb54cf88f1a0dda2ebf master    
git_repo_checkout_branch "../libs/statechart"                     ae93e58e44f722626fe462a854b92d9b4f11449a master    
git_repo_checkout_branch "../libs/static_assert"                  ba72d3340f3dc6e773868107f35902292f84b07e master    
git_repo_checkout_branch "../libs/static_string"                  bff5cb65a5cb9151aacaf56abe80125e0128f43a master    
git_repo_checkout_branch "../libs/stl_interfaces"                 cefbd3014ab1b0c305c4e58f650757fa4fa81040 master    
git_repo_checkout_branch "../libs/sync"                           a75e8485cbf528253a9c9d8bee6a9fa09e337b63 master    
git_repo_checkout_branch "../libs/system"                         dd907b80b092fc12fbc61a4da288c9331492e6e3 master    
git_repo_checkout_branch "../libs/test"                           aebe90506f653fd1380d8000309b41557d2a9d29 master    
git_repo_checkout_branch "../libs/thread"                         a4ab9c90065107a1b05acc78a0f31380024a3248 master    
git_repo_checkout_branch "../libs/throw_exception"                ca85c198c81c1daeed31e6a5c920f499d360bade master    
git_repo_checkout_branch "../libs/timer"                          0715397dc09a393e0222a1a5d56cea58bc1e8fba master    
git_repo_checkout_branch "../libs/tokenizer"                      90106f155bd72b62aaca0d9ad826f4132030dba0 master    
git_repo_checkout_branch "../libs/tti"                            a09ad0a24c982096c102847411c37045865a8098 master    
git_repo_checkout_branch "../libs/tuple"                          fe90ca4023e66729e1118088f8b753024d2730fa master    
git_repo_checkout_branch "../libs/type_erasure"                   729f3e739abc65d36d46df470c5bab735599d042 master    
git_repo_checkout_branch "../libs/type_index"                     795773e0e0c5c16dfb9235c7374e4767c842de5d master    
git_repo_checkout_branch "../libs/type_traits"                    cc6fc3daa8e20c4a70b563d67ceb4c34d8c1c4d7 master    
git_repo_checkout_branch "../libs/typeof"                         4bc9de322cd44373435540d4e6c8f207892fc9a0 master    
git_repo_checkout_branch "../libs/units"                          45787015dd8c11653eb988260acf05c4af9d42e5 master    
git_repo_checkout_branch "../libs/unordered"                      b41c054c66e7c71d6c6105a1e9da096f6731434d master    
git_repo_checkout_branch "../libs/url"                            79840929736831a1c6dfaf569796785c4ca570f0 master    
git_repo_checkout_branch "../libs/utility"                        94644596c2fd429c997f5db284d669bc910b571e master    
git_repo_checkout_branch "../libs/uuid"                           f93d3371947e61cbcdf805875f89acd3a2414b93 master    
git_repo_checkout_branch "../libs/variant"                        0fd179fbd83bf600e84a2f8da422b84263cdc922 master    
git_repo_checkout_branch "../libs/variant2"                       a4b167b7238781d75df5d6684c9e9d40b26456dc master    
git_repo_checkout_branch "../libs/vmd"                            34cad2c1a574d445812c7c2432d3a5a5c843b412 master    
git_repo_checkout_branch "../libs/wave"                           021cee734806a4ee81f9f35d784f096f7832901c master    
git_repo_checkout_branch "../libs/winapi"                         ea553ab4d2e4cba1448d23a542993692c9d385f7 master    
git_repo_checkout_branch "../libs/xpressive"                      bd1db9341abd303dacc2979422d8809a9a1e0558 master    
git_repo_checkout_branch "../libs/yap"                            ae49bf2744586e6bd6c0cedff4500a58a4386860 master    
git_repo_checkout_branch "../more"                                2dd8700f471fae5321a9cd523a377a07bcb21a15 master    
git_repo_checkout_branch "../tools/auto_index"                    91e2f15b8b1e7d609b8398286833cb9847984ecc master    
git_repo_checkout_branch "../tools/bcp"                           2bb48d28b1fb96320f2d72a9299f1e5e4d41d31d master    
git_repo_checkout_branch "../tools/boost_install"                 d77d0e94ba3d78f2079313ecb6e4907a7e8618e9 master    
git_repo_checkout_branch "../tools/boost_unordered_benchmarks"    26fcdfff4cf250aa3ed8bdc82763d7458cc39858 main      
git_repo_checkout_branch "../tools/boostbook"                     50db69f7e518bdb3c84ba815802c8c684827a9c4 master    
git_repo_checkout_branch "../tools/boostdep"                      289f2a16286e62348676f2abb75c0bd9968f156b master    
git_repo_checkout_branch "../tools/boostlook"                     27ef69af74c28db8b4ffa3acde8badc483db0220 master    
git_repo_checkout_branch "../tools/build"                         4a52d8c06635435b64e31a56eaf7ca5dc912a71d master    
git_repo_checkout_branch "../tools/check_build"                   092f1f300410bee1495c0b8f27d61ac32bc16c42 master    
git_repo_checkout_branch "../tools/cmake"                         7f5336b3bf8067bb40da4e8b9940c133271e938a master    
git_repo_checkout_branch "../tools/docca"                         4510773965d15735af6331a4734387d7ec7d50cf master    
git_repo_checkout_branch "../tools/inspect"                       d18744cddbd4304f7b939131004571dbb301fa4f master    
git_repo_checkout_branch "../tools/litre"                         564d4d8d30b7e03ac5e25d78e14d2c19fa321c83 master    
git_repo_checkout_branch "../tools/quickbook"                     56e4aca294d94d5fbcc19d44ea3762b9ec5e5ac9 master    

# --- all done ---

popd                                                                           2> /dev/null  > /dev/null

