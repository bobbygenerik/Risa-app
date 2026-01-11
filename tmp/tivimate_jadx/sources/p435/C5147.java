package p435;

import p430.AbstractC5100;

/* renamed from: ﹶˑ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5147 extends AbstractC5100 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C5149 f19420;

    public C5147(C5149 c5149) {
        this.f19420 = c5149;
    }

    @Override // p430.AbstractC5112, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        String group = this.f19420.f19424.group(i);
        return group == null ? "" : group;
    }

    @Override // p430.AbstractC5100, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // p430.AbstractC5100, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }

    @Override // p430.AbstractC5112
    /* renamed from: ﹳٴ */
    public final int mo5786() {
        return this.f19420.f19424.groupCount() + 1;
    }
}
