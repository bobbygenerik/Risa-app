package p391;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;
import p430.AbstractC5104;

/* renamed from: ⁱˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4640 implements ListIterator, InterfaceC4615 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f17327;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f17328;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AbstractC5104 f17329;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17326 = 1;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f17325 = -1;

    public C4640(C4634 c4634, int i) {
        int i2;
        this.f17329 = c4634;
        this.f17328 = i;
        i2 = ((AbstractList) c4634).modCount;
        this.f17327 = i2;
    }

    public C4640(C4639 c4639, int i) {
        int i2;
        this.f17329 = c4639;
        this.f17328 = i;
        i2 = ((AbstractList) c4639).modCount;
        this.f17327 = i2;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        int i2;
        switch (this.f17326) {
            case 0:
                m9205();
                C4639 c4639 = (C4639) this.f17329;
                int i3 = this.f17328;
                this.f17328 = i3 + 1;
                c4639.add(i3, obj);
                this.f17325 = -1;
                i = ((AbstractList) c4639).modCount;
                this.f17327 = i;
                return;
            default:
                m9204();
                C4634 c4634 = (C4634) this.f17329;
                int i4 = this.f17328;
                this.f17328 = i4 + 1;
                c4634.add(i4, obj);
                this.f17325 = -1;
                i2 = ((AbstractList) c4634).modCount;
                this.f17327 = i2;
                return;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f17326) {
            case 0:
                return this.f17328 < ((C4639) this.f17329).f17320;
            default:
                return this.f17328 < ((C4634) this.f17329).f17312;
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f17326) {
            case 0:
                return this.f17328 > 0;
            default:
                return this.f17328 > 0;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f17326) {
            case 0:
                m9205();
                int i = this.f17328;
                C4639 c4639 = (C4639) this.f17329;
                if (i >= c4639.f17320) {
                    throw new NoSuchElementException();
                }
                this.f17328 = i + 1;
                this.f17325 = i;
                return c4639.f17321[c4639.f17323 + i];
            default:
                m9204();
                int i2 = this.f17328;
                C4634 c4634 = (C4634) this.f17329;
                if (i2 >= c4634.f17312) {
                    throw new NoSuchElementException();
                }
                this.f17328 = i2 + 1;
                this.f17325 = i2;
                return c4634.f17311[i2];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f17326) {
            case 0:
                return this.f17328;
            default:
                return this.f17328;
        }
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f17326) {
            case 0:
                m9205();
                int i = this.f17328;
                if (i <= 0) {
                    throw new NoSuchElementException();
                }
                int i2 = i - 1;
                this.f17328 = i2;
                this.f17325 = i2;
                C4639 c4639 = (C4639) this.f17329;
                return c4639.f17321[c4639.f17323 + i2];
            default:
                m9204();
                int i3 = this.f17328;
                if (i3 <= 0) {
                    throw new NoSuchElementException();
                }
                int i4 = i3 - 1;
                this.f17328 = i4;
                this.f17325 = i4;
                return ((C4634) this.f17329).f17311[i4];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        int i;
        switch (this.f17326) {
            case 0:
                i = this.f17328;
                break;
            default:
                i = this.f17328;
                break;
        }
        return i - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i;
        int i2;
        switch (this.f17326) {
            case 0:
                C4639 c4639 = (C4639) this.f17329;
                m9205();
                int i3 = this.f17325;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                c4639.mo9192(i3);
                this.f17328 = this.f17325;
                this.f17325 = -1;
                i = ((AbstractList) c4639).modCount;
                this.f17327 = i;
                return;
            default:
                C4634 c4634 = (C4634) this.f17329;
                m9204();
                int i4 = this.f17325;
                if (i4 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                c4634.mo9192(i4);
                this.f17328 = this.f17325;
                this.f17325 = -1;
                i2 = ((AbstractList) c4634).modCount;
                this.f17327 = i2;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f17326) {
            case 0:
                m9205();
                int i = this.f17325;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((C4639) this.f17329).set(i, obj);
                return;
            default:
                m9204();
                int i2 = this.f17325;
                if (i2 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((C4634) this.f17329).set(i2, obj);
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m9204() {
        int i;
        i = ((AbstractList) ((C4634) this.f17329)).modCount;
        if (i != this.f17327) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m9205() {
        int i;
        i = ((AbstractList) ((C4639) this.f17329).f17324).modCount;
        if (i != this.f17327) {
            throw new ConcurrentModificationException();
        }
    }
}
