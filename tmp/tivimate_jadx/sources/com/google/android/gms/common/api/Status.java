package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import p121.AbstractC2026;
import p223.C3056;
import p229.C3125;
import p296.AbstractC3659;
import p307.AbstractC3740;
import p319.C3936;
import p339.AbstractC4228;
import ᴵˈ.ٴﹶ;

/* loaded from: classes.dex */
public final class Status extends AbstractC4228 implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new ٴﹶ(9);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final PendingIntent f1720;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1721;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3936 f1722;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f1723;

    public Status(int i, String str, PendingIntent pendingIntent, C3936 c3936) {
        this.f1721 = i;
        this.f1723 = str;
        this.f1720 = pendingIntent;
        this.f1722 = c3936;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f1721 == status.f1721 && AbstractC3659.m7679(this.f1723, status.f1723) && AbstractC3659.m7679(this.f1720, status.f1720) && AbstractC3659.m7679(this.f1722, status.f1722);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1721), this.f1723, this.f1720, this.f1722});
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        String str = this.f1723;
        if (str == null) {
            int i = this.f1721;
            switch (i) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    str = AbstractC3740.m7932(i, "unknown status code: ");
                    break;
                case 2:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str = "SERVICE_DISABLED";
                    break;
                case 4:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str = "INVALID_ACCOUNT";
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    str = "NETWORK_ERROR";
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    str = "INTERNAL_ERROR";
                    break;
                case 10:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
                case 19:
                    str = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    str = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    str = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    str = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        c3125.m6847(str, "statusCode");
        c3125.m6847(this.f1720, "resolution");
        return c3125.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f1721);
        AbstractC2026.m5054(parcel, 2, this.f1723);
        AbstractC2026.m5050(parcel, 3, this.f1720, i);
        AbstractC2026.m5050(parcel, 4, this.f1722, i);
        AbstractC2026.m5047(parcel, m5058);
    }
}
