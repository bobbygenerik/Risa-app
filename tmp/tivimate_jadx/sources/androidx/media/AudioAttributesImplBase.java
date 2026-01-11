package androidx.media;

import java.util.Arrays;
import p223.C3056;
import p307.AbstractC3740;

/* loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f1133 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f1132 = 0;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f1130 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f1131 = -1;

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f1132 == audioAttributesImplBase.f1132) {
            int i2 = this.f1130;
            int i3 = audioAttributesImplBase.f1130;
            int i4 = audioAttributesImplBase.f1131;
            if (i4 == -1) {
                int i5 = audioAttributesImplBase.f1133;
                int i6 = AudioAttributesCompat.f1126;
                if ((i3 & 1) != 1) {
                    i = 4;
                    if ((i3 & 4) != 4) {
                        switch (i5) {
                            case 2:
                                i = 0;
                                break;
                            case 3:
                                i = 8;
                                break;
                            case 4:
                                break;
                            case 5:
                            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            case 9:
                            case 10:
                                i = 5;
                                break;
                            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                i = 2;
                                break;
                            case 11:
                                i = 10;
                                break;
                            case 12:
                            default:
                                i = 3;
                                break;
                            case 13:
                                i = 1;
                                break;
                        }
                    } else {
                        i = 6;
                    }
                } else {
                    i = 7;
                }
            } else {
                i = i4;
            }
            if (i == 6) {
                i3 |= 4;
            } else if (i == 7) {
                i3 |= 1;
            }
            if (i2 == (i3 & 273) && this.f1133 == audioAttributesImplBase.f1133 && this.f1131 == i4) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1132), Integer.valueOf(this.f1130), Integer.valueOf(this.f1133), Integer.valueOf(this.f1131)});
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f1131 != -1) {
            sb.append(" stream=");
            sb.append(this.f1131);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.f1133;
        int i2 = AudioAttributesCompat.f1126;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = AbstractC3740.m7932(i, "unknown usage ");
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.f1132);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f1130).toUpperCase());
        return sb.toString();
    }
}
