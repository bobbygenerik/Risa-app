package p447;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5250 extends AbstractC4228 {
    public static final Parcelable.Creator<C5250> CREATOR = new ᵎﹶ(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f19791;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f19792;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f19793;

    public C5250(int i, long j, long j2) {
        this.f19792 = j;
        this.f19793 = i;
        this.f19791 = j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 8);
        parcel.writeLong(this.f19792);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f19793);
        AbstractC2026.m5045(parcel, 3, 8);
        parcel.writeLong(this.f19791);
        AbstractC2026.m5047(parcel, m5058);
    }
}
