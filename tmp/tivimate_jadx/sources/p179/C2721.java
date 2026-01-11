package p179;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* renamed from: ˋˋ.ᐧˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2721 implements Parcelable {
    public static final Parcelable.Creator<C2721> CREATOR = new ᵎˊ(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int[] f10357;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f10358;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f10359;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f10360;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f10358 + ", mGapDir=" + this.f10360 + ", mHasUnwantedGapAfter=" + this.f10359 + ", mGapPerSpan=" + Arrays.toString(this.f10357) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10358);
        parcel.writeInt(this.f10360);
        parcel.writeInt(this.f10359 ? 1 : 0);
        int[] iArr = this.f10357;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f10357);
        }
    }
}
