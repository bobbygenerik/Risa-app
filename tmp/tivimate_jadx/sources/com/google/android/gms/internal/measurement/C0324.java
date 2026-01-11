package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.google.android.gms.internal.measurement.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0324 implements Parcelable.Creator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1969;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f1969) {
            case 0:
                int i = ˈˆ.ﾞᴵ.ʿ(parcel);
                Bundle bundle = null;
                String str = null;
                boolean z = false;
                long j = 0;
                long j2 = 0;
                while (parcel.dataPosition() < i) {
                    int readInt = parcel.readInt();
                    char c = (char) readInt;
                    if (c == 1) {
                        j = ˈˆ.ﾞᴵ.ᵔٴ(parcel, readInt);
                    } else if (c == 2) {
                        j2 = ˈˆ.ﾞᴵ.ᵔٴ(parcel, readInt);
                    } else if (c == 3) {
                        z = ˈˆ.ﾞᴵ.ᵔי(parcel, readInt);
                    } else if (c == 7) {
                        bundle = ˈˆ.ﾞᴵ.ᵔᵢ(parcel, readInt);
                    } else if (c != '\b') {
                        ˈˆ.ﾞᴵ.ˊˋ(parcel, readInt);
                    } else {
                        str = ˈˆ.ﾞᴵ.ﾞʻ(parcel, readInt);
                    }
                }
                ˈˆ.ﾞᴵ.ˉˆ(parcel, i);
                return new C0492(j, j2, z, bundle, str);
            default:
                int i2 = ˈˆ.ﾞᴵ.ʿ(parcel);
                String str2 = null;
                int i3 = 0;
                Intent intent = null;
                while (parcel.dataPosition() < i2) {
                    int readInt2 = parcel.readInt();
                    char c2 = (char) readInt2;
                    if (c2 == 1) {
                        i3 = ˈˆ.ﾞᴵ.ˆﾞ(parcel, readInt2);
                    } else if (c2 == 2) {
                        str2 = ˈˆ.ﾞᴵ.ﾞʻ(parcel, readInt2);
                    } else if (c2 != 3) {
                        ˈˆ.ﾞᴵ.ˊˋ(parcel, readInt2);
                    } else {
                        intent = (Intent) ˈˆ.ﾞᴵ.ˆʾ(parcel, readInt2, Intent.CREATOR);
                    }
                }
                ˈˆ.ﾞᴵ.ˉˆ(parcel, i2);
                return new C0441(i3, str2, intent);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.f1969) {
            case 0:
                return new C0492[i];
            default:
                return new C0441[i];
        }
    }
}
