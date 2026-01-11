package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˆʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0308 extends AbstractC0269 {
    private static final C0308 zzj;
    private int zzb;
    private long zzd;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private float zzh;
    private double zzi;

    static {
        C0308 c0308 = new C0308();
        zzj = c0308;
        AbstractC0269.m1224(C0308.class, c0308);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static C0511 m1333() {
        return (C0511) zzj.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final long m1334() {
        return this.zzg;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean m1335() {
        return (this.zzb & 32) != 0;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1336() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1337(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1338() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final float m1339() {
        return this.zzh;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1340(String str) {
        str.getClass();
        this.zzb |= 4;
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
            return new C0423(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new C0308();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1341(double d) {
        this.zzb |= 32;
        this.zzi = d;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1342(long j) {
        this.zzb |= 8;
        this.zzg = j;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final String m1343() {
        return this.zzf;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1344() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m1345() {
        return (this.zzb & 16) != 0;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1346() {
        this.zzb &= -9;
        this.zzg = 0L;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ void m1347(long j) {
        this.zzb |= 1;
        this.zzd = j;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ void m1348() {
        this.zzb &= -5;
        this.zzf = zzj.zzf;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1349() {
        this.zzb &= -33;
        this.zzi = 0.0d;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final long m1350() {
        return this.zzd;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final double m1351() {
        return this.zzi;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String m1352() {
        return this.zze;
    }
}
