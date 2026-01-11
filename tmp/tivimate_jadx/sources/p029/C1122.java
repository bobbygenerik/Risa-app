package p029;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import p152.C2457;
import p329.InterfaceC4106;
import p386.InterfaceC4615;
import p430.AbstractC5099;

/* renamed from: ʼᴵ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1122 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f4380;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4381;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Iterator f4382;

    public C1122(C1125 c1125) {
        this.f4381 = 0;
        this.f4380 = c1125;
        this.f4382 = ((InterfaceC1130) c1125.f4389).iterator();
    }

    public C1122(C2457 c2457) {
        this.f4381 = 1;
        this.f4380 = new ArrayList();
        this.f4382 = c2457;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f4381) {
            case 0:
                return this.f4382.hasNext();
            default:
                return this.f4382.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f4381) {
            case 0:
                return ((InterfaceC4106) ((C1125) this.f4380).f4388).mo3844(this.f4382.next());
            default:
                Object next = this.f4382.next();
                ArrayList arrayList = (ArrayList) this.f4380;
                View view = (View) next;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                C2457 c2457 = viewGroup != null ? new C2457(1, viewGroup) : null;
                if (c2457 == null || !c2457.hasNext()) {
                    while (!this.f4382.hasNext() && !arrayList.isEmpty()) {
                        this.f4382 = (Iterator) AbstractC5099.m10028(arrayList);
                        AbstractC5099.m10019(arrayList);
                    }
                } else {
                    arrayList.add(this.f4382);
                    this.f4382 = c2457;
                }
                return next;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f4381) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }
}
