package p447;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p296.AbstractC3659;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5287 extends AbstractC4228 {
    public static final Parcelable.Creator<C5287> CREATOR = new ᵎﹶ(2);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C5241 f19944;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public String f19945;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f19946;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f19947;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public String f19948;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f19949;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C5279 f19950;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public String f19951;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f19952;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C5279 f19953;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C5279 f19954;

    public C5287(String str, String str2, C5241 c5241, long j, boolean z, String str3, C5279 c5279, long j2, C5279 c52792, long j3, C5279 c52793) {
        this.f19945 = str;
        this.f19951 = str2;
        this.f19944 = c5241;
        this.f19946 = j;
        this.f19952 = z;
        this.f19948 = str3;
        this.f19950 = c5279;
        this.f19947 = j2;
        this.f19954 = c52792;
        this.f19949 = j3;
        this.f19953 = c52793;
    }

    public C5287(C5287 c5287) {
        AbstractC3659.m7687(c5287);
        this.f19945 = c5287.f19945;
        this.f19951 = c5287.f19951;
        this.f19944 = c5287.f19944;
        this.f19946 = c5287.f19946;
        this.f19952 = c5287.f19952;
        this.f19948 = c5287.f19948;
        this.f19950 = c5287.f19950;
        this.f19947 = c5287.f19947;
        this.f19954 = c5287.f19954;
        this.f19949 = c5287.f19949;
        this.f19953 = c5287.f19953;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5054(parcel, 2, this.f19945);
        AbstractC2026.m5054(parcel, 3, this.f19951);
        AbstractC2026.m5050(parcel, 4, this.f19944, i);
        long j = this.f19946;
        AbstractC2026.m5045(parcel, 5, 8);
        parcel.writeLong(j);
        boolean z = this.f19952;
        AbstractC2026.m5045(parcel, 6, 4);
        parcel.writeInt(z ? 1 : 0);
        AbstractC2026.m5054(parcel, 7, this.f19948);
        AbstractC2026.m5050(parcel, 8, this.f19950, i);
        long j2 = this.f19947;
        AbstractC2026.m5045(parcel, 9, 8);
        parcel.writeLong(j2);
        AbstractC2026.m5050(parcel, 10, this.f19954, i);
        AbstractC2026.m5045(parcel, 11, 8);
        parcel.writeLong(this.f19949);
        AbstractC2026.m5050(parcel, 12, this.f19953, i);
        AbstractC2026.m5047(parcel, m5058);
    }
}
