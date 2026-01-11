package j$.time.format;

import j$.util.Objects;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* renamed from: j$.time.format.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5433f extends i {
    public final boolean g;

    public C5433f(j$.time.temporal.o oVar, int i, int i2, boolean z) {
        this(oVar, i, i2, z, 0);
        Objects.requireNonNull(oVar, "field");
        j$.time.temporal.r q = oVar.q();
        if (q.a != q.b || q.c != q.d) {
            throw new IllegalArgumentException(j$.time.c.a("Field must have a fixed set of values: ", oVar));
        }
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        }
        if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        }
        if (i2 >= i) {
            return;
        }
        throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    public C5433f(j$.time.temporal.o oVar, int i, int i2, boolean z, int i3) {
        super(oVar, i, i2, F.NOT_NEGATIVE, i3);
        this.g = z;
    }

    @Override // j$.time.format.i
    public final boolean b(v vVar) {
        return vVar.c && this.b == this.c && !this.g;
    }

    @Override // j$.time.format.i
    public final i d() {
        if (this.e == -1) {
            return this;
        }
        return new C5433f(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.i
    public final i e(int i) {
        return new C5433f(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.i, j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        j$.time.temporal.o oVar = this.a;
        Long a = yVar.a(oVar);
        if (a == null) {
            return false;
        }
        C c = yVar.b.c;
        long longValue = a.longValue();
        j$.time.temporal.r q = oVar.q();
        q.b(longValue, oVar);
        BigDecimal valueOf = BigDecimal.valueOf(q.a);
        BigDecimal add = BigDecimal.valueOf(q.d).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.g;
        int i = this.b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.c), roundingMode).toPlainString().substring(2);
            c.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i > 0) {
            if (z) {
                c.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                c.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.i, j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        boolean z = vVar.c;
        DateTimeFormatter dateTimeFormatter = vVar.a;
        int i2 = (z || b(vVar)) ? this.b : 0;
        int i3 = (vVar.c || b(vVar)) ? this.c : 9;
        int length = charSequence.length();
        if (i != length) {
            if (this.g) {
                char charAt = charSequence.charAt(i);
                dateTimeFormatter.c.getClass();
                if (charAt == '.') {
                    i++;
                } else if (i2 > 0) {
                    return ~i;
                }
            }
            int i4 = i;
            int i5 = i2 + i4;
            if (i5 > length) {
                return ~i4;
            }
            int min = Math.min(i3 + i4, length);
            int i6 = 0;
            int i7 = i4;
            while (true) {
                if (i7 >= min) {
                    break;
                }
                int i8 = i7 + 1;
                char charAt2 = charSequence.charAt(i7);
                dateTimeFormatter.c.getClass();
                int i9 = charAt2 - '0';
                if (i9 < 0 || i9 > 9) {
                    i9 = -1;
                }
                if (i9 >= 0) {
                    i6 = (i6 * 10) + i9;
                    i7 = i8;
                } else if (i8 < i5) {
                    return ~i4;
                }
            }
            BigDecimal movePointLeft = new BigDecimal(i6).movePointLeft(i7 - i4);
            j$.time.temporal.r q = this.a.q();
            BigDecimal valueOf = BigDecimal.valueOf(q.a);
            return vVar.f(this.a, movePointLeft.multiply(BigDecimal.valueOf(q.d).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i4, i7);
        }
        if (i2 > 0) {
            return ~i;
        }
        return i;
    }

    @Override // j$.time.format.i
    public final String toString() {
        return "Fraction(" + this.a + "," + this.b + "," + this.c + (this.g ? ",DecimalPoint" : "") + ")";
    }
}
