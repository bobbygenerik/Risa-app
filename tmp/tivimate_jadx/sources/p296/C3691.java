package p296;

import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3691 extends AbstractC4228 {
    public static final Parcelable.Creator<C3691> CREATOR = new ᵎˊ(23);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f14432;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3679 f14433;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int[] f14434;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int[] f14435;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f14436;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f14437;

    public C3691(C3679 c3679, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.f14433 = c3679;
        this.f14436 = z;
        this.f14432 = z2;
        this.f14434 = iArr;
        this.f14437 = i;
        this.f14435 = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5050(parcel, 1, this.f14433, i);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f14436 ? 1 : 0);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f14432 ? 1 : 0);
        int[] iArr = this.f14434;
        if (iArr != null) {
            int m50582 = AbstractC2026.m5058(parcel, 4);
            parcel.writeIntArray(iArr);
            AbstractC2026.m5047(parcel, m50582);
        }
        AbstractC2026.m5045(parcel, 5, 4);
        parcel.writeInt(this.f14437);
        int[] iArr2 = this.f14435;
        if (iArr2 != null) {
            int m50583 = AbstractC2026.m5058(parcel, 6);
            parcel.writeIntArray(iArr2);
            AbstractC2026.m5047(parcel, m50583);
        }
        AbstractC2026.m5047(parcel, m5058);
    }
}
