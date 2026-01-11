package p055;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: ʽⁱ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1496 implements Parcelable.Creator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5941;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f5941) {
            case 0:
                return new C1486(parcel);
            case 1:
                return new C1461(parcel);
            default:
                return new C1458(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f5941) {
            case 0:
                return new C1486[i];
            case 1:
                return new C1461[i];
            default:
                return new C1458[i];
        }
    }
}
