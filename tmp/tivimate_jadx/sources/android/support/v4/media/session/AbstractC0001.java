package android.support.v4.media.session;

import android.app.AlertDialog;
import android.content.ContentProviderClient;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.lifecycle.AbstractC0196;
import androidx.lifecycle.InterfaceC0189;
import com.google.android.gms.internal.measurement.AbstractC0465;
import com.google.android.gms.internal.measurement.C0260;
import com.google.android.gms.internal.measurement.C0371;
import com.google.android.gms.internal.measurement.C0467;
import com.google.android.gms.internal.measurement.InterfaceC0309;
import com.google.android.gms.internal.measurement.InterfaceC0457;
import com.google.android.gms.internal.play_billing.C0606;
import com.google.android.gms.internal.play_billing.י;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import p026.AbstractC1078;
import p035.AbstractC1220;
import p140.AbstractC2376;
import p152.InterfaceC2449;
import p223.C3056;
import p301.InterfaceC3702;
import ˉᵎ.ⁱˊ;

/* renamed from: android.support.v4.media.session.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0001 {
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static /* synthetic */ String m1(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "null" : "WRITE_AHEAD_LOGGING" : "TRUNCATE" : "AUTOMATIC";
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m2(int i, int i2, int i3, int i4, int i5) {
        return Math.max(((i * i2) / i3) + i4, i5);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static /* synthetic */ void m3(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m4(int i) {
        if (i == 90) {
            return 81;
        }
        if (i == 91) {
            return 82;
        }
        if (i == 93) {
            return 84;
        }
        if (i == 94) {
            return 85;
        }
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 7;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 8;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            case 13:
                return 14;
            case 14:
                return 15;
            case 15:
                return 16;
            case 16:
                return 17;
            case 17:
                return 18;
            case 18:
                return 19;
            case 19:
                return 20;
            case 20:
                return 21;
            case 21:
                return 22;
            case 22:
                return 23;
            case 23:
                return 24;
            case 24:
                return 25;
            case 25:
                return 26;
            case 26:
                return 27;
            case 27:
                return 28;
            case 28:
                return 29;
            case 29:
                return 30;
            case 30:
                return 31;
            case 31:
                return 32;
            case 32:
                return 33;
            case 33:
                return 34;
            case 34:
                return 35;
            case 35:
                return 36;
            case 36:
                return 37;
            case 37:
                return 38;
            case 38:
                return 39;
            case 39:
                return 40;
            case 40:
                return 41;
            case 41:
                return 42;
            case 42:
                return 43;
            case 43:
                return 44;
            case 44:
                return 45;
            case 45:
                return 46;
            case 46:
                return 47;
            case 47:
                return 48;
            case 48:
                return 49;
            case 49:
                return 50;
            case 50:
                return 51;
            case 51:
                return 52;
            case 52:
                return 53;
            case 53:
                return 54;
            case 54:
                return 55;
            case 55:
                return 56;
            case 56:
                return 57;
            case 57:
                return 58;
            case 58:
                return 59;
            case 59:
                return 60;
            case 60:
                return 61;
            case 61:
                return 62;
            case 62:
                return 63;
            case 63:
                return 64;
            case 64:
                return 65;
            case 65:
                return 66;
            case 66:
                return 67;
            case 67:
                return 68;
            case 68:
                return 69;
            case 69:
                return 70;
            case 70:
                return 71;
            case 71:
                return 72;
            case 72:
                return 73;
            case 73:
                return 74;
            case 74:
                return 75;
            case 75:
                return 76;
            case 76:
                return 77;
            case 77:
                return 78;
            case 78:
                return 79;
            case 79:
                return 80;
            default:
                switch (i) {
                    case 96:
                        return 87;
                    case 97:
                        return 88;
                    case 98:
                        return 89;
                    case 99:
                        return 90;
                    case 100:
                        return 91;
                    case 101:
                        return 92;
                    case 102:
                        return 83;
                    case 103:
                        return 86;
                    case 104:
                        return 93;
                    case 105:
                        return 94;
                    case 106:
                        return 95;
                    case 107:
                        return 96;
                    case 108:
                        return 97;
                    case 109:
                        return 98;
                    case 110:
                        return 99;
                    case 111:
                        return 100;
                    case 112:
                        return 101;
                    case 113:
                        return 102;
                    case 114:
                        return 103;
                    case 115:
                        return 104;
                    case 116:
                        return 105;
                    case 117:
                        return 106;
                    case 118:
                        return 107;
                    case 119:
                        return 108;
                    case 120:
                        return 109;
                    case 121:
                        return 110;
                    case 122:
                        return 111;
                    case 123:
                        return 112;
                    case 124:
                        return 113;
                    case 125:
                        return 114;
                    case 126:
                        return 117;
                    case 127:
                        return 119;
                    case 128:
                        return 120;
                    case 129:
                        return 121;
                    case 130:
                        return 122;
                    case 131:
                        return 123;
                    case 132:
                        return 124;
                    case 133:
                        return 125;
                    case 134:
                        return 126;
                    case 135:
                        return 127;
                    case 136:
                        return 128;
                    case 137:
                        return 129;
                    case 138:
                        return 130;
                    case 139:
                        return 131;
                    case 140:
                        return 132;
                    case 141:
                        return 133;
                    case 142:
                        return 134;
                    case 143:
                        return 135;
                    case 144:
                        return 136;
                    case 145:
                        return 115;
                    case 146:
                        return 116;
                    case 147:
                        return 118;
                    case 148:
                        return 137;
                    case 149:
                        return 138;
                    default:
                        return 0;
                }
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static /* synthetic */ String m5(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "MEMORY_CACHE" : "RESOURCE_DISK_CACHE" : "DATA_DISK_CACHE" : "REMOTE" : "LOCAL";
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static AlertDialog m6(AlertDialog.Builder builder, int i, DialogInterface.OnClickListener onClickListener, int i2, DialogInterface.OnClickListener onClickListener2) {
        AlertDialog create = builder.setPositiveButton(i, onClickListener).setNegativeButton(i2, onClickListener2).create();
        י.ˈٴ(create);
        return create;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static /* synthetic */ int m7(int i) {
        switch (i) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 5;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 6;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            case 13:
                return 12;
            case 14:
                return 13;
            case 15:
                return 14;
            case 16:
                return 15;
            case 17:
                return 16;
            case 18:
                return 17;
            case 19:
                return 18;
            case 20:
                return 19;
            case 21:
                return 20;
            case 22:
                return 21;
            case 23:
                return 22;
            case 24:
                return 23;
            case 25:
                return 24;
            case 26:
                return 25;
            case 27:
                return 26;
            case 28:
                return 27;
            case 29:
                return 28;
            case 30:
                return 29;
            case 31:
                return 30;
            case 32:
                return 31;
            case 33:
                return 32;
            case 34:
                return 33;
            case 35:
                return 34;
            case 36:
                return 35;
            case 37:
                return 36;
            case 38:
                return 37;
            case 39:
                return 38;
            case 40:
                return 39;
            case 41:
                return 40;
            case 42:
                return 41;
            case 43:
                return 42;
            case 44:
                return 43;
            case 45:
                return 44;
            case 46:
                return 45;
            case 47:
                return 46;
            case 48:
                return 47;
            case 49:
                return 48;
            case 50:
                return 49;
            case 51:
                return 50;
            case 52:
                return 51;
            case 53:
                return 52;
            case 54:
                return 53;
            case 55:
                return 54;
            case 56:
                return 55;
            case 57:
                return 56;
            case 58:
                return 57;
            case 59:
                return 58;
            case 60:
                return 59;
            case 61:
                return 60;
            case 62:
                return 61;
            case 63:
                return 62;
            case 64:
                return 63;
            case 65:
                return 64;
            case 66:
                return 65;
            case 67:
                return 66;
            case 68:
                return 67;
            case 69:
                return 68;
            case 70:
                return 69;
            case 71:
                return 70;
            case 72:
                return 71;
            case 73:
                return 72;
            case 74:
                return 73;
            case 75:
                return 74;
            case 76:
                return 75;
            case 77:
                return 76;
            case 78:
                return 77;
            case 79:
                return 78;
            case 80:
                return 79;
            case 81:
                return 90;
            case 82:
                return 91;
            case 83:
                return 102;
            case 84:
                return 93;
            case 85:
                return 94;
            case 86:
                return 103;
            case 87:
                return 96;
            case 88:
                return 97;
            case 89:
                return 98;
            case 90:
                return 99;
            case 91:
                return 100;
            case 92:
                return 101;
            case 93:
                return 104;
            case 94:
                return 105;
            case 95:
                return 106;
            case 96:
                return 107;
            case 97:
                return 108;
            case 98:
                return 109;
            case 99:
                return 110;
            case 100:
                return 111;
            case 101:
                return 112;
            case 102:
                return 113;
            case 103:
                return 114;
            case 104:
                return 115;
            case 105:
                return 116;
            case 106:
                return 117;
            case 107:
                return 118;
            case 108:
                return 119;
            case 109:
                return 120;
            case 110:
                return 121;
            case 111:
                return 122;
            case 112:
                return 123;
            case 113:
                return 124;
            case 114:
                return 125;
            case 115:
                return 145;
            case 116:
                return 146;
            case 117:
                return 126;
            case 118:
                return 147;
            case 119:
                return 127;
            case 120:
                return 128;
            case 121:
                return 129;
            case 122:
                return 130;
            case 123:
                return 131;
            case 124:
                return 132;
            case 125:
                return 133;
            case 126:
                return 134;
            case 127:
                return 135;
            case 128:
                return 136;
            case 129:
                return 137;
            case 130:
                return 138;
            case 131:
                return 139;
            case 132:
                return 140;
            case 133:
                return 141;
            case 134:
                return 142;
            case 135:
                return 143;
            case 136:
                return 144;
            case 137:
                return 148;
            case 138:
                return 149;
            default:
                throw null;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static String m8(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ void m9(Cursor cursor) {
        if (cursor instanceof AutoCloseable) {
            cursor.close();
            return;
        }
        if (cursor instanceof ExecutorService) {
            AbstractC2376.m5452((ExecutorService) cursor);
            return;
        }
        if (cursor instanceof TypedArray) {
            ((TypedArray) cursor).recycle();
            return;
        }
        if (cursor instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) cursor).release();
            return;
        }
        if (cursor instanceof MediaDrm) {
            ((MediaDrm) cursor).release();
        } else if (cursor instanceof DrmManagerClient) {
            ((DrmManagerClient) cursor).release();
        } else {
            if (!(cursor instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) cursor).release();
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static /* synthetic */ String m10(int i) {
        switch (i) {
            case 1:
                return "CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN";
            case 2:
                return "CLIENT_UPLOAD_ELIGIBLE";
            case 3:
                return "MEASUREMENT_SERVICE_NOT_ENABLED";
            case 4:
                return "ANDROID_TOO_OLD";
            case 5:
                return "NON_PLAY_MODE";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "SDK_TOO_OLD";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "MISSING_JOB_SCHEDULER";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "NOT_ENABLED_IN_MANIFEST";
            case 9:
                return "CLIENT_FLAG_OFF";
            case 10:
                return "SERVICE_FLAG_OFF";
            case 11:
                return "PINNED_TO_SERVICE_UPLOAD";
            case 12:
                return "MISSING_SGTM_SERVER_URL";
            default:
                throw null;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static /* synthetic */ int m11(int i) {
        switch (i) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 5;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 6;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 7;
            case 9:
                return 8;
            case 10:
                return 20;
            case 11:
                return 21;
            case 12:
                return 22;
            default:
                throw null;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static int m12(int i, int i2, int i3, int i4) {
        return C0606.m2199(i) + i2 + i3 + i4;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static InterfaceC0457 m13(InterfaceC0309 interfaceC0309, C0467 c0467, ˏˆ.ﹳٴ r4, ArrayList arrayList) {
        String str = c0467.f2225;
        if (interfaceC0309.mo1355(str)) {
            InterfaceC0457 mo1354 = interfaceC0309.mo1354(str);
            if (mo1354 instanceof AbstractC0465) {
                return ((AbstractC0465) mo1354).mo1199(r4, arrayList);
            }
            throw new IllegalArgumentException(AbstractC1220.m3791(str, " is not a function"));
        }
        if (!"hasOwnProperty".equals(str)) {
            throw new IllegalArgumentException(AbstractC1220.m3771("Object has no function ", str));
        }
        ⁱˊ.ˑٴ(1, "hasOwnProperty", arrayList);
        return interfaceC0309.mo1355(((C0371) r4.ʽʽ).m1698(r4, (InterfaceC0457) arrayList.get(0)).mo1558()) ? InterfaceC0457.f2215 : InterfaceC0457.f2211;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static String m14(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m15(int i, int i2, int i3) {
        return C0260.m1207(i) + i2 + i3;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static StringBuilder m16(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m17(int i, int i2, int i3, int i4) {
        return ((i + i2) * i3) + i4;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static int m18(int i, int i2, int i3) {
        return C0606.m2199(i) + i2 + i3;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m19(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 7;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 8;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 9;
            default:
                switch (i) {
                    case 20:
                        return 10;
                    case 21:
                        return 11;
                    case 22:
                        return 12;
                    default:
                        return 0;
                }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static AbstractC0196 m20(InterfaceC0189 interfaceC0189, InterfaceC3702 interfaceC3702, AbstractC1078 abstractC1078) {
        return interfaceC0189.mo718(((InterfaceC2449) interfaceC3702).mo5571(), abstractC1078);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static int m21(int i, int i2, int i3, int i4) {
        return C0260.m1207(i) + i2 + i3 + i4;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static String m22(Class cls, String str) {
        return str + cls;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static float m23(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }
}
