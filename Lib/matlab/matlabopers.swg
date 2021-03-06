/* ------------------------------------------------------------
 * Overloaded operator support
 * ------------------------------------------------------------ */

#ifdef __cplusplus

// operators supported in C++, and the methods that route to them

%rename(plus)           *::operator+;
%rename(uplus)          *::operator+();
%rename(uplus)          *::operator+() const;
%rename(minus)          *::operator-;
%rename(uminus)         *::operator-();
%rename(uminus)         *::operator-() const;
%rename(mtimes)         *::operator*;
%rename(mrdivide)       *::operator/;
%rename(mod)            *::operator%;
// %rename(lshift)      *::operator<<;
// %rename(rshift)      *::operator>>;
%rename("and")          *::operator&&;
%rename("or")           *::operator||;
%rename("xor")          *::operator^;
//%rename(invert)       *::operator~;
%rename(lt)             *::operator<;
%rename(le)             *::operator<=;
%rename(gt)             *::operator>;
%rename(ge)             *::operator>=;
%rename(eq)             *::operator==;
%rename(ne)             *::operator!=;
%rename("not")          *::operator!;
// non-standard matlab
%rename(TODOincr)       *::operator++;
%rename(TODOdecr)       *::operator--;
%rename(paren)          *::operator();
%rename(brace)          *::operator[];

// Ignored inplace operators
%ignoreoperator(PLUSEQ)     operator+=;
%ignoreoperator(MINUSEQ)    operator-=;
%ignoreoperator(MULEQ)      operator*=;
%ignoreoperator(DIVEQ)      operator/=;
%ignoreoperator(MODEQ)      operator%=;
%ignoreoperator(LSHIFTEQ)   operator<<=;
%ignoreoperator(RSHIFTEQ)   operator>>=;
%ignoreoperator(ANDEQ)      operator&=;
%ignoreoperator(OREQ)       operator|=;
%ignoreoperator(XOREQ)      operator^=;

// Ignored operators
%ignoreoperator(EQ)         operator=;
%ignoreoperator(ARROWSTAR)  operator->*;
%ignoreoperator(ARROW)      operator->;
// %ignoreoperator(PARENS)     operator*();
// %ignoreoperator(PARENSC)    operator*() const;

// Python/Octave style naming
%rename(disp)     *::__str__;

#endif /* cplusplus */
