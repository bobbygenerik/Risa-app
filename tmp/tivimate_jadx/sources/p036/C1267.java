package p036;

import android.window.BackEvent;
import p035.AbstractC1220;

/* renamed from: ʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1267 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f4920;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f4921;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f4922;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f4923;

    public C1267(BackEvent backEvent) {
        C1268 c1268 = C1268.f4924;
        float m3855 = c1268.m3855(backEvent);
        float m3856 = c1268.m3856(backEvent);
        float m3857 = c1268.m3857(backEvent);
        int m3854 = c1268.m3854(backEvent);
        this.f4923 = m3855;
        this.f4922 = m3856;
        this.f4920 = m3857;
        this.f4921 = m3854;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackEventCompat{touchX=");
        sb.append(this.f4923);
        sb.append(", touchY=");
        sb.append(this.f4922);
        sb.append(", progress=");
        sb.append(this.f4920);
        sb.append(", swipeEdge=");
        return AbstractC1220.m3784(sb, this.f4921, '}');
    }
}
