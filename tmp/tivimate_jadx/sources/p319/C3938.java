package p319;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.ⁱˊ;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳٴ.ﹳٴ;

/* renamed from: ᴵˈ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3938 extends AbstractC4228 {
    public static final Parcelable.Creator<C3938> CREATOR = new ٴﹶ(2);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f15229;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f15230;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f15231;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f15232;

    public C3938(int i, int i2, String str, boolean z) {
        this.f15230 = z;
        this.f15232 = str;
        this.f15229 = ⁱˊ.ʾᵎ(i) - 1;
        this.f15231 = ﹳٴ.ʿ(i2) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f15230 ? 1 : 0);
        AbstractC2026.m5054(parcel, 2, this.f15232);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f15229);
        AbstractC2026.m5045(parcel, 4, 4);
        parcel.writeInt(this.f15231);
        AbstractC2026.m5047(parcel, m5058);
    }
}
