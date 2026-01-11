package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˊﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0347 extends AbstractC0269 {
    private static final C0347 zzh;
    private int zzb;
    private InterfaceC0247 zzd = C0370.f2028;
    private String zze = "";
    private String zzf = "";
    private int zzg;

    static {
        C0347 c0347 = new C0347();
        zzh = c0347;
        AbstractC0269.m1224(C0347.class, c0347);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static C0374 m1597(C0347 c0347) {
        AbstractC0495 m1233 = zzh.m1233();
        m1233.m1946(c0347);
        return (C0374) m1233;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static C0374 m1598() {
        return (C0374) zzh.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final String m1599() {
        return this.zzf;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1600(int i, C0311 c0311) {
        m1609();
        this.zzd.set(i, c0311);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1601() {
        return this.zzd;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1602(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1603() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1604(ArrayList arrayList) {
        m1609();
        AbstractC0514.m2018(arrayList, this.zzd);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1605(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzh, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zzd", C0311.class, "zze", "zzf", "zzg", C0286.f1878});
        }
        if (i2 == 3) {
            return new C0347();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final String m1606() {
        return this.zze;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1607() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m1608() {
        this.zzd = C0370.f2028;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m1609() {
        InterfaceC0247 interfaceC0247 = this.zzd;
        if (((AbstractC0265) interfaceC0247).f1765) {
            return;
        }
        int size = interfaceC0247.size();
        this.zzd = interfaceC0247.mo1195(size + size);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1610() {
        return this.zzd.size();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1611(C0311 c0311) {
        m1609();
        this.zzd.add(c0311);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C0311 m1612(int i) {
        return (C0311) this.zzd.get(i);
    }
}
