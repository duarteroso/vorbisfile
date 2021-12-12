#include <vorbis/codec.h>


int get_vorbis_info_channels(vorbis_info *vi)
{
    return vi->channels;
}

long get_vorbis_info_rate(vorbis_info *vi) 
{
    return vi->rate;
}
