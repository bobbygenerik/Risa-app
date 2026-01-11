package p229;

import com.bumptech.glide.ˈ;
import java.util.concurrent.atomic.AtomicReference;
import p036.C1271;
import p242.InterfaceC3239;
import ˊⁱ.ˑﹳ;

/* renamed from: ˑʼ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3083 extends AbstractC3080 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ˈ f11714;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3239 f11715;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ AbstractComponentCallbacksC3123 f11716;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f11717;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ ˑﹳ f11718;

    public C3083(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, ˑﹳ r2, AtomicReference atomicReference, ˈ r4, InterfaceC3239 interfaceC3239) {
        this.f11716 = abstractComponentCallbacksC3123;
        this.f11718 = r2;
        this.f11717 = atomicReference;
        this.f11714 = r4;
        this.f11715 = interfaceC3239;
    }

    @Override // p229.AbstractC3080
    /* renamed from: ﹳٴ */
    public final void mo6633() {
        StringBuilder sb = new StringBuilder("fragment_");
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11716;
        sb.append(abstractComponentCallbacksC3123.f11929);
        sb.append("_rq#");
        sb.append(abstractComponentCallbacksC3123.f11916.getAndIncrement());
        this.f11717.set(((C1271) this.f11718.apply((Object) null)).m3862(sb.toString(), abstractComponentCallbacksC3123, this.f11714, this.f11715));
    }
}
