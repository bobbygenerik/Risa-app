package p029;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p013.C0907;
import p121.AbstractC2026;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p386.InterfaceC4615;

/* renamed from: ʼᴵ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1126 implements Iterator, InterfaceC2136, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Iterator f4391;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f4392;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC2136 f4393;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f4394;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f4392;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw m3550();
                }
                if (this.f4391.hasNext()) {
                    this.f4392 = 2;
                    return true;
                }
                this.f4391 = null;
            }
            this.f4392 = 5;
            InterfaceC2136 interfaceC2136 = this.f4393;
            this.f4393 = null;
            interfaceC2136.mo3549(C0907.f3832);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f4392;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i == 2) {
            this.f4392 = 1;
            return this.f4391.next();
        }
        if (i != 3) {
            throw m3550();
        }
        this.f4392 = 0;
        Object obj = this.f4394;
        this.f4394 = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo3549(Object obj) {
        AbstractC2026.m5044(obj);
        this.f4392 = 4;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final RuntimeException m3550() {
        int i = this.f4392;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f4392);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC2139 mo3551() {
        return C2134.f8324;
    }
}
