package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Z2 {
    public static final Z2 DOUBLE_VALUE;
    public static final Z2 INT_VALUE;
    public static final Z2 LONG_VALUE;
    public static final Z2 REFERENCE;
    public static final /* synthetic */ Z2[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    static {
        ?? r0 = new Enum("REFERENCE", 0);
        REFERENCE = r0;
        ?? r1 = new Enum("INT_VALUE", 1);
        INT_VALUE = r1;
        ?? r3 = new Enum("LONG_VALUE", 2);
        LONG_VALUE = r3;
        ?? r5 = new Enum("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = r5;
        a = new Z2[]{r0, r1, r3, r5};
    }

    public static Z2 valueOf(String str) {
        return (Z2) Enum.valueOf(Z2.class, str);
    }

    public static Z2[] values() {
        return (Z2[]) a.clone();
    }
}
