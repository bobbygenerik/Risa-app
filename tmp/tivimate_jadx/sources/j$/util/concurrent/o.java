package j$.util.concurrent;

/* loaded from: classes2.dex */
public class o {
    public k[] a;
    public k b = null;
    public n c;
    public n d;
    public int e;
    public int f;
    public int g;
    public final int h;

    public o(k[] kVarArr, int i, int i2, int i3) {
        this.a = kVarArr;
        this.h = i;
        this.e = i2;
        this.f = i2;
        this.g = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final k a() {
        k[] kVarArr;
        int length;
        int i;
        n nVar;
        n nVar2;
        k kVar = this.b;
        if (kVar != null) {
            kVar = kVar.d;
        }
        while (kVar == null) {
            if (this.f >= this.g || (kVarArr = this.a) == null || (length = kVarArr.length) <= (i = this.e) || i < 0) {
                this.b = null;
                return null;
            }
            k k = ConcurrentHashMap.k(kVarArr, i);
            if (k == null || k.a >= 0) {
                kVar = k;
            } else if (k instanceof g) {
                this.a = ((g) k).e;
                n nVar3 = this.d;
                if (nVar3 != null) {
                    this.d = nVar3.d;
                    nVar2 = nVar3;
                } else {
                    nVar2 = new Object();
                }
                nVar2.c = kVarArr;
                nVar2.a = length;
                nVar2.b = i;
                nVar2.d = this.c;
                this.c = nVar2;
                kVar = null;
            } else {
                kVar = k instanceof p ? ((p) k).f : null;
            }
            if (this.c != null) {
                while (true) {
                    nVar = this.c;
                    if (nVar == null) {
                        break;
                    }
                    int i2 = this.e;
                    int i3 = nVar.a;
                    int i4 = i2 + i3;
                    this.e = i4;
                    if (i4 < length) {
                        break;
                    }
                    this.e = nVar.b;
                    this.a = nVar.c;
                    nVar.c = null;
                    n nVar4 = nVar.d;
                    nVar.d = this.d;
                    this.c = nVar4;
                    this.d = nVar;
                    length = i3;
                }
                if (nVar == null) {
                    int i5 = this.e + this.h;
                    this.e = i5;
                    if (i5 >= length) {
                        int i6 = this.f + 1;
                        this.f = i6;
                        this.e = i6;
                    }
                }
            } else {
                int i7 = i + this.h;
                this.e = i7;
                if (i7 >= length) {
                    int i8 = this.f + 1;
                    this.f = i8;
                    this.e = i8;
                }
            }
        }
        this.b = kVar;
        return kVar;
    }
}
