package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class z3 {
    public static final z3 MAYBE_MORE;
    public static final z3 NO_MORE;
    public static final z3 UNLIMITED;
    public static final /* synthetic */ z3[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.z3, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j$.util.stream.z3, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [j$.util.stream.z3, java.lang.Enum] */
    static {
        ?? r0 = new Enum("NO_MORE", 0);
        NO_MORE = r0;
        ?? r1 = new Enum("MAYBE_MORE", 1);
        MAYBE_MORE = r1;
        ?? r3 = new Enum("UNLIMITED", 2);
        UNLIMITED = r3;
        a = new z3[]{r0, r1, r3};
    }

    public static z3 valueOf(String str) {
        return (z3) Enum.valueOf(z3.class, str);
    }

    public static z3[] values() {
        return (z3[]) a.clone();
    }
}
