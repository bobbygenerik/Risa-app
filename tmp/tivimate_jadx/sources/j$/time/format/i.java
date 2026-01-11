package j$.time.format;

/* loaded from: classes2.dex */
public class i implements InterfaceC5432e {
    public static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};
    public final j$.time.temporal.o a;
    public final int b;
    public final int c;
    public final F d;
    public final int e;

    public i(j$.time.temporal.o oVar, int i, int i2, F f2) {
        this.a = oVar;
        this.b = i;
        this.c = i2;
        this.d = f2;
        this.e = 0;
    }

    public i(j$.time.temporal.o oVar, int i, int i2, F f2, int i3) {
        this.a = oVar;
        this.b = i;
        this.c = i2;
        this.d = f2;
        this.e = i3;
    }

    public long a(y yVar, long j) {
        return j;
    }

    public boolean b(v vVar) {
        int i = this.e;
        if (i != -1) {
            return i > 0 && this.b == this.c && this.d == F.NOT_NEGATIVE;
        }
        return true;
    }

    public int c(v vVar, long j, int i, int i2) {
        return vVar.f(this.a, j, i, i2);
    }

    public i d() {
        if (this.e == -1) {
            return this;
        }
        return new i(this.a, this.b, this.c, this.d, -1);
    }

    public i e(int i) {
        return new i(this.a, this.b, this.c, this.d, this.e + i);
    }

    @Override // j$.time.format.InterfaceC5432e
    public boolean k(y yVar, StringBuilder sb) {
        j$.time.temporal.o oVar = this.a;
        Long a = yVar.a(oVar);
        if (a == null) {
            return false;
        }
        long a2 = a(yVar, a.longValue());
        C c = yVar.b.c;
        String l = a2 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(a2));
        int length = l.length();
        int i = this.c;
        if (length > i) {
            throw new RuntimeException("Field " + oVar + " cannot be printed as the value " + a2 + " exceeds the maximum print width of " + i);
        }
        c.getClass();
        int i2 = this.b;
        F f2 = this.d;
        if (a2 >= 0) {
            int i3 = AbstractC5429b.a[f2.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && a2 >= f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = AbstractC5429b.a[f2.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new RuntimeException("Field " + oVar + " cannot be printed as the value " + a2 + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - l.length(); i5++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0134, code lost:
    
        r5 = r12;
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0174, code lost:
    
        if (r6 <= r10) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0198  */
    @Override // j$.time.format.InterfaceC5432e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int l(j$.time.format.v r27, java.lang.CharSequence r28, int r29) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.i.l(j$.time.format.v, java.lang.CharSequence, int):int");
    }

    public String toString() {
        int i = this.c;
        j$.time.temporal.o oVar = this.a;
        F f2 = this.d;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && f2 == F.NORMAL) {
            return "Value(" + oVar + ")";
        }
        if (i2 == i && f2 == F.NOT_NEGATIVE) {
            return "Value(" + oVar + "," + i2 + ")";
        }
        return "Value(" + oVar + "," + i2 + "," + i + "," + f2 + ")";
    }
}
