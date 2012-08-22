#!/perl

use strict;
use warnings;
use Test::More 0.88 tests => 16;

use Business::CCCheck qw(CC_luhn_valid);

#
# first we check with valid test card numbers, which came from:
# http://www.paypalobjects.com/en_US/vhelp/paypalmanager_help/credit_card_numbers.htm
#

ok(CC_luhn_valid('378282246310005'), 'valid American Express test number');
ok(CC_luhn_valid('371449635398431'), 'valid American Express test number');
ok(CC_luhn_valid('30569309025904'), 'valid Diners Club test number');
ok(CC_luhn_valid('38520000023237'), 'valid Diners Club test number');
ok(CC_luhn_valid('5555555555554444'), 'valid MasterCard test number');
ok(CC_luhn_valid('5105105105105100'), 'valid MasterCard test number');
ok(CC_luhn_valid('4111111111111111'), 'valid VISA test number');
ok(CC_luhn_valid('4012888888881881'), 'valid VISA test number');

#
# Then test with invalid numbers. I basically just changed the check digit
# from the above tests :-)
#

ok(!CC_luhn_valid('378282246310004'), 'invalid American Express number');
ok(!CC_luhn_valid('371449635398432'), 'invalid American Express number');
ok(!CC_luhn_valid('30569309025905'), 'invalid Diners Club number');
ok(!CC_luhn_valid('38520000023238'), 'invalid Diners Club number');
ok(!CC_luhn_valid('5555555555554445'), 'invalid MasterCard number');
ok(!CC_luhn_valid('5105105105105101'), 'invalid MasterCard number');
ok(!CC_luhn_valid('4111111111111112'), 'invalid VISA number');
ok(!CC_luhn_valid('4012888888881882'), 'invalid VISA number');

