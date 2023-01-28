#!/bin/bash

echo "Cleanup"
rm -rf user.csv

echo "Get last user database"
curl -o user.csv https://radioid.net/static/user.csv

echo "Replacing of diacritics"
from="ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮÌǏИԻЙՋΚЌКĶԿՔΛŁЛĻԼΜМՄÑΝНŅŇՆÖÔΟΩÓÒØŌǑÕОՈՕΠПՊՓΡРŘՌՐΣСŠՍΤТŤԹՏÜÙÛÚǓǕǗǙǛŪУŲŮΒВՎЎՒΞԽŸÝЫՅΖŽŹŻЗԶԺäàâαáåąăãāǎաбբçćčћцծչցδđðђдďդéèêëεηęēėěеёэեէըѓфֆγгģգղհιíîïīįìǐиıիйջκќкķկքλłлļĺľլμмմñνńнņňնöôοωóòøōǒõоոօπпպփρрŕřռրσšśсսτтťթտüùûúǔǖǘǚǜūуųůβвվўւξխÿýыüյζžźżзզժ"
to="AAAAAAAAAAAABBCCCCCCCDDDDDEEEEEEEEEEEEEEEEFFFGGGGGHIIIIIIIIIIJJKKKKKKLLLLLMMMNNNNNNOOOOOOOOOOOOOPPPPRRRRRSSSSTTTTTUUUUUUUUUUUUUVVVWWXXYYYYZZZZZZZaaaaaaaaaaaabbccccccccdddddddeeeeeeeeeeeeeeeefffggggghiiiiiiiiiiijjkkkkkklllllllmmmnnnnnnnooooooooooooopppprrrrrrssssstttttuuuuuuuuuuuuuvvvwwxxyyyyyzzzzzzz"
sed -i "y/$from/$to/" user.csv