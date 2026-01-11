package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;
import p223.C3056;
import p267.AbstractC3465;
import p267.C3464;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(AbstractC3465 abstractC3465) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f317 = abstractC3465.m7382(iconCompat.f317, 1);
        byte[] bArr = iconCompat.f310;
        if (abstractC3465.mo7373(2)) {
            Parcel parcel = ((C3464) abstractC3465).f13611;
            int readInt = parcel.readInt();
            if (readInt < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[readInt];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f310 = bArr;
        iconCompat.f312 = abstractC3465.m7379(iconCompat.f312, 3);
        iconCompat.f313 = abstractC3465.m7382(iconCompat.f313, 4);
        iconCompat.f318 = abstractC3465.m7382(iconCompat.f318, 5);
        iconCompat.f314 = (ColorStateList) abstractC3465.m7379(iconCompat.f314, 6);
        String str = iconCompat.f309;
        if (abstractC3465.mo7373(7)) {
            str = ((C3464) abstractC3465).f13611.readString();
        }
        iconCompat.f309 = str;
        String str2 = iconCompat.f311;
        if (abstractC3465.mo7373(8)) {
            str2 = ((C3464) abstractC3465).f13611.readString();
        }
        iconCompat.f311 = str2;
        iconCompat.f315 = PorterDuff.Mode.valueOf(iconCompat.f309);
        switch (iconCompat.f317) {
            case -1:
                Parcelable parcelable = iconCompat.f312;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f316 = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f312;
                if (parcelable2 != null) {
                    iconCompat.f316 = parcelable2;
                    return iconCompat;
                }
                byte[] bArr3 = iconCompat.f310;
                iconCompat.f316 = bArr3;
                iconCompat.f317 = 3;
                iconCompat.f313 = 0;
                iconCompat.f318 = bArr3.length;
                return iconCompat;
            case 2:
            case 4:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                String str3 = new String(iconCompat.f310, Charset.forName("UTF-16"));
                iconCompat.f316 = str3;
                if (iconCompat.f317 == 2 && iconCompat.f311 == null) {
                    iconCompat.f311 = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f316 = iconCompat.f310;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, AbstractC3465 abstractC3465) {
        abstractC3465.getClass();
        iconCompat.f309 = iconCompat.f315.name();
        switch (iconCompat.f317) {
            case -1:
                iconCompat.f312 = (Parcelable) iconCompat.f316;
                break;
            case 1:
            case 5:
                iconCompat.f312 = (Parcelable) iconCompat.f316;
                break;
            case 2:
                iconCompat.f310 = ((String) iconCompat.f316).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f310 = (byte[]) iconCompat.f316;
                break;
            case 4:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                iconCompat.f310 = iconCompat.f316.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f317;
        if (-1 != i) {
            abstractC3465.m7376(i, 1);
        }
        byte[] bArr = iconCompat.f310;
        if (bArr != null) {
            abstractC3465.mo7372(2);
            Parcel parcel = ((C3464) abstractC3465).f13611;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f312;
        if (parcelable != null) {
            abstractC3465.mo7372(3);
            ((C3464) abstractC3465).f13611.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.f313;
        if (i2 != 0) {
            abstractC3465.m7376(i2, 4);
        }
        int i3 = iconCompat.f318;
        if (i3 != 0) {
            abstractC3465.m7376(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f314;
        if (colorStateList != null) {
            abstractC3465.mo7372(6);
            ((C3464) abstractC3465).f13611.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f309;
        if (str != null) {
            abstractC3465.mo7372(7);
            ((C3464) abstractC3465).f13611.writeString(str);
        }
        String str2 = iconCompat.f311;
        if (str2 != null) {
            abstractC3465.mo7372(8);
            ((C3464) abstractC3465).f13611.writeString(str2);
        }
    }
}
