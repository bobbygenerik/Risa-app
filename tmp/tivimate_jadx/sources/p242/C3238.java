package p242;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import ˋˋ.ᵎˊ;

/* renamed from: ˑﹳ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3238 implements Parcelable {
    public static final Parcelable.Creator<C3238> CREATOR = new ᵎˊ(10);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f12363;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final IntentSender f12364;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f12365;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Intent f12366;

    public C3238(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f12364 = intentSender;
        this.f12366 = intent;
        this.f12363 = i;
        this.f12365 = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f12364, i);
        parcel.writeParcelable(this.f12366, i);
        parcel.writeInt(this.f12363);
        parcel.writeInt(this.f12365);
    }
}
