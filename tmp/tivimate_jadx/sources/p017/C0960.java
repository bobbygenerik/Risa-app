package p017;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p010.AbstractC0844;
import p095.InterfaceC1883;

/* renamed from: ʼʻ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0960 extends AbstractC0983 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f3909;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f3910;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Iterator f3911;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f3912;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f3913;

    public C0960() {
        this.f3910 = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0960(Iterator it, InterfaceC1883 interfaceC1883) {
        this();
        this.f3909 = 0;
        this.f3911 = it;
        this.f3913 = interfaceC1883;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0960(C0980 c0980) {
        this();
        this.f3909 = 1;
        this.f3913 = c0980;
        this.f3911 = c0980.f3951.iterator();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object next;
        int i = this.f3910;
        if (i == 4) {
            throw new IllegalStateException();
        }
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 == 0) {
            return true;
        }
        if (m3018 == 2) {
            return false;
        }
        this.f3910 = 4;
        switch (this.f3909) {
            case 0:
                do {
                    Iterator it = this.f3911;
                    if (!it.hasNext()) {
                        this.f3910 = 3;
                        next = null;
                        break;
                    } else {
                        next = it.next();
                    }
                } while (!((InterfaceC1883) this.f3913).apply(next));
            default:
                do {
                    Iterator it2 = this.f3911;
                    if (!it2.hasNext()) {
                        this.f3910 = 3;
                        next = null;
                        break;
                    } else {
                        next = it2.next();
                    }
                } while (!((C0980) this.f3913).f3952.contains(next));
        }
        this.f3912 = next;
        if (this.f3910 == 3) {
            return false;
        }
        this.f3910 = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f3910 = 2;
        Object obj = this.f3912;
        this.f3912 = null;
        return obj;
    }
}
