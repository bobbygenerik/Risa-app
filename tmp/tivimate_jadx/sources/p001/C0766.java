package p001;

import j$.util.Objects;
import java.util.Arrays;
import p055.AbstractC1464;
import p055.C1459;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1465;

/* renamed from: ʻʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0766 implements InterfaceC1465 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1495 f3153;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1495 f3154;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f3155;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f3156;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] f3157;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f3158;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f3159;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f3160;

    static {
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("application/id3");
        f3153 = new C1495(c1490);
        C1490 c14902 = new C1490();
        c14902.f5861 = AbstractC1464.m4251("application/x-scte35");
        f3154 = new C1495(c14902);
    }

    public C0766(String str, String str2, long j, long j2, byte[] bArr) {
        this.f3159 = str;
        this.f3158 = str2;
        this.f3155 = j;
        this.f3156 = j2;
        this.f3157 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0766.class == obj.getClass()) {
            C0766 c0766 = (C0766) obj;
            if (this.f3155 == c0766.f3155 && this.f3156 == c0766.f3156 && Objects.equals(this.f3159, c0766.f3159) && Objects.equals(this.f3158, c0766.f3158) && Arrays.equals(this.f3157, c0766.f3157)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f3160 == 0) {
            String str = this.f3159;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f3158;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j = this.f3155;
            int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.f3156;
            this.f3160 = Arrays.hashCode(this.f3157) + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.f3160;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.f3159 + ", id=" + this.f3156 + ", durationMs=" + this.f3155 + ", value=" + this.f3158;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] mo2790() {
        if (mo2791() != null) {
            return this.f3157;
        }
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 mo2791() {
        String str = this.f3159;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    c = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    c = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return f3154;
            case 1:
            case 2:
                return f3153;
            default:
                return null;
        }
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
