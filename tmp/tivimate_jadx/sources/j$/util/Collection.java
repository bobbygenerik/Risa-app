package j$.util;

import j$.util.stream.AbstractC5453a;
import j$.util.stream.Stream;
import j$.util.stream.Y2;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public interface Collection<E> {

    /* renamed from: j$.util.Collection$-CC, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
        public static Stream $default$parallelStream(java.util.Collection collection) {
            Spliterator c0 = j$.com.android.tools.r8.a.c0(collection);
            Objects.requireNonNull(c0);
            return new AbstractC5453a(c0, Y2.m(c0), true);
        }

        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            Objects.requireNonNull(predicate);
            Iterator<E> it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (predicate.test(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
        public static Stream $default$stream(java.util.Collection collection) {
            Spliterator c0 = j$.com.android.tools.r8.a.c0(collection);
            Objects.requireNonNull(c0);
            return new AbstractC5453a(c0, Y2.m(c0), false);
        }

        public static Object[] $default$toArray(java.util.Collection collection, IntFunction intFunction) {
            return collection.toArray((Object[]) intFunction.apply(0));
        }
    }

    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);
}
