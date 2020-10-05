#ifndef __SAMKUKJI_H__
#define __SAMKUKJI_H__
#include <stdio.h>
#include <HIL_defs.h>
#include <HIL_mems.h>
#include <HIL_types.h>

typedef struct Letter {
    u8 character[2];
} Letter;

typedef struct Letter_Information {
    u32 total_cnt;
    u32 MFU_cnt;
    u32 letter_cnt[11172];
    Letter MFU_letter[1000];
} Letter_Information;

typedef struct Word_Information {
    u32 total_cnt;
    u8 filename[50];
} Word_Information;

typedef struct Sentence_Information {
    u32 total_cnt;
    u32 letter_avg;
    u32 word_avg;
} Sentence_Information;

/* Initializers */
HIL_RESULT init_letter_info(Letter_Information **letter_info);
HIL_RESULT init_word_info(Word_Information **word_info);
HIL_RESULT init_sentence_info(Sentence_Information **sentence_info);

/* General Procedure */
HIL_RESULT letter_process(Letter_Information **letter_info);
HIL_RESULT letter_print_result(Letter_Information *letter_info, ps8 filename);
HIL_RESULT MFU_letter_process(Letter_Information **letter_info);
HIL_RESULT MFU_letter_print_result(Letter_Information *letter_info);
HIL_RESULT word_process(Word_Information **word_info);
HIL_RESULT word_print_result(Word_Information *word_info, ps8 filename);
HIL_RESULT sentence_process(Sentence_Information **sentence_info);
HIL_RESULT sentence_print_result(Sentence_Information *sentence_info, ps8 filename);

/* Parsing Function */
HIL_RESULT parse_word(pu8 c_pos, pu8 buf);
HIL_RESULT parse_sentence(pu8 c_pos, pu8 buf);
HIL_RESULT analyze_word(Word_Information **word_info, pu8 buf);
HIL_RESULT analyze_sentence(Sentence_Information **sentence_info, pu8 buf);

#endif
