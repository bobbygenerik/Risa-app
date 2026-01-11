package p447;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5222 extends AbstractC4228 {
    public static final Parcelable.Creator<C5222> CREATOR = new ᵎﹶ(3);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Bundle f19645;

    public C5222(Bundle bundle) {
        this.f19645 = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5043(parcel, 1, this.f19645);
        AbstractC2026.m5047(parcel, m5058);
    }
}
