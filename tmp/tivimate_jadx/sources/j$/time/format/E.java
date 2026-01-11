package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class E {
    public static final E LENIENT;
    public static final E SMART;
    public static final E STRICT;
    public static final /* synthetic */ E[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.format.E] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.format.E] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.format.E] */
    static {
        ?? r0 = new Enum("STRICT", 0);
        STRICT = r0;
        ?? r1 = new Enum("SMART", 1);
        SMART = r1;
        ?? r3 = new Enum("LENIENT", 2);
        LENIENT = r3;
        a = new E[]{r0, r1, r3};
    }

    public static E valueOf(String str) {
        return (E) Enum.valueOf(E.class, str);
    }

    public static E[] values() {
        return (E[]) a.clone();
    }
}
