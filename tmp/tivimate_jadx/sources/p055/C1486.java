package p055;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1486 implements Comparator, Parcelable {
    public static final Parcelable.Creator<C1486> CREATOR = new C1496(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f5839;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1461[] f5840;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f5841;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f5842;

    public C1486(Parcel parcel) {
        this.f5839 = parcel.readString();
        C1461[] c1461Arr = (C1461[]) parcel.createTypedArray(C1461.CREATOR);
        String str = AbstractC3712.f14481;
        this.f5840 = c1461Arr;
        this.f5841 = c1461Arr.length;
    }

    public C1486(String str, ArrayList arrayList) {
        this(str, false, (C1461[]) arrayList.toArray(new C1461[0]));
    }

    public C1486(String str, boolean z, C1461... c1461Arr) {
        this.f5839 = str;
        c1461Arr = z ? (C1461[]) c1461Arr.clone() : c1461Arr;
        this.f5840 = c1461Arr;
        this.f5841 = c1461Arr.length;
        Arrays.sort(c1461Arr, this);
    }

    public C1486(C1461... c1461Arr) {
        this(null, true, c1461Arr);
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C1461 c1461 = (C1461) obj;
        C1461 c14612 = (C1461) obj2;
        UUID uuid = AbstractC1489.f5847;
        return uuid.equals(c1461.f5701) ? uuid.equals(c14612.f5701) ? 0 : 1 : c1461.f5701.compareTo(c14612.f5701);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1486.class == obj.getClass()) {
            C1486 c1486 = (C1486) obj;
            if (Objects.equals(this.f5839, c1486.f5839) && Arrays.equals(this.f5840, c1486.f5840)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f5842 == 0) {
            String str = this.f5839;
            this.f5842 = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f5840);
        }
        return this.f5842;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5839);
        parcel.writeTypedArray(this.f5840, 0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1486 m4294(String str) {
        return Objects.equals(this.f5839, str) ? this : new C1486(str, false, this.f5840);
    }
}
