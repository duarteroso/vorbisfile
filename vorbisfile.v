module vorbisfile

#flag linux -lvorbisfile
#flag linux -I/usr/include/vorbis

#include "vorbisfile.h"

const (
	not_open   = 0
	part_open  = 1
	opened     = 2
	stream_set = 3
	init_set   = 4
)

[typedef]
struct C.OggVorbis_File {}

[typedef]
struct C.vorbis_comment {}

fn C.ov_clear(vf &C.OggVorbis_File) int
fn C.ov_fopen(path &char, vf &C.OggVorbis_File) int

fn C.ov_test_open(vf &C.OggVorbis_File) int

fn C.ov_bitrate(vf &C.OggVorbis_File, i int) i64
fn C.ov_bitrate_instant(vf &C.OggVorbis_File) i64
fn C.ov_streams(vf &C.OggVorbis_File) i64
fn C.ov_seekable(vf &C.OggVorbis_File) i64
fn C.ov_serialnumber(vf &C.OggVorbis_File, i int) i64

fn C.ov_raw_total(vf &C.OggVorbis_File, i int) i64
fn C.ov_pcm_total(vf &C.OggVorbis_File, i int) i64
fn C.ov_time_total(vf &C.OggVorbis_File, i int) f64

fn C.ov_raw_seek(vf &C.OggVorbis_File, pos i64) int
fn C.ov_pcm_seek(vf &C.OggVorbis_File, pos i64) int
fn C.ov_pcm_seek_page(vf &C.OggVorbis_File, pos i64) int
fn C.ov_time_seek(vf &C.OggVorbis_File, pos f64) int
fn C.ov_time_seek_page(vf &C.OggVorbis_File, pos f64) int

fn C.ov_raw_seek_lap(vf &C.OggVorbis_File, pos i64) int
fn C.ov_pcm_seek_lap(vf &C.OggVorbis_File, pos i64) int
fn C.ov_pcm_seek_page_lap(vf &C.OggVorbis_File, pos i64) int
fn C.ov_time_seek_lap(vf &C.OggVorbis_File, pos f64) int
fn C.ov_time_seek_page_lap(vf &C.OggVorbis_File, pos f64) int

fn C.ov_raw_tell(vf &C.OggVorbis_File) i64
fn C.ov_pcm_tell(vf &C.OggVorbis_File) i64
fn C.ov_time_tell(vf &C.OggVorbis_File) f64

fn C.ov_info(vf &C.OggVorbis_File, link int) &C.vorbis_info
fn C.ov_comment(vf &C.OggVorbis_File, link int) &C.vorbis_comment

fn C.ov_read_float(vf &C.OggVorbis_File, pcm_channels &&&f32, samples int, bitstream &int) i64
fn C.ov_read_filter(vf &C.OggVorbis_File, buffer &char, length int, bigendianp int, word int, sgned int, bitstream &int, func FilterFunc, filter_param voidptr) i64
fn C.ov_read(vf &C.OggVorbis_File, buffer &char, length int, bigendianp int, word int, sgned int, bitstream &int) i64
fn C.ov_crosslap(vf1 &C.OggVorbis_File, vf2 &C.OggVorbis_File) int

fn C.ov_halfrate(vf &C.OggVorbis_File, int flag) int
fn C.ov_halfrate_p(vf &C.OggVorbis_File) int

type FilterFunc = fn (&&f32, i64, i64, voidptr)
