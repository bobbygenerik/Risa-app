package j$.util.concurrent;

/* loaded from: classes2.dex */
public final class g extends k {
    public final k[] e;

    public g(k[] kVarArr) {
        super(-1, null, null);
        this.e = kVarArr;
    }

    @Override // j$.util.concurrent.k
    public final k a(int i, Object obj) {
        k k;
        Object obj2;
        k[] kVarArr = this.e;
        loop0: while (true) {
            int length = kVarArr.length;
            if (length == 0 || (k = ConcurrentHashMap.k(kVarArr, (length - 1) & i)) == null) {
                return null;
            }
            do {
                int i2 = k.a;
                if (i2 != i || ((obj2 = k.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                    if (i2 >= 0) {
                        k = k.d;
                    } else {
                        if (!(k instanceof g)) {
                            return k.a(i, obj);
                        }
                        kVarArr = ((g) k).e;
                    }
                }
            } while (k != null);
            return null;
        }
        return k;
    }
}
