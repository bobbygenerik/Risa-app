package p039;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import p323.AbstractC3985;

/* renamed from: ʽʽ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1292 extends AbstractC3985 {
    public static final Parcelable.Creator<C1292> CREATOR = new C1288(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public SparseArray f4987;

    public C1292(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.f4987 = new SparseArray(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f4987.append(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SparseArray sparseArray = this.f4987;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.f4987.keyAt(i2);
            parcelableArr[i2] = (Parcelable) this.f4987.valueAt(i2);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
