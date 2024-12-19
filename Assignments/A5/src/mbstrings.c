#include "mbstrings.h"
#include <wchar.h>
#include <locale.h>
#include <string.h>

/* mbslen - multi-byte string length
 * - Description: returns the number of UTF-8 code points ("characters")
 * in a multibyte string. If the argument is NULL or an invalid UTF-8
 * string is passed, returns -1.
 *
 * - Arguments: A pointer to a character array (`bytes`), consisting of UTF-8
 * variable-length encoded multibyte code points.
 *
 * - Return: returns the actual number of UTF-8 code points in `src`. If an
 * invalid sequence of bytes is encountered, return -1.
 *
 * - Hints:
 * UTF-8 characters are encoded in 1 to 4 bytes. The number of leading 1s in the
 * highest order byte indicates the length (in bytes) of the character. For
 * example, a character with the encoding 1111.... is 4 bytes long, a character
 * with the encoding 1110.... is 3 bytes long, and a character with the encoding
 * 1100.... is 2 bytes long. Single-byte UTF-8 characters were designed to be
 * compatible with ASCII. As such, the first bit of a 1-byte UTF-8 character is
 * 0.......
 *
 * You will need bitwise operations for this part of the assignment!
 */
size_t mbslen(const char* bytes) {
    // Check if the input string is NULL (empty) and return -1 if so.
    if (bytes == NULL) {
        return -1;
    }
    size_t len = 0; // Length of the input string.
    mbstate_t state; // Conversion state of the input string.
    memset(&state, 0, sizeof(state)); // Clear the string to the initial state.
    const char *ptr = bytes; // Pointer to traverse the input string.
    wchar_t wc; // Variable to store the character post-conversion.
    while (*ptr) {
        // Convert a multibyte sequence to a wide character.
        size_t ret = mbrtowc(&wc, ptr, 4, &state);
        // Check for conversion errors, return -1 to indicate an error has occurred.
        if (ret == (size_t)-1 || ret == (size_t)-2) {
            return -1;
        }
        ptr += ret; // Move the pointer forward by the number of bytes processed.
        len++; // Increment the length counter to count the length of the input string.
    }
    return len; // Return the length of the string.
}
