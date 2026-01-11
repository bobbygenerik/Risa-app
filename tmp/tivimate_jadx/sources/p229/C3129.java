package p229;

import android.view.ViewGroup;
import p013.C0907;
import p152.AbstractC2452;
import p152.C2448;
import p329.InterfaceC4104;

/* renamed from: ˑʼ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3129 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f11956;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f11957;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3095 f11958;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f11959;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3129(C3095 c3095, ViewGroup viewGroup, Object obj, C2448 c2448) {
        super(0);
        this.f11958 = c3095;
        this.f11956 = viewGroup;
        this.f11957 = obj;
        this.f11959 = c2448;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        if (C3085.m6654(2)) {
        }
        C3095 c3095 = this.f11958;
        AbstractC3104 abstractC3104 = c3095.f11801;
        ViewGroup viewGroup = this.f11956;
        Object obj = this.f11957;
        Object mo6730 = abstractC3104.mo6730(viewGroup, obj);
        c3095.f11798 = mo6730;
        if (mo6730 == null) {
            if (C3085.m6654(2)) {
            }
            c3095.f11799 = true;
        } else {
            this.f11959.f9409 = new C3094(c3095, obj, viewGroup);
            if (C3085.m6654(2)) {
                String str = "Started executing operations from " + c3095.f11790 + " to " + c3095.f11793;
            }
        }
        return C0907.f3832;
    }
}
