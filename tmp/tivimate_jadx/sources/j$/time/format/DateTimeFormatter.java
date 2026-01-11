package j$.time.format;

import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter f;
    public final C5431d a;
    public final Locale b;
    public final C c;
    public final E d;
    public final j$.time.chrono.j e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [j$.time.format.e, java.lang.Object] */
    static {
        u uVar = new u();
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        F f2 = F.EXCEEDS_PAD;
        uVar.m(aVar, 4, 10, f2);
        uVar.d('-');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        uVar.l(aVar2, 2);
        uVar.d('-');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        uVar.l(aVar3, 2);
        E e = E.STRICT;
        j$.time.chrono.q qVar = j$.time.chrono.q.c;
        DateTimeFormatter p = uVar.p(e, qVar);
        ISO_LOCAL_DATE = p;
        u uVar2 = new u();
        p pVar = p.INSENSITIVE;
        uVar2.c(pVar);
        uVar2.a(p);
        j jVar = j.e;
        uVar2.c(jVar);
        uVar2.p(e, qVar);
        u uVar3 = new u();
        uVar3.c(pVar);
        uVar3.a(p);
        uVar3.o();
        uVar3.c(jVar);
        uVar3.p(e, qVar);
        u uVar4 = new u();
        j$.time.temporal.a aVar4 = j$.time.temporal.a.HOUR_OF_DAY;
        uVar4.l(aVar4, 2);
        uVar4.d(':');
        j$.time.temporal.a aVar5 = j$.time.temporal.a.MINUTE_OF_HOUR;
        uVar4.l(aVar5, 2);
        uVar4.o();
        uVar4.d(':');
        j$.time.temporal.a aVar6 = j$.time.temporal.a.SECOND_OF_MINUTE;
        uVar4.l(aVar6, 2);
        uVar4.o();
        uVar4.b(j$.time.temporal.a.NANO_OF_SECOND, 0, 9, true);
        DateTimeFormatter p2 = uVar4.p(e, null);
        u uVar5 = new u();
        uVar5.c(pVar);
        uVar5.a(p2);
        uVar5.c(jVar);
        uVar5.p(e, null);
        u uVar6 = new u();
        uVar6.c(pVar);
        uVar6.a(p2);
        uVar6.o();
        uVar6.c(jVar);
        uVar6.p(e, null);
        u uVar7 = new u();
        uVar7.c(pVar);
        uVar7.a(p);
        uVar7.d('T');
        uVar7.a(p2);
        DateTimeFormatter p3 = uVar7.p(e, qVar);
        u uVar8 = new u();
        uVar8.c(pVar);
        uVar8.a(p3);
        p pVar2 = p.LENIENT;
        uVar8.c(pVar2);
        uVar8.c(jVar);
        p pVar3 = p.STRICT;
        uVar8.c(pVar3);
        DateTimeFormatter p4 = uVar8.p(e, qVar);
        u uVar9 = new u();
        uVar9.a(p4);
        uVar9.o();
        uVar9.d('[');
        p pVar4 = p.SENSITIVE;
        uVar9.c(pVar4);
        j$.time.f fVar = u.h;
        uVar9.c(new s(fVar, "ZoneRegionId()"));
        uVar9.d(']');
        uVar9.p(e, qVar);
        u uVar10 = new u();
        uVar10.a(p3);
        uVar10.o();
        uVar10.c(jVar);
        uVar10.o();
        uVar10.d('[');
        uVar10.c(pVar4);
        uVar10.c(new s(fVar, "ZoneRegionId()"));
        uVar10.d(']');
        uVar10.p(e, qVar);
        u uVar11 = new u();
        uVar11.c(pVar);
        uVar11.m(aVar, 4, 10, f2);
        uVar11.d('-');
        uVar11.l(j$.time.temporal.a.DAY_OF_YEAR, 3);
        uVar11.o();
        uVar11.c(jVar);
        uVar11.p(e, qVar);
        u uVar12 = new u();
        uVar12.c(pVar);
        uVar12.m(j$.time.temporal.i.c, 4, 10, f2);
        uVar12.e("-W");
        uVar12.l(j$.time.temporal.i.b, 2);
        uVar12.d('-');
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_WEEK;
        uVar12.l(aVar7, 1);
        uVar12.o();
        uVar12.c(jVar);
        uVar12.p(e, qVar);
        u uVar13 = new u();
        uVar13.c(pVar);
        uVar13.c(new Object());
        f = uVar13.p(e, null);
        u uVar14 = new u();
        uVar14.c(pVar);
        uVar14.l(aVar, 4);
        uVar14.l(aVar2, 2);
        uVar14.l(aVar3, 2);
        uVar14.o();
        uVar14.c(pVar2);
        uVar14.g("+HHMMss", "Z");
        uVar14.c(pVar3);
        uVar14.p(e, qVar);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        u uVar15 = new u();
        uVar15.c(pVar);
        uVar15.c(pVar2);
        uVar15.o();
        uVar15.h(aVar7, hashMap);
        uVar15.e(", ");
        uVar15.n();
        uVar15.m(aVar3, 1, 2, F.NOT_NEGATIVE);
        uVar15.d(' ');
        uVar15.h(aVar2, hashMap2);
        uVar15.d(' ');
        uVar15.l(aVar, 4);
        uVar15.d(' ');
        uVar15.l(aVar4, 2);
        uVar15.d(':');
        uVar15.l(aVar5, 2);
        uVar15.o();
        uVar15.d(':');
        uVar15.l(aVar6, 2);
        uVar15.n();
        uVar15.d(' ');
        uVar15.g("+HHMM", "GMT");
        uVar15.p(E.SMART, qVar);
    }

    public DateTimeFormatter(C5431d c5431d, Locale locale, E e, j$.time.chrono.j jVar) {
        C c = C.a;
        this.a = (C5431d) Objects.requireNonNull(c5431d, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.c = (C) Objects.requireNonNull(c, "decimalStyle");
        this.d = (E) Objects.requireNonNull(e, "resolverStyle");
        this.e = jVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:70:0x00e6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:71:0x00e9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:72:0x00ec. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:150:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04a3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.format.DateTimeFormatter ofPattern(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.ofPattern(java.lang.String):j$.time.format.DateTimeFormatter");
    }

    public final Object a(CharSequence charSequence, j$.time.f fVar) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        Objects.requireNonNull(fVar, "query");
        try {
            return b(charSequence).w(fVar);
        } catch (w e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                charSequence2 = charSequence.toString();
            }
            RuntimeException runtimeException = new RuntimeException("Text '" + charSequence2 + "' could not be parsed: " + e2.getMessage(), e2);
            charSequence.toString();
            throw runtimeException;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x032a, code lost:
    
        if (((java.util.HashMap) r9.a).containsKey(j$.time.temporal.a.SECOND_OF_MINUTE) != false) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0308  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.format.D b(java.lang.CharSequence r27) {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.b(java.lang.CharSequence):j$.time.format.D");
    }

    public String format(TemporalAccessor temporalAccessor) {
        StringBuilder sb = new StringBuilder(32);
        C5431d c5431d = this.a;
        Objects.requireNonNull(temporalAccessor, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            c5431d.k(new y(temporalAccessor, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public final String toString() {
        String c5431d = this.a.toString();
        return c5431d.startsWith("[") ? c5431d : c5431d.substring(1, c5431d.length() - 1);
    }
}
