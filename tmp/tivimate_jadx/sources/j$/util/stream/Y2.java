package j$.util.stream;

import j$.util.C5450p;
import j$.util.Spliterator;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class Y2 {
    public static final Y2 DISTINCT;
    public static final Y2 ORDERED;
    public static final Y2 SHORT_CIRCUIT;
    public static final Y2 SIZED;
    public static final Y2 SORTED;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final /* synthetic */ Y2[] v;
    public final Map a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    static {
        X2 x2 = X2.SPLITERATOR;
        C5450p w = w(x2);
        X2 x22 = X2.STREAM;
        w.a(x22);
        X2 x23 = X2.OP;
        ((EnumMap) ((Map) w.b)).put((EnumMap) x23, (X2) 3);
        Y2 y2 = new Y2("DISTINCT", 0, 0, w);
        DISTINCT = y2;
        C5450p w2 = w(x2);
        w2.a(x22);
        ((EnumMap) ((Map) w2.b)).put((EnumMap) x23, (X2) 3);
        Y2 y22 = new Y2("SORTED", 1, 1, w2);
        SORTED = y22;
        C5450p w3 = w(x2);
        w3.a(x22);
        ((EnumMap) ((Map) w3.b)).put((EnumMap) x23, (X2) 3);
        X2 x24 = X2.TERMINAL_OP;
        ((EnumMap) ((Map) w3.b)).put((EnumMap) x24, (X2) 2);
        X2 x25 = X2.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) w3.b)).put((EnumMap) x25, (X2) 2);
        Y2 y23 = new Y2("ORDERED", 2, 2, w3);
        ORDERED = y23;
        C5450p w4 = w(x2);
        w4.a(x22);
        ((EnumMap) ((Map) w4.b)).put((EnumMap) x23, (X2) 2);
        Y2 y24 = new Y2("SIZED", 3, 3, w4);
        SIZED = y24;
        C5450p w5 = w(x23);
        w5.a(x24);
        int i2 = 0;
        Y2 y25 = new Y2("SHORT_CIRCUIT", 4, 12, w5);
        SHORT_CIRCUIT = y25;
        v = new Y2[]{y2, y22, y23, y24, y25};
        f = l(x2);
        g = l(x22);
        h = l(x23);
        l(x24);
        l(x25);
        for (Y2 y26 : values()) {
            i2 |= y26.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        Y2 y27 = DISTINCT;
        m = y27.c;
        n = y27.d;
        Y2 y28 = SORTED;
        o = y28.c;
        p = y28.d;
        Y2 y29 = ORDERED;
        q = y29.c;
        r = y29.d;
        Y2 y210 = SIZED;
        s = y210.c;
        t = y210.d;
        u = SHORT_CIRCUIT.c;
    }

    public Y2(String str, int i2, int i3, C5450p c5450p) {
        for (X2 x2 : X2.values()) {
            j$.com.android.tools.r8.a.a0((Map) c5450p.b, x2, 0);
        }
        this.a = (Map) c5450p.b;
        int i4 = i3 * 2;
        this.b = i4;
        this.c = 1 << i4;
        this.d = 2 << i4;
        this.e = 3 << i4;
    }

    public static int k(int i2, int i3) {
        return i2 | (i3 & (i2 == 0 ? i : ~(((j & i2) << 1) | i2 | ((k & i2) >> 1))));
    }

    public static int l(X2 x2) {
        int i2 = 0;
        for (Y2 y2 : values()) {
            i2 |= ((Integer) y2.a.get(x2)).intValue() << y2.b;
        }
        return i2;
    }

    public static int m(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }

    public static Y2 valueOf(String str) {
        return (Y2) Enum.valueOf(Y2.class, str);
    }

    public static Y2[] values() {
        return (Y2[]) v.clone();
    }

    public static C5450p w(X2 x2) {
        C5450p c5450p = new C5450p(9, new EnumMap(X2.class));
        c5450p.a(x2);
        return c5450p;
    }

    public final boolean q(int i2) {
        return (i2 & this.e) == this.c;
    }
}
