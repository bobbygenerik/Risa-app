package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.stream.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC5488h {
    public static final EnumC5488h CONCURRENT;
    public static final EnumC5488h IDENTITY_FINISH;
    public static final EnumC5488h UNORDERED;
    public static final /* synthetic */ EnumC5488h[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.h, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j$.util.stream.h, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [j$.util.stream.h, java.lang.Enum] */
    static {
        ?? r0 = new Enum("CONCURRENT", 0);
        CONCURRENT = r0;
        ?? r1 = new Enum("UNORDERED", 1);
        UNORDERED = r1;
        ?? r3 = new Enum("IDENTITY_FINISH", 2);
        IDENTITY_FINISH = r3;
        a = new EnumC5488h[]{r0, r1, r3};
    }

    public static EnumC5488h valueOf(String str) {
        return (EnumC5488h) Enum.valueOf(EnumC5488h.class, str);
    }

    public static EnumC5488h[] values() {
        return (EnumC5488h[]) a.clone();
    }
}
