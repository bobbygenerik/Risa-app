package p099;

import java.util.Date;
import java.util.HashMap;
import p085.InterfaceC1731;
import p085.InterfaceC1733;
import p085.InterfaceC1736;
import p155.InterfaceC2510;

/* renamed from: ˆˉ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1902 implements InterfaceC2510 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1904 f7606;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1904 f7608;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1905 f7609;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f7610;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f7611;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f7612;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1905 f7605 = new C1905(0);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1901 f7607 = new Object();

    /* JADX WARN: Type inference failed for: r0v1, types: [ˆˉ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r0v2, types: [ˆˉ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, ˆˉ.ʽ] */
    static {
        final int i = 0;
        f7608 = new InterfaceC1733() { // from class: ˆˉ.ⁱˊ
            @Override // p085.InterfaceC1735
            /* renamed from: ﹳٴ */
            public final void mo4342(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        ((InterfaceC1736) obj2).mo4682((String) obj);
                        return;
                    default:
                        ((InterfaceC1736) obj2).mo4683(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
        final int i2 = 1;
        f7606 = new InterfaceC1733() { // from class: ˆˉ.ⁱˊ
            @Override // p085.InterfaceC1735
            /* renamed from: ﹳٴ */
            public final void mo4342(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        ((InterfaceC1736) obj2).mo4682((String) obj);
                        return;
                    default:
                        ((InterfaceC1736) obj2).mo4683(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
    }

    public C1902() {
        HashMap hashMap = new HashMap();
        this.f7612 = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f7611 = hashMap2;
        this.f7609 = f7605;
        this.f7610 = false;
        hashMap2.put(String.class, f7608);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, f7606);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, f7607);
        hashMap.remove(Date.class);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2510 m4849(Class cls, InterfaceC1731 interfaceC1731) {
        this.f7612.put(cls, interfaceC1731);
        this.f7611.remove(cls);
        return this;
    }
}
