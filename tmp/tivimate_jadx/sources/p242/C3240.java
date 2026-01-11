package p242;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import ˋˋ.ᵎˊ;

/* renamed from: ˑﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3240 implements Parcelable {
    public static final Parcelable.Creator<C3240> CREATOR = new ᵎˊ(9);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f12367;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Intent f12368;

    public C3240(Intent intent, int i) {
        this.f12367 = i;
        this.f12368 = intent;
    }

    public C3240(Parcel parcel) {
        this.f12367 = parcel.readInt();
        this.f12368 = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i = this.f12367;
        sb.append(i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK");
        sb.append(", data=");
        sb.append(this.f12368);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f12367);
        Intent intent = this.f12368;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
