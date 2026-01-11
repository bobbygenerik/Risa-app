package p229;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;

/* renamed from: ˑʼ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3092 implements Parcelable {
    public static final Parcelable.Creator<C3092> CREATOR = new C1288(5);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Bundle f11781;

    public C3092(Bundle bundle) {
        this.f11781 = bundle;
    }

    public C3092(Parcel parcel, ClassLoader classLoader) {
        Bundle readBundle = parcel.readBundle();
        this.f11781 = readBundle;
        if (classLoader == null || readBundle == null) {
            return;
        }
        readBundle.setClassLoader(classLoader);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f11781);
    }
}
