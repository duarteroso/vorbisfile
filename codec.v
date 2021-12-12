module vvorbisfile

#flag linux -I@VROOT/include
#include "vorbis_info_helpers.h"

[typedef]
struct C.vorbis_info {}

pub const (
	ov_false      = -1
	ov_eof        = -2
	ov_hole       = -3
	ov_eread      = -128
	ov_efault     = -129
	ov_eimpl      = -130
	ov_einval     = -131
	ov_enotvorbis = -132
	ov_ebadheader = -133
	ov_eversion   = -134
	ov_enotaudio  = -135
	ov_ebadpacket = -136
	ov_ebadlink   = -137
	ov_enoseek    = -138
)

fn C.get_vorbis_info_channels(vi &C.vorbis_info) int
fn C.get_vorbis_info_rate(vi &C.vorbis_info) i64