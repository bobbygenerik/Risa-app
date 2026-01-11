package p319;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p035.AbstractC1220;
import p121.AbstractC2026;
import p223.C3056;
import p229.C3125;
import p296.AbstractC3659;
import p339.AbstractC4228;

/* renamed from: ᴵˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3936 extends AbstractC4228 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final PendingIntent f15223;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15224;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f15225;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15226;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C3936 f15222 = new C3936(0);
    public static final Parcelable.Creator<C3936> CREATOR = new ٴﹶ(0);

    public C3936(int i) {
        this(1, i, null, null);
    }

    public C3936(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f15224 = i;
        this.f15226 = i2;
        this.f15223 = pendingIntent;
        this.f15225 = str;
    }

    public C3936(int i, PendingIntent pendingIntent) {
        this(1, i, pendingIntent, null);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m8110(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "RESOLUTION_REQUIRED";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "NETWORK_ERROR";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    default:
                        return AbstractC1220.m3773(i, "UNKNOWN_ERROR_CODE(", ")");
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3936)) {
            return false;
        }
        C3936 c3936 = (C3936) obj;
        return this.f15226 == c3936.f15226 && AbstractC3659.m7679(this.f15223, c3936.f15223) && AbstractC3659.m7679(this.f15225, c3936.f15225);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f15226), this.f15223, this.f15225});
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        c3125.m6847(m8110(this.f15226), "statusCode");
        c3125.m6847(this.f15223, "resolution");
        c3125.m6847(this.f15225, "message");
        return c3125.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f15224);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f15226);
        AbstractC2026.m5050(parcel, 3, this.f15223, i);
        AbstractC2026.m5054(parcel, 4, this.f15225);
        AbstractC2026.m5047(parcel, m5058);
    }
}
