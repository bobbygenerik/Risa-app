package com.google.android.gms.internal.measurement;

import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.measurement.ˆˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0311 extends AbstractC0269 {
    private static final C0311 zzat;
    private int zzA;
    private String zzB;
    private String zzC;
    private boolean zzD;
    private InterfaceC0247 zzE;
    private String zzF;
    private int zzG;
    private int zzH;
    private int zzI;
    private String zzJ;
    private long zzK;
    private long zzL;
    private String zzM;
    private String zzN;
    private int zzO;
    private String zzP;
    private C0365 zzQ;
    private InterfaceC0496 zzR;
    private long zzS;
    private long zzT;
    private String zzU;
    private String zzV;
    private int zzW;
    private boolean zzX;
    private String zzY;
    private boolean zzZ;
    private C0399 zzaa;
    private String zzab;
    private InterfaceC0247 zzac;
    private String zzad;
    private long zzae;
    private boolean zzaf;
    private String zzag;
    private boolean zzah;
    private String zzai;
    private int zzaj;
    private String zzak;
    private C0512 zzal;
    private int zzam;
    private C0350 zzan;
    private String zzao;
    private C0476 zzap;
    private long zzaq;
    private String zzar;
    private C0471 zzas;
    private int zzb;
    private int zzd;
    private int zze;
    private InterfaceC0247 zzf;
    private InterfaceC0247 zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private String zzm;
    private String zzn;
    private String zzo;
    private String zzp;
    private int zzq;
    private String zzr;
    private String zzs;
    private String zzt;
    private long zzu;
    private long zzv;
    private String zzw;
    private boolean zzx;
    private String zzy;
    private long zzz;

    static {
        C0311 c0311 = new C0311();
        zzat = c0311;
        AbstractC0269.m1224(C0311.class, c0311);
    }

    public C0311() {
        C0370 c0370 = C0370.f2028;
        this.zzf = c0370;
        this.zzg = c0370;
        this.zzm = "";
        this.zzn = "";
        this.zzo = "";
        this.zzp = "";
        this.zzr = "";
        this.zzs = "";
        this.zzt = "";
        this.zzw = "";
        this.zzy = "";
        this.zzB = "";
        this.zzC = "";
        this.zzE = c0370;
        this.zzF = "";
        this.zzJ = "";
        this.zzM = "";
        this.zzN = "";
        this.zzP = "";
        this.zzR = C0501.f2265;
        this.zzU = "";
        this.zzV = "";
        this.zzY = "";
        this.zzab = "";
        this.zzac = c0370;
        this.zzad = "";
        this.zzag = "";
        this.zzai = "";
        this.zzak = "";
        this.zzao = "";
        this.zzar = "";
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static C0273 m1364(C0311 c0311) {
        AbstractC0495 m1233 = zzat.m1233();
        m1233.m1946(c0311);
        return (C0273) m1233;
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static C0273 m1365() {
        return (C0273) zzat.m1233();
    }

    /* renamed from: ʻʻ, reason: contains not printable characters */
    public final int m1366() {
        return this.zzg.size();
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1367() {
        this.zzb &= -257;
        this.zzo = zzat.zzo;
    }

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final C0512 m1368() {
        C0512 c0512 = this.zzal;
        return c0512 == null ? C0512.m2002() : c0512;
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final /* synthetic */ void m1369() {
        this.zzb &= -65537;
        this.zzw = zzat.zzw;
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1370(long j) {
        this.zzb |= 32;
        this.zzl = j;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final String m1371() {
        return this.zzw;
    }

    /* renamed from: ʻᐧ, reason: contains not printable characters */
    public final void m1372() {
        InterfaceC0247 interfaceC0247 = this.zzf;
        if (((AbstractC0265) interfaceC0247).f1765) {
            return;
        }
        int size = interfaceC0247.size();
        this.zzf = interfaceC0247.mo1195(size + size);
    }

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final boolean m1373() {
        return (this.zzd & 262144) != 0;
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final /* synthetic */ void m1374(long j) {
        this.zzb |= 2;
        this.zzh = j;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final String m1375() {
        return this.zzy;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m1376() {
        return (this.zzd & 536870912) != 0;
    }

    /* renamed from: ʼˋ, reason: contains not printable characters */
    public final long m1377() {
        return this.zzi;
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final boolean m1378() {
        return (this.zzd & 8192) != 0;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m1379() {
        return this.zzs;
    }

    /* renamed from: ʼᵎ, reason: contains not printable characters */
    public final InterfaceC0247 m1380() {
        return this.zzg;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1381(long j) {
        this.zzb |= 536870912;
        this.zzK = j;
    }

    /* renamed from: ʼﹶ, reason: contains not printable characters */
    public final String m1382() {
        return this.zzn;
    }

    /* renamed from: ʼﾞ, reason: contains not printable characters */
    public final long m1383() {
        return this.zzh;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m1384() {
        return this.zzA;
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final /* synthetic */ void m1385(int i) {
        this.zzd |= 8388608;
        this.zzam = i;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final C0476 m1386() {
        C0476 c0476 = this.zzap;
        return c0476 == null ? C0476.m1928() : c0476;
    }

    /* renamed from: ʽᐧ, reason: contains not printable characters */
    public final /* synthetic */ void m1387(String str) {
        this.zzb |= 262144;
        this.zzy = str;
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final int m1388() {
        return this.zzO;
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final long m1389() {
        return this.zzae;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final long m1390() {
        return this.zzv;
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final boolean m1391() {
        return (this.zzd & 128) != 0;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long m1392() {
        return this.zzz;
    }

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1393(int i) {
        this.zzb |= 1048576;
        this.zzA = i;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m1394() {
        return this.zzx;
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final boolean m1395() {
        return this.zzaf;
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final /* synthetic */ void m1396(C0414 c0414) {
        m1372();
        this.zzf.add(c0414);
    }

    /* renamed from: ʿʻ, reason: contains not printable characters */
    public final long m1397() {
        return this.zzl;
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1398() {
        this.zzd |= 268435456;
        this.zzar = "";
    }

    /* renamed from: ʿˎ, reason: contains not printable characters */
    public final void m1399() {
        this.zzE = C0370.f2028;
    }

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final String m1400() {
        return this.zzai;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1401(Iterable iterable) {
        m1372();
        AbstractC0514.m2018(iterable, this.zzf);
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1402(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzr = str;
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final /* synthetic */ void m1403() {
        String str = Build.MODEL;
        str.getClass();
        this.zzb |= 256;
        this.zzo = str;
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final /* synthetic */ void m1404(C0350 c0350) {
        this.zzan = c0350;
        this.zzd |= 16777216;
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1405(C0471 c0471) {
        this.zzas = c0471;
        this.zzd |= 536870912;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final long m1406() {
        return this.zzK;
    }

    /* renamed from: ˈʻ, reason: contains not printable characters */
    public final C0308 m1407(int i) {
        return (C0308) this.zzg.get(i);
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final String m1408() {
        return this.zzM;
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1409(long j) {
        this.zzb |= 8;
        this.zzj = j;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final /* synthetic */ void m1410(int i) {
        this.zzd |= 2;
        this.zzO = i;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String m1411() {
        return this.zzB;
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1412(String str) {
        str.getClass();
        this.zzb |= 4096;
        this.zzs = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzat, "\u0004C\u0000\u0002\u0001VC\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6Mင7Oဉ8Pဈ9Qဉ:Rဂ;Sဈ<Vဉ=", new Object[]{"zzb", "zzd", "zze", "zzf", C0414.class, "zzg", C0308.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzk", "zzD", "zzE", C0358.class, "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", C0286.f1884, "zzX", "zzY", "zzZ", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas"});
        }
        if (i2 == 3) {
            return new C0311();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzat);
        }
        if (i2 == 5) {
            return zzat;
        }
        throw null;
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final /* synthetic */ void m1413(int i, C0414 c0414) {
        m1372();
        this.zzf.set(i, c0414);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC0247 m1414() {
        return this.zzE;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m1415() {
        return (this.zzb & 8388608) != 0;
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final /* synthetic */ void m1416(String str) {
        this.zzd |= 131072;
        this.zzag = str;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final long m1417() {
        return this.zzaq;
    }

    /* renamed from: ˊˎ, reason: contains not printable characters */
    public final boolean m1418() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ˊـ, reason: contains not printable characters */
    public final /* synthetic */ void m1419(String str) {
        str.getClass();
        this.zzb |= 4194304;
        this.zzC = str;
    }

    /* renamed from: ˊᵎ, reason: contains not printable characters */
    public final boolean m1420() {
        return (this.zzb & 1024) != 0;
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final /* synthetic */ void m1421() {
        this.zzb &= -3;
        this.zzh = 0L;
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1422(C0512 c0512) {
        this.zzal = c0512;
        this.zzd |= 4194304;
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public final /* synthetic */ void m1423(boolean z) {
        this.zzd |= 262144;
        this.zzah = z;
    }

    /* renamed from: ˋ, reason: contains not printable characters */
    public final void m1424() {
        InterfaceC0247 interfaceC0247 = this.zzg;
        if (((AbstractC0265) interfaceC0247).f1765) {
            return;
        }
        int size = interfaceC0247.size();
        this.zzg = interfaceC0247.mo1195(size + size);
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final int m1425() {
        return this.zze;
    }

    /* renamed from: ˋˋ, reason: contains not printable characters */
    public final boolean m1426() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final /* synthetic */ void m1427() {
        this.zzd &= -8193;
        this.zzab = zzat.zzab;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final boolean m1428() {
        return (this.zzd & 134217728) != 0;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1429(String str) {
        str.getClass();
        this.zzb |= 65536;
        this.zzw = str;
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m1430(ArrayList arrayList) {
        RandomAccess randomAccess = this.zzR;
        if (!((AbstractC0265) randomAccess).f1765) {
            C0501 c0501 = (C0501) randomAccess;
            int i = c0501.f2266;
            this.zzR = c0501.mo1195(i + i);
        }
        AbstractC0514.m2018(arrayList, this.zzR);
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final /* synthetic */ void m1431(long j) {
        this.zzd |= 32;
        this.zzT = j;
    }

    /* renamed from: ˎˊ, reason: contains not printable characters */
    public final String m1432() {
        return this.zzp;
    }

    /* renamed from: ˎˏ, reason: contains not printable characters */
    public final boolean m1433() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final /* synthetic */ void m1434(C0476 c0476) {
        this.zzap = c0476;
        this.zzd |= 67108864;
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final String m1435() {
        return this.zzab;
    }

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public final /* synthetic */ void m1436(long j) {
        this.zzb |= 524288;
        this.zzz = j;
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1437(boolean z) {
        this.zzb |= 131072;
        this.zzx = z;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m1438() {
        return (this.zzb & 32768) != 0;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1439(C0308 c0308) {
        m1424();
        this.zzg.add(c0308);
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1440(int i) {
        this.zzd |= 1048576;
        this.zzaj = i;
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final String m1441() {
        return this.zzV;
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1442() {
        this.zzb &= -33;
        this.zzl = 0L;
    }

    /* renamed from: ˑʿ, reason: contains not printable characters */
    public final String m1443() {
        return this.zzr;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final /* synthetic */ void m1444(long j) {
        this.zzd |= 16;
        this.zzS = j;
    }

    /* renamed from: ˑˉ, reason: contains not printable characters */
    public final void m1445(ArrayList arrayList) {
        InterfaceC0247 interfaceC0247 = this.zzE;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzE = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(arrayList, this.zzE);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final boolean m1446() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final /* synthetic */ void m1447() {
        this.zzb |= 32768;
        this.zzv = 133005L;
    }

    /* renamed from: י, reason: contains not printable characters */
    public final long m1448() {
        return this.zzS;
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public final /* synthetic */ void m1449(String str) {
        str.getClass();
        this.zzb |= 8192;
        this.zzt = str;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final /* synthetic */ void m1450(String str) {
        str.getClass();
        this.zzb |= Integer.MIN_VALUE;
        this.zzM = str;
    }

    /* renamed from: יˑ, reason: contains not printable characters */
    public final /* synthetic */ void m1451(int i) {
        this.zzb |= 33554432;
        this.zzG = i;
    }

    /* renamed from: יי, reason: contains not printable characters */
    public final /* synthetic */ void m1452(String str) {
        this.zzb |= 16777216;
        this.zzF = str;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final long m1453() {
        return this.zzu;
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1454() {
        this.zzb &= -131073;
        this.zzx = false;
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final boolean m1455() {
        return (this.zzd & 32768) != 0;
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1456(String str) {
        str.getClass();
        this.zzd |= 524288;
        this.zzai = str;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m1457() {
        return (this.zzb & 131072) != 0;
    }

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final boolean m1458() {
        return this.zzah;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C0471 m1459() {
        C0471 c0471 = this.zzas;
        return c0471 == null ? C0471.m1906() : c0471;
    }

    /* renamed from: ـˑ, reason: contains not printable characters */
    public final /* synthetic */ void m1460() {
        this.zzb &= -2097153;
        this.zzB = zzat.zzB;
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final boolean m1461() {
        return (this.zzd & 2) != 0;
    }

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final int m1462() {
        return this.zzam;
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final /* synthetic */ void m1463(long j) {
        this.zzb |= 4;
        this.zzi = j;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean m1464() {
        return (this.zzb & 33554432) != 0;
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final /* synthetic */ void m1465(long j) {
        this.zzd |= 32768;
        this.zzae = j;
    }

    /* renamed from: ٴˑ, reason: contains not printable characters */
    public final long m1466() {
        return this.zzk;
    }

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final boolean m1467() {
        return (this.zzd & 16777216) != 0;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m1468() {
        return this.zzD;
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1469() {
        this.zzb |= 64;
        this.zzm = "android";
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final String m1470() {
        return this.zzag;
    }

    /* renamed from: ᐧˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1471(String str) {
        this.zzb |= 2097152;
        this.zzB = str;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final /* synthetic */ void m1472(int i, C0308 c0308) {
        m1424();
        this.zzg.set(i, c0308);
    }

    /* renamed from: ᐧⁱ, reason: contains not printable characters */
    public final List m1473() {
        return this.zzf;
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final boolean m1474() {
        return (this.zzd & 16) != 0;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final /* synthetic */ void m1475(int i) {
        m1372();
        this.zzf.remove(i);
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1476(int i) {
        m1424();
        this.zzg.remove(i);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean m1477() {
        return (this.zzb & 1048576) != 0;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final /* synthetic */ void m1478() {
        this.zzb |= 1;
        this.zze = 1;
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1479(long j) {
        this.zzb |= 16384;
        this.zzu = j;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String m1480() {
        return this.zzC;
    }

    /* renamed from: ᵎ, reason: contains not printable characters */
    public final boolean m1481() {
        return (this.zzb & 32) != 0;
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1482(String str) {
        str.getClass();
        this.zzb |= 128;
        this.zzn = str;
    }

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final boolean m1483() {
        return (this.zzd & 524288) != 0;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int m1484() {
        return this.zzG;
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void m1485() {
        this.zzf = C0370.f2028;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final String m1486() {
        return this.zzF;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final boolean m1487() {
        return (this.zzb & 536870912) != 0;
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final boolean m1488() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    /* renamed from: ᵔᴵ, reason: contains not printable characters */
    public final long m1489() {
        return this.zzj;
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1490(String str) {
        str.getClass();
        this.zzd |= 16384;
        this.zzad = str;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final String m1491() {
        return this.zzt;
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1492(long j) {
        this.zzd |= 134217728;
        this.zzaq = j;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1493(String str) {
        str.getClass();
        this.zzd |= 8192;
        this.zzab = str;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m1494() {
        return (this.zzb & 524288) != 0;
    }

    /* renamed from: ᵢי, reason: contains not printable characters */
    public final /* synthetic */ void m1495() {
        this.zzb |= 8388608;
        this.zzD = false;
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final /* synthetic */ void m1496(String str) {
        str.getClass();
        this.zzb |= 512;
        this.zzp = str;
    }

    /* renamed from: ᵢᵎ, reason: contains not printable characters */
    public final int m1497() {
        return this.zzf.size();
    }

    /* renamed from: ᵢﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1498() {
        this.zzb &= -268435457;
        this.zzJ = zzat.zzJ;
    }

    /* renamed from: ⁱʾ, reason: contains not printable characters */
    public final /* synthetic */ void m1499() {
        this.zzb &= -262145;
        this.zzy = zzat.zzy;
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final boolean m1500() {
        return (this.zzd & 131072) != 0;
    }

    /* renamed from: ⁱי, reason: contains not printable characters */
    public final boolean m1501() {
        return (this.zzd & 4194304) != 0;
    }

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public final C0350 m1502() {
        C0350 c0350 = this.zzan;
        return c0350 == null ? C0350.m1638() : c0350;
    }

    /* renamed from: ﹳʼ, reason: contains not printable characters */
    public final boolean m1503() {
        return (this.zzb & 16) != 0;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1504() {
        return (this.zzb & 16384) != 0;
    }

    /* renamed from: ﹳᴵ, reason: contains not printable characters */
    public final String m1505() {
        return this.zzm;
    }

    /* renamed from: ﹳᵎ, reason: contains not printable characters */
    public final int m1506() {
        return this.zzq;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1507(String str) {
        this.zzd |= 128;
        this.zzV = str;
    }

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public final int m1508() {
        return this.zzaj;
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1509() {
        this.zzb &= -17;
        this.zzk = 0L;
    }

    /* renamed from: ﹳﾞ, reason: contains not printable characters */
    public final String m1510() {
        return this.zzo;
    }

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final boolean m1511() {
        return (this.zzd & 8388608) != 0;
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final void m1512(Set set) {
        InterfaceC0247 interfaceC0247 = this.zzac;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzac = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(set, this.zzac);
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final boolean m1513() {
        return (this.zzd & 67108864) != 0;
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final /* synthetic */ void m1514(long j) {
        this.zzb |= 16;
        this.zzk = j;
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final /* synthetic */ void m1515(int i) {
        this.zzb |= 1024;
        this.zzq = i;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1516() {
        this.zzb &= Integer.MAX_VALUE;
        this.zzM = zzat.zzM;
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1517(boolean z) {
        this.zzd |= 65536;
        this.zzaf = z;
    }

    /* renamed from: ﾞי, reason: contains not printable characters */
    public final C0414 m1518(int i) {
        return (C0414) this.zzf.get(i);
    }
}
