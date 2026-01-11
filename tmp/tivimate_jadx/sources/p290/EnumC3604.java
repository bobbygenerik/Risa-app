package p290;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ٴᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3604 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC3604 f14097;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3604 f14098;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3604[] f14099;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC3604 f14100;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ٴᐧ.ʽ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ٴᐧ.ʽ] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, ٴᐧ.ʽ] */
    static {
        ?? r0 = new Enum("NETWORK_UNMETERED", 0);
        f14098 = r0;
        ?? r1 = new Enum("DEVICE_IDLE", 1);
        f14100 = r1;
        ?? r3 = new Enum("DEVICE_CHARGING", 2);
        f14097 = r3;
        f14099 = new EnumC3604[]{r0, r1, r3};
    }

    public static EnumC3604 valueOf(String str) {
        return (EnumC3604) Enum.valueOf(EnumC3604.class, str);
    }

    public static EnumC3604[] values() {
        return (EnumC3604[]) f14099.clone();
    }
}
