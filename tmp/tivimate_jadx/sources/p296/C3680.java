package p296;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p319.C3926;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3680 extends AbstractC4228 {
    public static final Parcelable.Creator<C3680> CREATOR = new ᵎˊ(22);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f14402;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Bundle f14403;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3691 f14404;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C3926[] f14405;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5043(parcel, 1, this.f14403);
        AbstractC2026.m5057(parcel, 2, this.f14405, i);
        int i2 = this.f14402;
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(i2);
        AbstractC2026.m5050(parcel, 4, this.f14404, i);
        AbstractC2026.m5047(parcel, m5058);
    }
}
