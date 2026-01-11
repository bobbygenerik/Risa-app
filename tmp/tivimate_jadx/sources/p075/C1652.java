package p075;

import android.view.accessibility.AccessibilityNodeInfo;
import com.bumptech.glide.ʽ;
import java.util.HashMap;
import p055.C1480;
import p262.C3433;
import p395.C4724;
import p395.InterfaceC4721;
import p395.InterfaceC4734;
import p462.InterfaceC5418;

/* renamed from: ʾﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1652 implements InterfaceC1653, InterfaceC4721, InterfaceC5418 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6698;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f6699;

    public C1652(int i) {
        this.f6698 = i;
        switch (i) {
            case 3:
                this.f6699 = new Object();
                return;
            default:
                return;
        }
    }

    public /* synthetic */ C1652(int i, Object obj) {
        this.f6698 = i;
        this.f6699 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C4724 m4510(ʽ r1) {
        new C3433();
        r1.getClass();
        new HashMap();
        throw null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C1652 m4511(boolean z, int i, int i2, int i3, int i4) {
        return new C1652(2, AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1652 m4512(Object obj) {
        if (obj != null) {
            return new C1652(4, obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // p343.InterfaceC4267
    public Object get() {
        switch (this.f6698) {
            case 0:
                return this.f6699;
            default:
                return this.f6699;
        }
    }

    @Override // p395.InterfaceC4721
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC4734 mo4513(C1480 c1480) {
        c1480.f5781.getClass();
        c1480.f5781.getClass();
        return InterfaceC4734.f17886;
    }
}
