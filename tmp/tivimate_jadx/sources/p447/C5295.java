package p447;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.יⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5295 extends AbstractC4228 {
    public static final Parcelable.Creator<C5295> CREATOR = new ᵎﹶ(7);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f19969;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f19970;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Bundle f19971;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f19972;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public String f19973;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public byte[] f19974;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f19975;

    public C5295(long j, byte[] bArr, String str, Bundle bundle, int i, long j2, String str2) {
        this.f19970 = j;
        this.f19974 = bArr;
        this.f19969 = str;
        this.f19971 = bundle;
        this.f19975 = i;
        this.f19972 = j2;
        this.f19973 = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 8);
        parcel.writeLong(this.f19970);
        byte[] bArr = this.f19974;
        if (bArr != null) {
            int m50582 = AbstractC2026.m5058(parcel, 2);
            parcel.writeByteArray(bArr);
            AbstractC2026.m5047(parcel, m50582);
        }
        AbstractC2026.m5054(parcel, 3, this.f19969);
        AbstractC2026.m5043(parcel, 4, this.f19971);
        AbstractC2026.m5045(parcel, 5, 4);
        parcel.writeInt(this.f19975);
        AbstractC2026.m5045(parcel, 6, 8);
        parcel.writeLong(this.f19972);
        AbstractC2026.m5054(parcel, 7, this.f19973);
        AbstractC2026.m5047(parcel, m5058);
    }
}
