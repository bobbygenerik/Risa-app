package p200;

import java.util.List;
import p055.C1495;

/* renamed from: ˎˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2910 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f10981;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final long f10982;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10983;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1495[] f10984;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f10985;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final String f10986;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final long[] f10987;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10988;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f10989;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f10990;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final List f10991;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f10992;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f10993;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f10994;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final String f10995;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f10996;

    public C2910(String str, String str2, int i, String str3, long j, String str4, int i2, int i3, int i4, int i5, String str5, C1495[] c1495Arr, List list, long[] jArr, long j2) {
        this.f10995 = str;
        this.f10986 = str2;
        this.f10994 = i;
        this.f10993 = str3;
        this.f10983 = j;
        this.f10985 = str4;
        this.f10988 = i2;
        this.f10996 = i3;
        this.f10990 = i4;
        this.f10992 = i5;
        this.f10981 = str5;
        this.f10984 = c1495Arr;
        this.f10991 = list;
        this.f10987 = jArr;
        this.f10982 = j2;
        this.f10989 = list.size();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m6437(int i) {
        if (i == this.f10989 - 1) {
            return this.f10982;
        }
        long[] jArr = this.f10987;
        return jArr[i + 1] - jArr[i];
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2910 m6438(C1495[] c1495Arr) {
        return new C2910(this.f10995, this.f10986, this.f10994, this.f10993, this.f10983, this.f10985, this.f10988, this.f10996, this.f10990, this.f10992, this.f10981, c1495Arr, this.f10991, this.f10987, this.f10982);
    }
}
