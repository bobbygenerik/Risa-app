package p296;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3661 extends AbstractC4228 {
    public static final Parcelable.Creator<C3661> CREATOR = new ᵎˊ(20);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f14327;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f14328;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long f14329;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f14330;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final String f14331;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final String f14332;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f14333;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f14334;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f14335;

    public C3661(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.f14328 = i;
        this.f14333 = i2;
        this.f14327 = i3;
        this.f14329 = j;
        this.f14334 = j2;
        this.f14331 = str;
        this.f14332 = str2;
        this.f14330 = i4;
        this.f14335 = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f14328);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f14333);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f14327);
        AbstractC2026.m5045(parcel, 4, 8);
        parcel.writeLong(this.f14329);
        AbstractC2026.m5045(parcel, 5, 8);
        parcel.writeLong(this.f14334);
        AbstractC2026.m5054(parcel, 6, this.f14331);
        AbstractC2026.m5054(parcel, 7, this.f14332);
        AbstractC2026.m5045(parcel, 8, 4);
        parcel.writeInt(this.f14330);
        AbstractC2026.m5045(parcel, 9, 4);
        parcel.writeInt(this.f14335);
        AbstractC2026.m5047(parcel, m5058);
    }
}
