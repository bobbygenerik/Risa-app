package j$.util;

/* loaded from: classes2.dex */
public final class Spliterators {
    public static final o0 a = new Object();
    public static final m0 b = new Object();
    public static final n0 c = new Object();
    public static final l0 d = new Object();

    public static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new q0((java.util.Collection) Objects.requireNonNull(collection), i);
    }
}
