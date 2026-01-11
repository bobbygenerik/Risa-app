package j$.util.stream;

import j$.util.Spliterator;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class U2 extends AbstractC5463c implements Iterable {
    public Object e;
    public Object[] f;

    public U2() {
        this.e = newArray(16);
    }

    public U2(int i) {
        super(i);
        this.e = newArray(1 << this.a);
    }

    public Object b() {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) count);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.AbstractC5463c
    public final void clear() {
        Object[] objArr = this.f;
        if (objArr != null) {
            this.e = objArr[0];
            this.f = null;
            this.d = null;
        }
        this.b = 0;
        this.c = 0;
    }

    public void f(int i, Object obj) {
        long j = i;
        long count = count() + j;
        if (count > q(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, obj, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object obj2 = this.f[i2];
            System.arraycopy(obj2, 0, obj, i, q(obj2));
            i += q(this.f[i2]);
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, obj, i, i3);
        }
    }

    public void g(Object obj) {
        for (int i = 0; i < this.c; i++) {
            Object obj2 = this.f[i];
            p(obj2, 0, q(obj2), obj);
        }
        p(this.e, 0, this.b, obj);
    }

    public abstract Object newArray(int i);

    public abstract void p(Object obj, int i, int i2, Object obj2);

    public abstract int q(Object obj);

    public final int r(long j) {
        if (this.c == 0) {
            if (j < this.b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.c; i++) {
            if (j < this.d[i] + q(this.f[i])) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    public final void s(long j) {
        long q;
        int i = this.c;
        if (i == 0) {
            q = q(this.e);
        } else {
            q = q(this.f[i]) + this.d[i];
        }
        if (j > q) {
            if (this.f == null) {
                Object[] t = t();
                this.f = t;
                this.d = new long[8];
                t[0] = this.e;
            }
            int i2 = this.c + 1;
            while (j > q) {
                Object[] objArr = this.f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f = Arrays.copyOf(objArr, length);
                    this.d = Arrays.copyOf(this.d, length);
                }
                int i3 = this.a;
                if (i2 != 0 && i2 != 1) {
                    i3 = Math.min((i3 + i2) - 1, 30);
                }
                int i4 = 1 << i3;
                this.f[i2] = newArray(i4);
                long[] jArr = this.d;
                jArr[i2] = jArr[i2 - 1] + q(this.f[r6]);
                q += i4;
                i2++;
            }
        }
    }

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public abstract Object[] t();

    public final void u() {
        long q;
        if (this.b == q(this.e)) {
            if (this.f == null) {
                Object[] t = t();
                this.f = t;
                this.d = new long[8];
                t[0] = this.e;
            }
            int i = this.c;
            int i2 = i + 1;
            Object[] objArr = this.f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    q = q(this.e);
                } else {
                    q = q(objArr[i]) + this.d[i];
                }
                s(q + 1);
            }
            this.b = 0;
            int i3 = this.c + 1;
            this.c = i3;
            this.e = this.f[i3];
        }
    }
}
