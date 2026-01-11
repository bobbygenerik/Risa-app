package p447;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˎʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5272 extends AbstractC4228 {
    public static final Parcelable.Creator<C5272> CREATOR = new ᵎﹶ(6);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f19903;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f19904;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f19905;

    public C5272(String str, long j, int i) {
        this.f19904 = str;
        this.f19905 = j;
        this.f19903 = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5054(parcel, 1, this.f19904);
        AbstractC2026.m5045(parcel, 2, 8);
        parcel.writeLong(this.f19905);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f19903);
        AbstractC2026.m5047(parcel, m5058);
    }
}
