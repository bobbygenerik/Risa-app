package p047;

import android.net.Uri;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;
import p012.C0894;
import p022.C1047;
import p027.C1090;
import p305.AbstractC3712;
import p364.C4448;

/* renamed from: ʽˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1369 implements InterfaceC1362 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C1356 f5372;

    public C1369(C1356 c1356) {
        this.f5372 = c1356;
    }

    @Override // p047.InterfaceC1362
    /* renamed from: ʽ */
    public final boolean mo4030(Uri uri, C1090 c1090, boolean z) {
        C1368 c1368;
        C1356 c1356 = this.f5372;
        HashMap hashMap = c1356.f5215;
        if (c1356.f5224 == null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C1360 c1360 = c1356.f5218;
            String str = AbstractC3712.f14481;
            List list = c1360.f5248;
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                C1368 c13682 = (C1368) hashMap.get(((C1365) list.get(i2)).f5281);
                if (c13682 != null && elapsedRealtime < c13682.f5363) {
                    i++;
                }
            }
            C4448 c4448 = new C4448(1, 0, c1356.f5218.f5248.size(), i);
            c1356.f5212.getClass();
            C1047 m3142 = C0894.m3142(c4448, c1090);
            if (m3142 != null && m3142.f4127 == 2 && (c1368 = (C1368) hashMap.get(uri)) != null) {
                C1368.m4044(c1368, m3142.f4128);
            }
        }
        return false;
    }

    @Override // p047.InterfaceC1362
    /* renamed from: ﹳٴ */
    public final void mo4031() {
        this.f5372.f5221.remove(this);
    }
}
