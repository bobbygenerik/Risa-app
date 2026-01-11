package p447;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ⁱʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5340 extends AbstractC4228 {
    public static final Parcelable.Creator<C5340> CREATOR = new ᵎﹶ(9);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f20320;

    public C5340(ArrayList arrayList) {
        this.f20320 = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5039(parcel, 1, this.f20320);
        AbstractC2026.m5047(parcel, m5058);
    }
}
