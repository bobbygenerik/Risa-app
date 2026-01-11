package p062;

import android.app.Application;
import android.content.Context;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p145.C2405;
import p324.AbstractC3999;
import p336.C4213;
import ʼˋ.ﾞᴵ;

/* renamed from: ʾˈ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1581 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4213 f6179;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2405 f6180;

    public C1581(C2405 c2405, C4213 c4213, InterfaceC2139 interfaceC2139, C1554 c1554) {
        this.f6180 = c2405;
        this.f6179 = c4213;
        c2405.m5512();
        Context applicationContext = c2405.f9296.getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(c1554);
            AbstractC3999.m8168(AbstractC3999.m8179(interfaceC2139), null, new ﾞᴵ(this, c1554, (InterfaceC2136) null, 9), 3);
        } else {
            String str = "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.';
        }
    }
}
