package j$.time.zone;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d {
    public static final d STANDARD;
    public static final d UTC;
    public static final d WALL;
    public static final /* synthetic */ d[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.zone.d] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.zone.d] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.zone.d] */
    static {
        ?? r0 = new Enum("UTC", 0);
        UTC = r0;
        ?? r1 = new Enum("WALL", 1);
        WALL = r1;
        ?? r3 = new Enum("STANDARD", 2);
        STANDARD = r3;
        a = new d[]{r0, r1, r3};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) a.clone();
    }
}
