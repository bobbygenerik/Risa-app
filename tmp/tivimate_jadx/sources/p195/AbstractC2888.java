package p195;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p307.AbstractC3740;

/* renamed from: ˎʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2888 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f10847 = 0;

    static {
        AbstractC2888.class.getClassLoader();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m6388(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6389(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail > 0) {
            throw new BadParcelableException(AbstractC3740.m7932(dataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Parcelable m6390(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
