package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ʿʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0299 extends AbstractC0269 {
    private static final C0299 zzg;
    private InterfaceC0378 zzb;
    private InterfaceC0378 zzd;
    private InterfaceC0247 zze;
    private InterfaceC0247 zzf;

    static {
        C0299 c0299 = new C0299();
        zzg = c0299;
        AbstractC0269.m1224(C0299.class, c0299);
    }

    public C0299() {
        C0403 c0403 = C0403.f2131;
        this.zzb = c0403;
        this.zzd = c0403;
        C0370 c0370 = C0370.f2028;
        this.zze = c0370;
        this.zzf = c0370;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static C0299 m1313() {
        return zzg;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static C0469 m1314() {
        return (C0469) zzg.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final List m1315() {
        return this.zzf;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1316() {
        return this.zzb;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m1317() {
        this.zzd = C0403.f2131;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m1318() {
        return this.zze.size();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m1319() {
        this.zzb = C0403.f2131;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m1320(ArrayList arrayList) {
        InterfaceC0247 interfaceC0247 = this.zze;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zze = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(arrayList, this.zze);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzg, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzb", "zzd", "zze", C0503.class, "zzf", C0310.class});
        }
        if (i2 == 3) {
            return new C0299();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzg);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m1321(Iterable iterable) {
        InterfaceC0247 interfaceC0247 = this.zzf;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzf = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(iterable, this.zzf);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final InterfaceC0247 m1322() {
        return this.zze;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final int m1323() {
        return ((C0403) this.zzd).size();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int m1324() {
        return this.zzf.size();
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m1325() {
        this.zzf = C0370.f2028;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m1326(List list) {
        RandomAccess randomAccess = this.zzd;
        if (!((AbstractC0265) randomAccess).f1765) {
            C0403 c0403 = (C0403) randomAccess;
            int i = c0403.f2132;
            this.zzd = c0403.mo1195(i + i);
        }
        AbstractC0514.m2018(list, this.zzd);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m1327() {
        this.zze = C0370.f2028;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1328() {
        return ((C0403) this.zzb).size();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m1329(Iterable iterable) {
        RandomAccess randomAccess = this.zzb;
        if (!((AbstractC0265) randomAccess).f1765) {
            C0403 c0403 = (C0403) randomAccess;
            int i = c0403.f2132;
            this.zzb = c0403.mo1195(i + i);
        }
        AbstractC0514.m2018(iterable, this.zzb);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final List m1330() {
        return this.zzd;
    }
}
