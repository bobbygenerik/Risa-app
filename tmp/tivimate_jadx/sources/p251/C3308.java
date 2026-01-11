package p251;

import p001.C0765;
import p035.AbstractC1220;
import p055.C1495;
import p094.C1860;
import p249.C3300;
import p454.C5375;
import ˈˋ.ʾˊ;

/* renamed from: יˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3308 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3308 f12734 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m7119(C1495 c1495) {
        String str = c1495.f5930;
        return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʾˊ m7120(C1495 c1495) {
        String str = c1495.f5930;
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1354451219:
                    if (str.equals("application/vnd.dvb.ait")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1348231605:
                    if (str.equals("application/x-icy")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1248341703:
                    if (str.equals("application/id3")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1154383568:
                    if (str.equals("application/x-emsg")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1652648887:
                    if (str.equals("application/x-scte35")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new C0765(1);
                case 1:
                    return new C5375();
                case 2:
                    return new C1860(null);
                case 3:
                    return new C0765(0);
                case 4:
                    return new C3300();
            }
        }
        throw new IllegalArgumentException(AbstractC1220.m3771("Attempted to create decoder for unsupported MIME type: ", str));
    }
}
