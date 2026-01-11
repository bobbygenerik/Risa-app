package p062;

import android.content.Context;
import p075.InterfaceC1653;
import p343.InterfaceC4267;
import p462.InterfaceC5418;

/* renamed from: ʾˈ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1577 implements InterfaceC5418, InterfaceC1653 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6166;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4267 f6167;

    public /* synthetic */ C1577(InterfaceC4267 interfaceC4267, int i) {
        this.f6166 = i;
        this.f6167 = interfaceC4267;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        switch (this.f6166) {
            case 0:
                return new C1568((C1588) this.f6167.get());
            default:
                String packageName = ((Context) this.f6167.get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }
}
