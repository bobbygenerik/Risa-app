package p152;

import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;
import p430.AbstractC5100;

/* renamed from: ˊʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2457 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f9413;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9414;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f9415;

    public /* synthetic */ C2457(int i, Object obj) {
        this.f9414 = i;
        this.f9413 = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f9414) {
            case 0:
                return this.f9415 < ((Object[]) this.f9413).length;
            case 1:
                return this.f9415 < ((ViewGroup) this.f9413).getChildCount();
            case 2:
                return this.f9415 < ((LongSparseArray) this.f9413).size();
            default:
                return this.f9415 < ((AbstractC5100) this.f9413).mo5786();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f9414) {
            case 0:
                try {
                    Object[] objArr = (Object[]) this.f9413;
                    int i = this.f9415;
                    this.f9415 = i + 1;
                    return objArr[i];
                } catch (ArrayIndexOutOfBoundsException e) {
                    this.f9415--;
                    throw new NoSuchElementException(e.getMessage());
                }
            case 1:
                ViewGroup viewGroup = (ViewGroup) this.f9413;
                int i2 = this.f9415;
                this.f9415 = i2 + 1;
                View childAt = viewGroup.getChildAt(i2);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            case 2:
                LongSparseArray longSparseArray = (LongSparseArray) this.f9413;
                int i3 = this.f9415;
                this.f9415 = i3 + 1;
                return Long.valueOf(longSparseArray.keyAt(i3));
            default:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                AbstractC5100 abstractC5100 = (AbstractC5100) this.f9413;
                int i4 = this.f9415;
                this.f9415 = i4 + 1;
                return abstractC5100.get(i4);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f9414) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                ViewGroup viewGroup = (ViewGroup) this.f9413;
                int i = this.f9415 - 1;
                this.f9415 = i;
                viewGroup.removeViewAt(i);
                return;
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }
}
