package p296;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3690 extends AbstractC4228 {
    public static final Parcelable.Creator<C3690> CREATOR = new ᵎˊ(19);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f14430;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public List f14431;

    public C3690(int i, List list) {
        this.f14430 = i;
        this.f14431 = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f14430);
        AbstractC2026.m5039(parcel, 2, this.f14431);
        AbstractC2026.m5047(parcel, m5058);
    }
}
