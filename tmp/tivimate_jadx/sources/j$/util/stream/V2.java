package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public class V2 extends AbstractC5463c implements Consumer, Iterable {
    public Object[] e = new Object[1 << 4];
    public Object[][] f;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        long length;
        int i = this.b;
        Object[] objArr = this.e;
        if (i == objArr.length) {
            if (this.f == null) {
                Object[][] objArr2 = new Object[8];
                this.f = objArr2;
                this.d = new long[8];
                objArr2[0] = objArr;
            }
            int i2 = this.c;
            int i3 = i2 + 1;
            Object[][] objArr3 = this.f;
            if (i3 >= objArr3.length || objArr3[i3] == null) {
                if (i2 == 0) {
                    length = objArr.length;
                } else {
                    length = objArr3[i2].length + this.d[i2];
                }
                p(length + 1);
            }
            this.b = 0;
            int i4 = this.c + 1;
            this.c = i4;
            this.e = this.f[i4];
        }
        Object[] objArr4 = this.e;
        int i5 = this.b;
        this.b = i5 + 1;
        objArr4[i5] = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.a.c(this, consumer);
    }

    @Override // j$.util.stream.AbstractC5463c
    public final void clear() {
        Object[][] objArr = this.f;
        if (objArr != null) {
            this.e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f = null;
            this.d = null;
        } else {
            for (int i2 = 0; i2 < this.b; i2++) {
                this.e[i2] = null;
            }
        }
        this.b = 0;
        this.c = 0;
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.c; i++) {
            for (Object obj : this.f[i]) {
                consumer.n(obj);
            }
        }
        for (int i2 = 0; i2 < this.b; i2++) {
            consumer.n(this.e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.f0(spliterator);
    }

    public final void p(long j) {
        int i = this.c;
        long length = i == 0 ? this.e.length : this.d[i] + this.f[i].length;
        if (j > length) {
            if (this.f == null) {
                Object[][] objArr = new Object[8];
                this.f = objArr;
                this.d = new long[8];
                objArr[0] = this.e;
            }
            int i2 = i + 1;
            while (j > length) {
                Object[][] objArr2 = this.f;
                if (i2 >= objArr2.length) {
                    int length2 = objArr2.length * 2;
                    this.f = (Object[][]) Arrays.copyOf(objArr2, length2);
                    this.d = Arrays.copyOf(this.d, length2);
                }
                int i3 = this.a;
                if (i2 != 0 && i2 != 1) {
                    i3 = Math.min((i3 + i2) - 1, 30);
                }
                int i4 = 1 << i3;
                this.f[i2] = new Object[i4];
                long[] jArr = this.d;
                jArr[i2] = jArr[i2 - 1] + r5[r7].length;
                length += i4;
                i2++;
            }
        }
    }

    @Override // java.lang.Iterable
    public Spliterator spliterator() {
        return new M2(this, 0, this.c, 0, this.b);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new C5450p(8, arrayList));
        return "SpinedBuffer:" + arrayList.toString();
    }
}
