package p230;

import java.util.ArrayList;

/* renamed from: ˑʿ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3184 extends AbstractC3166 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f12145;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f12146;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C3157 f12147;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f12148;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f12149;

    public C3184(C3157 c3157, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f12147 = c3157;
        this.f12149 = obj;
        this.f12148 = arrayList;
        this.f12145 = obj2;
        this.f12146 = arrayList2;
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ʽ */
    public final void mo6946(AbstractC3143 abstractC3143) {
        C3157 c3157 = this.f12147;
        Object obj = this.f12149;
        if (obj != null) {
            c3157.m6953(obj, this.f12148, null);
        }
        Object obj2 = this.f12145;
        if (obj2 != null) {
            c3157.m6953(obj2, this.f12146, null);
        }
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public final void mo6942(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
    }
}
