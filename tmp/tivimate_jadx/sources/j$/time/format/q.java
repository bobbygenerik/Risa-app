package j$.time.format;

/* loaded from: classes2.dex */
public final class q implements InterfaceC5432e {
    public final j$.time.temporal.o a;
    public final TextStyle b;
    public final B c;
    public volatile i d;

    public q(j$.time.temporal.o oVar, TextStyle textStyle, B b) {
        this.a = oVar;
        this.b = textStyle;
        this.c = b;
    }

    @Override // j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        Long a = yVar.a(this.a);
        DateTimeFormatter dateTimeFormatter = yVar.b;
        if (a == null) {
            return false;
        }
        j$.time.chrono.j jVar = (j$.time.chrono.j) yVar.a.w(j$.time.temporal.p.b);
        String c = (jVar == null || jVar == j$.time.chrono.q.c) ? this.c.c(this.a, a.longValue(), this.b, dateTimeFormatter.b) : this.c.b(jVar, this.a, a.longValue(), this.b, dateTimeFormatter.b);
        if (c != null) {
            sb.append(c);
            return true;
        }
        if (this.d == null) {
            this.d = new i(this.a, 1, 19, F.NORMAL);
        }
        return this.d.k(yVar, sb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r8 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        if (r8.hasNext() == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        r9 = (java.util.Map.Entry) r8.next();
        r1 = (java.lang.String) r9.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r11.g(r1, 0, r12, r13, r1.length()) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        return r11.f(r10.a, ((java.lang.Long) r9.getValue()).longValue(), r13, r1.length() + r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        if (r6 != j$.time.temporal.a.ERA) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
    
        if (r11.c != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        r6 = r7.v().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008e, code lost:
    
        if (r6.hasNext() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
    
        r1 = ((j$.time.chrono.k) r6.next()).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a7, code lost:
    
        if (r11.g(r1, 0, r12, r13, r1.length()) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        return r11.f(r10.a, r7.getValue(), r13, r1.length() + r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c0, code lost:
    
        if (r11.c == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
    
        return ~r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c6, code lost:
    
        if (r10.d != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c8, code lost:
    
        r10.d = new j$.time.format.i(r10.a, 1, 19, j$.time.format.F.NORMAL);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dc, code lost:
    
        return r10.d.l(r11, r12, r13);
     */
    @Override // j$.time.format.InterfaceC5432e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int l(j$.time.format.v r11, java.lang.CharSequence r12, int r13) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.q.l(j$.time.format.v, java.lang.CharSequence, int):int");
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        j$.time.temporal.o oVar = this.a;
        TextStyle textStyle2 = this.b;
        if (textStyle2 == textStyle) {
            return "Text(" + oVar + ")";
        }
        return "Text(" + oVar + "," + textStyle2 + ")";
    }
}
