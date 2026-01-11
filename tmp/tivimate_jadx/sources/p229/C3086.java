package p229;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import ˋˋ.ᵎˊ;

/* renamed from: ˑʼ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3086 implements Parcelable {
    public static final Parcelable.Creator<C3086> CREATOR = new ᵎˊ(7);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C3135[] f11764;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ArrayList f11765;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f11766;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ArrayList f11767;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ArrayList f11768;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ArrayList f11769;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ArrayList f11770;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public String f11771;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f11765);
        parcel.writeStringList(this.f11770);
        parcel.writeTypedArray(this.f11764, i);
        parcel.writeInt(this.f11766);
        parcel.writeString(this.f11771);
        parcel.writeStringList(this.f11768);
        parcel.writeTypedList(this.f11769);
        parcel.writeTypedList(this.f11767);
    }
}
