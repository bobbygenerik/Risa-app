package p039;

import android.os.Parcel;
import android.os.Parcelable;
import p044.C1326;
import p129.C2188;
import p137.C2276;
import p179.C2729;
import p223.C3056;
import p229.C3092;
import p283.C3565;
import p323.AbstractC3985;
import p357.C4346;
import p442.C5197;

/* renamed from: ʽʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1288 implements Parcelable.ClassLoaderCreator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4984;

    public /* synthetic */ C1288(int i) {
        this.f4984 = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4984) {
            case 0:
                return new C1292(parcel, null);
            case 1:
                return new C1326(parcel, null);
            case 2:
                return new C2188(parcel, null);
            case 3:
                return new C2276(parcel, null);
            case 4:
                return new C2729(parcel, null);
            case 5:
                return new C3092(parcel, null);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C3565(parcel, null);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                if (parcel.readParcelable(null) == null) {
                    return AbstractC3985.f15354;
                }
                throw new IllegalStateException("superState must be null");
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return new C4346(parcel, null);
            default:
                return new C5197(parcel, null);
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f4984) {
            case 0:
                return new C1292(parcel, classLoader);
            case 1:
                return new C1326(parcel, classLoader);
            case 2:
                return new C2188(parcel, classLoader);
            case 3:
                return new C2276(parcel, classLoader);
            case 4:
                return new C2729(parcel, classLoader);
            case 5:
                return new C3092(parcel, classLoader);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C3565(parcel, classLoader);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                if (parcel.readParcelable(classLoader) == null) {
                    return AbstractC3985.f15354;
                }
                throw new IllegalStateException("superState must be null");
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return new C4346(parcel, classLoader);
            default:
                return new C5197(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f4984) {
            case 0:
                return new C1292[i];
            case 1:
                return new C1326[i];
            case 2:
                return new C2188[i];
            case 3:
                return new C2276[i];
            case 4:
                return new C2729[i];
            case 5:
                return new C3092[i];
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C3565[i];
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return new AbstractC3985[i];
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return new C4346[i];
            default:
                return new C5197[i];
        }
    }
}
