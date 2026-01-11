package p055;

import android.os.Parcel;
import android.os.Parcelable;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1458 implements Comparable, Parcelable {
    public static final Parcelable.Creator<C1458> CREATOR = new C1496(2);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f5668;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f5669;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f5670;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
    }

    public C1458() {
        this.f5669 = -1;
        this.f5670 = -1;
        this.f5668 = -1;
    }

    public C1458(Parcel parcel) {
        this.f5669 = parcel.readInt();
        this.f5670 = parcel.readInt();
        this.f5668 = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C1458 c1458 = (C1458) obj;
        int i = this.f5669 - c1458.f5669;
        if (i != 0) {
            return i;
        }
        int i2 = this.f5670 - c1458.f5670;
        return i2 == 0 ? this.f5668 - c1458.f5668 : i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1458.class == obj.getClass()) {
            C1458 c1458 = (C1458) obj;
            if (this.f5669 == c1458.f5669 && this.f5670 == c1458.f5670 && this.f5668 == c1458.f5668) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f5669 * 31) + this.f5670) * 31) + this.f5668;
    }

    public final String toString() {
        return this.f5669 + "." + this.f5670 + "." + this.f5668;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5669);
        parcel.writeInt(this.f5670);
        parcel.writeInt(this.f5668);
    }
}
