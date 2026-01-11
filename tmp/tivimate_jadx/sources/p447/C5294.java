package p447;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5294 extends AbstractC4228 implements Iterable {
    public static final Parcelable.Creator<C5294> CREATOR = new ᵎﹶ(4);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Bundle f19968;

    public C5294(Bundle bundle) {
        this.f19968 = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C5346(this);
    }

    public final String toString() {
        return this.f19968.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5043(parcel, 2, m10488());
        AbstractC2026.m5047(parcel, m5058);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m10487() {
        return this.f19968.getString("currency");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Bundle m10488() {
        return new Bundle(this.f19968);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Double m10489() {
        return Double.valueOf(this.f19968.getDouble("value"));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m10490(String str) {
        return this.f19968.get(str);
    }
}
