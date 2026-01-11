package j$.time.format;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class C {
    public static final C a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.format.C, java.lang.Object] */
    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof C);
    }

    public final int hashCode() {
        return 182;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
