package p206;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ˏʻ;
import p305.AbstractC3731;

/* renamed from: ˎᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2927 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11082;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f11083;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f11084;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11085;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f11086;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f11087;

    public /* synthetic */ C2927(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f11086 = i;
        this.f11085 = i2;
        this.f11082 = i3;
        this.f11083 = i4;
        this.f11084 = i5;
        this.f11087 = i6;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2927 m6457(String str) {
        char c;
        AbstractC3731.m7849(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < split.length; i6++) {
            String str2 = ˏʻ.ˈⁱ(split[i6].trim());
            str2.getClass();
            switch (str2.hashCode()) {
                case 100571:
                    if (str2.equals("end")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3556653:
                    if (str2.equals("text")) {
                        c = 1;
                        break;
                    }
                    break;
                case 102749521:
                    if (str2.equals("layer")) {
                        c = 2;
                        break;
                    }
                    break;
                case 109757538:
                    if (str2.equals("start")) {
                        c = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (str2.equals("style")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    i3 = i6;
                    break;
                case 1:
                    i5 = i6;
                    break;
                case 2:
                    i = i6;
                    break;
                case 3:
                    i2 = i6;
                    break;
                case 4:
                    i4 = i6;
                    break;
            }
        }
        if (i2 == -1 || i3 == -1 || i5 == -1) {
            return null;
        }
        return new C2927(i, i2, i3, i4, i5, split.length);
    }
}
