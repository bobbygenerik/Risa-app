package p404;

import java.util.Iterator;
import java.util.List;
import p146.C2411;

/* renamed from: ﹳʽ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4783 implements Iterable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ List f18026;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ List f18027;

    public C4783(List list, List list2) {
        this.f18026 = list;
        this.f18027 = list2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2411(this.f18026.iterator(), this.f18027.iterator());
    }
}
