package p296;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3679 extends AbstractC4228 {
    public static final Parcelable.Creator<C3679> CREATOR = new ᵎˊ(21);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f14397;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f14398;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f14399;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f14400;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f14401;

    public C3679(int i, boolean z, boolean z2, int i2, int i3) {
        this.f14398 = i;
        this.f14400 = z;
        this.f14397 = z2;
        this.f14399 = i2;
        this.f14401 = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f14398);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f14400 ? 1 : 0);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f14397 ? 1 : 0);
        AbstractC2026.m5045(parcel, 4, 4);
        parcel.writeInt(this.f14399);
        AbstractC2026.m5045(parcel, 5, 4);
        parcel.writeInt(this.f14401);
        AbstractC2026.m5047(parcel, m5058);
    }
}
