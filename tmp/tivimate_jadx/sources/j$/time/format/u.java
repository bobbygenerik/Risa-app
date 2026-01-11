package j$.time.format;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class u {
    public static final j$.time.f h = new j$.time.f(3);
    public static final Map i;
    public u a;
    public final u b;
    public final List c;
    public final boolean d;
    public int e;
    public char f;
    public int g;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put('G', j$.time.temporal.a.ERA);
        hashMap.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        hashMap.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.g gVar = j$.time.temporal.i.a;
        hashMap.put('Q', gVar);
        hashMap.put('q', gVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        hashMap.put('M', aVar);
        hashMap.put('L', aVar);
        hashMap.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        hashMap.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        hashMap.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        hashMap.put('E', aVar2);
        hashMap.put('c', aVar2);
        hashMap.put('e', aVar2);
        hashMap.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        hashMap.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        hashMap.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        hashMap.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        hashMap.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        hashMap.put('S', aVar3);
        hashMap.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        hashMap.put('n', aVar3);
        hashMap.put('N', j$.time.temporal.a.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.k.a);
    }

    public u() {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = null;
        this.d = false;
    }

    public u(u uVar) {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = uVar;
        this.d = true;
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        C5431d c5431d = dateTimeFormatter.a;
        if (c5431d.b) {
            c5431d = new C5431d(c5431d.a, false);
        }
        c(c5431d);
    }

    public final void b(j$.time.temporal.a aVar, int i2, int i3, boolean z) {
        if (i2 != i3 || z) {
            c(new C5433f(aVar, i2, i3, z));
        } else {
            j(new C5433f(aVar, i2, i3, z));
        }
    }

    public final int c(InterfaceC5432e interfaceC5432e) {
        Objects.requireNonNull(interfaceC5432e, "pp");
        u uVar = this.a;
        int i2 = uVar.e;
        if (i2 > 0) {
            if (interfaceC5432e != null) {
                interfaceC5432e = new k(interfaceC5432e, i2, uVar.f);
            }
            uVar.e = 0;
            uVar.f = (char) 0;
        }
        ((ArrayList) uVar.c).add(interfaceC5432e);
        this.a.g = -1;
        return ((ArrayList) r5.c).size() - 1;
    }

    public final void d(char c) {
        c(new C5430c(c));
    }

    public final void e(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            c(new C5430c(str.charAt(0)));
        } else {
            c(new h(1, str));
        }
    }

    public final void f(TextStyle textStyle) {
        Objects.requireNonNull(textStyle, "style");
        if (textStyle != TextStyle.FULL && textStyle != TextStyle.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        c(new h(0, textStyle));
    }

    public final void g(String str, String str2) {
        c(new j(str, str2));
    }

    public final void h(j$.time.temporal.a aVar, Map map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        c(new q(aVar, textStyle, new C5428a(new A(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    public final void i(j$.time.temporal.o oVar, TextStyle textStyle) {
        Objects.requireNonNull(oVar, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c(new q(oVar, textStyle, B.c));
    }

    public final void j(i iVar) {
        i d;
        u uVar = this.a;
        int i2 = uVar.g;
        if (i2 < 0) {
            uVar.g = c(iVar);
            return;
        }
        i iVar2 = (i) ((ArrayList) uVar.c).get(i2);
        int i3 = iVar.b;
        int i4 = iVar.c;
        if (i3 == i4 && iVar.d == F.NOT_NEGATIVE) {
            d = iVar2.e(i4);
            c(iVar.d());
            this.a.g = i2;
        } else {
            d = iVar2.d();
            this.a.g = c(iVar);
        }
        ((ArrayList) this.a.c).set(i2, d);
    }

    public final void k(j$.time.temporal.o oVar) {
        Objects.requireNonNull(oVar, "field");
        j(new i(oVar, 1, 19, F.NORMAL));
    }

    public final void l(j$.time.temporal.o oVar, int i2) {
        Objects.requireNonNull(oVar, "field");
        if (i2 >= 1 && i2 <= 19) {
            j(new i(oVar, i2, i2, F.NOT_NEGATIVE));
        } else {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i2);
        }
    }

    public final void m(j$.time.temporal.o oVar, int i2, int i3, F f) {
        if (i2 == i3 && f == F.NOT_NEGATIVE) {
            l(oVar, i3);
            return;
        }
        Objects.requireNonNull(oVar, "field");
        Objects.requireNonNull(f, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i2);
        }
        if (i3 < 1 || i3 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i3);
        }
        if (i3 >= i2) {
            j(new i(oVar, i2, i3, f));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
    }

    public final void n() {
        u uVar = this.a;
        if (uVar.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (((ArrayList) uVar.c).size() <= 0) {
            this.a = this.a.b;
            return;
        }
        u uVar2 = this.a;
        C5431d c5431d = new C5431d(uVar2.c, uVar2.d);
        this.a = this.a.b;
        c(c5431d);
    }

    public final void o() {
        u uVar = this.a;
        uVar.g = -1;
        this.a = new u(uVar);
    }

    public final DateTimeFormatter p(E e, j$.time.chrono.j jVar) {
        return q(Locale.getDefault(), e, jVar);
    }

    public final DateTimeFormatter q(Locale locale, E e, j$.time.chrono.j jVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.a.b != null) {
            n();
        }
        C5431d c5431d = new C5431d(this.c, false);
        C c = C.a;
        return new DateTimeFormatter(c5431d, locale, e, jVar);
    }
}
