tw_dataset=Twitter
wb_dataset=Weibo
data_prefix=/data2/xiuwen/twitter

if [[ $1 =~ 'Twitter' ]]
then
    dataset=${tw_dataset}
    cmd='-filter_chinese 0'
elif [[ $1 =~ 'Weibo' ]]
then
    dataset=${wb_dataset}
    cmd=''
else
    echo 'the model name should contain dataset name'
fi

python3.6 -u ../evaluate.py \
    -tgt ${data_prefix}/${dataset}/test_tag.txt \
    -pred $1 \
    ${cmd}