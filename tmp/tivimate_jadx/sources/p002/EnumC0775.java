package p002;

import p317.InterfaceC3910;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʻʽ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0775 implements InterfaceC3910 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0775[] f3210;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f3211;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0775 EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʻʽ.ﾞᴵ] */
    static {
        ?? r0 = new Enum("NTLMSSP_REVISION_W2K3", 0);
        r0.f3211 = 15;
        f3210 = new EnumC0775[]{r0};
    }

    public static EnumC0775 valueOf(String str) {
        return (EnumC0775) Enum.valueOf(EnumC0775.class, str);
    }

    public static EnumC0775[] values() {
        return (EnumC0775[]) f3210.clone();
    }

    @Override // p317.InterfaceC3910
    public final long getValue() {
        return this.f3211;
    }
}
