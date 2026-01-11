package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class X2 {
    public static final X2 OP;
    public static final X2 SPLITERATOR;
    public static final X2 STREAM;
    public static final X2 TERMINAL_OP;
    public static final X2 UPSTREAM_TERMINAL_OP;
    public static final /* synthetic */ X2[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.X2] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.util.stream.X2] */
    static {
        ?? r0 = new Enum("SPLITERATOR", 0);
        SPLITERATOR = r0;
        ?? r1 = new Enum("STREAM", 1);
        STREAM = r1;
        ?? r3 = new Enum("OP", 2);
        OP = r3;
        ?? r5 = new Enum("TERMINAL_OP", 3);
        TERMINAL_OP = r5;
        ?? r7 = new Enum("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = r7;
        a = new X2[]{r0, r1, r3, r5, r7};
    }

    public static X2 valueOf(String str) {
        return (X2) Enum.valueOf(X2.class, str);
    }

    public static X2[] values() {
        return (X2[]) a.clone();
    }
}
