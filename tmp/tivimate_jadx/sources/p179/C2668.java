package p179;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: ˋˋ.ʻᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2668 implements Parcelable {
    public static final Parcelable.Creator<C2668> CREATOR = new ᵎˊ(2);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f10133;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f10134;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int[] f10135;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f10136;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int[] f10137;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f10138;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ArrayList f10139;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f10140;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f10141;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f10142;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10134);
        parcel.writeInt(this.f10140);
        parcel.writeInt(this.f10133);
        if (this.f10133 > 0) {
            parcel.writeIntArray(this.f10135);
        }
        parcel.writeInt(this.f10141);
        if (this.f10141 > 0) {
            parcel.writeIntArray(this.f10137);
        }
        parcel.writeInt(this.f10136 ? 1 : 0);
        parcel.writeInt(this.f10142 ? 1 : 0);
        parcel.writeInt(this.f10138 ? 1 : 0);
        parcel.writeList(this.f10139);
    }
}
