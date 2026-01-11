package j$.util.concurrent;

import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, t {
    public static final int g = Runtime.getRuntime().availableProcessors();
    public static final j$.sun.misc.a h;
    public static final long i;
    public static final long j;
    public static final long k;
    public static final long l;
    public static final long m;
    public static final int n;
    public static final int o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;
    public volatile transient k[] a;
    public volatile transient k[] b;
    private volatile transient long baseCount;
    public volatile transient c[] c;
    private volatile transient int cellsBusy;
    public transient KeySetView d;
    public transient r e;
    public transient e f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    /* loaded from: classes2.dex */
    public static class KeySetView<K, V> extends b implements Set<K>, Serializable, j$.util.Set<K> {
        private static final long serialVersionUID = 7249069246763182397L;
        public final Object b;

        public KeySetView(ConcurrentHashMap concurrentHashMap, Object obj) {
            super(concurrentHashMap);
            this.b = obj;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(K k) {
            Object obj = this.b;
            if (obj != null) {
                return this.a.f(k, obj, true) == null;
            }
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            Object obj = this.b;
            if (obj == null) {
                throw new UnsupportedOperationException();
            }
            Iterator it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (this.a.f(it.next(), obj, true) == null) {
                    z = true;
                }
            }
            return z;
        }

        @Override // j$.util.concurrent.b, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            if (set != this) {
                return containsAll(set) && set.containsAll(this);
            }
            return true;
        }

        @Override // java.lang.Iterable, j$.util.Collection
        public final void forEach(Consumer consumer) {
            consumer.getClass();
            k[] kVarArr = this.a.a;
            if (kVarArr == null) {
                return;
            }
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k a = oVar.a();
                if (a == null) {
                    return;
                } else {
                    consumer.accept(a.b);
                }
            }
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            Iterator<K> it = iterator();
            int i = 0;
            while (it.hasNext()) {
                i += it.next().hashCode();
            }
            return i;
        }

        @Override // j$.util.concurrent.b, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            ConcurrentHashMap concurrentHashMap = this.a;
            k[] kVarArr = concurrentHashMap.a;
            int length = kVarArr == null ? 0 : kVarArr.length;
            return new h(kVarArr, length, length, concurrentHashMap, 0);
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream parallelStream() {
            return Stream.Wrapper.convert(Collection.CC.$default$parallelStream(this));
        }

        @Override // j$.util.concurrent.b, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.a.remove(obj) != null;
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
        public final Spliterator spliterator() {
            ConcurrentHashMap concurrentHashMap = this.a;
            long j = concurrentHashMap.j();
            k[] kVarArr = concurrentHashMap.a;
            int length = kVarArr == null ? 0 : kVarArr.length;
            return new i(kVarArr, length, 0, length, j < 0 ? 0L : j, 0);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public final /* synthetic */ java.util.Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection
        public final /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
        }

        @Override // java.util.Collection, j$.util.Collection
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return Collection.CC.$default$toArray(this, intFunction);
        }
    }

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", m[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        j$.sun.misc.a aVar = j$.sun.misc.a.b;
        h = aVar;
        i = aVar.h(ConcurrentHashMap.class, "sizeCtl");
        j = aVar.h(ConcurrentHashMap.class, "transferIndex");
        k = aVar.h(ConcurrentHashMap.class, "baseCount");
        l = aVar.h(ConcurrentHashMap.class, "cellsBusy");
        m = aVar.h(c.class, "value");
        n = aVar.a(k[].class);
        int b = aVar.b(k[].class);
        if (((b - 1) & b) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        o = 31 - Integer.numberOfLeadingZeros(b);
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i2) {
        this(i2, 0.75f, 1);
    }

    public ConcurrentHashMap(int i2, float f, int i3) {
        if (f <= 0.0f || i2 < 0 || i3 <= 0) {
            throw new IllegalArgumentException();
        }
        long j2 = (long) (((i2 < i3 ? i3 : i2) / f) + 1.0d);
        this.sizeCtl = j2 >= 1073741824 ? 1073741824 : l((int) j2);
    }

    public static final boolean b(k[] kVarArr, int i2, k kVar) {
        return j$.com.android.tools.r8.a.S(h.a, kVarArr, (i2 << o) + n, kVar);
    }

    public static Class c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls != String.class) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces == null) {
                return null;
            }
            for (Type type : genericInterfaces) {
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                    }
                }
            }
            return null;
        }
        return cls;
    }

    public static final void h(k[] kVarArr, int i2, k kVar) {
        h.j(kVarArr, (i2 << o) + n, kVar);
    }

    public static final int i(int i2) {
        return (i2 ^ (i2 >>> 16)) & Integer.MAX_VALUE;
    }

    public static final k k(k[] kVarArr, int i2) {
        return (k) h.f(kVarArr, (i2 << o) + n);
    }

    public static final int l(int i2) {
        int numberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i2 - 1);
        if (numberOfLeadingZeros < 0) {
            return 1;
        }
        if (numberOfLeadingZeros >= 1073741824) {
            return 1073741824;
        }
        return numberOfLeadingZeros + 1;
    }

    public static <K> KeySetView<K, Boolean> newKeySet() {
        return new KeySetView<>(new ConcurrentHashMap(), Boolean.TRUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [j$.util.concurrent.k] */
    public static k p(q qVar) {
        k kVar = null;
        k kVar2 = null;
        for (q qVar2 = qVar; qVar2 != null; qVar2 = qVar2.d) {
            k kVar3 = new k(qVar2.a, qVar2.b, qVar2.c);
            if (kVar2 == null) {
                kVar = kVar3;
            } else {
                kVar2.d = kVar3;
            }
            kVar2 = kVar3;
        }
        return kVar;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j2;
        long j3;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j4 = 0;
        long j5 = 0;
        k kVar = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j2 = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j5++;
            kVar = new k(i(readObject.hashCode()), readObject, readObject2, kVar);
        }
        if (j5 == 0) {
            this.sizeCtl = 0;
            return;
        }
        long j6 = (long) ((((float) j5) / 0.75f) + 1.0d);
        int l2 = j6 >= 1073741824 ? 1073741824 : l((int) j6);
        k[] kVarArr = new k[l2];
        int i2 = l2 - 1;
        while (kVar != null) {
            k kVar2 = kVar.d;
            int i3 = kVar.a;
            int i4 = i3 & i2;
            k k2 = k(kVarArr, i4);
            boolean z = true;
            if (k2 == null) {
                j3 = j2;
            } else {
                Object obj2 = kVar.b;
                if (k2.a < 0) {
                    if (((p) k2).e(i3, obj2, kVar.c) == null) {
                        j4 += j2;
                    }
                    j3 = j2;
                } else {
                    j3 = j2;
                    int i5 = 0;
                    for (k kVar3 = k2; kVar3 != null; kVar3 = kVar3.d) {
                        if (kVar3.a == i3 && ((obj = kVar3.b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    if (z && i5 >= 8) {
                        j4 += j3;
                        kVar.d = k2;
                        k kVar4 = kVar;
                        q qVar = null;
                        q qVar2 = null;
                        while (kVar4 != null) {
                            q qVar3 = new q(kVar4.a, kVar4.b, kVar4.c, null, null);
                            qVar3.h = qVar2;
                            if (qVar2 == null) {
                                qVar = qVar3;
                            } else {
                                qVar2.d = qVar3;
                            }
                            kVar4 = kVar4.d;
                            qVar2 = qVar3;
                        }
                        h(kVarArr, i4, new p(qVar));
                    }
                }
                z = false;
            }
            if (z) {
                j4 += j3;
                kVar.d = k2;
                h(kVarArr, i4, kVar);
            }
            kVar = kVar2;
            j2 = j3;
        }
        this.a = kVarArr;
        this.sizeCtl = l2 - (l2 >>> 2);
        this.baseCount = j4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeObject(ObjectOutputStream objectOutputStream) {
        int i2 = 0;
        int i3 = 1;
        while (i3 < 16) {
            i2++;
            i3 <<= 1;
        }
        int i4 = 32 - i2;
        int i5 = i3 - 1;
        m[] mVarArr = new m[16];
        for (int i6 = 0; i6 < 16; i6++) {
            mVarArr[i6] = new ReentrantLock();
        }
        ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
        putFields.put("segments", mVarArr);
        putFields.put("segmentShift", i4);
        putFields.put("segmentMask", i5);
        objectOutputStream.writeFields();
        k[] kVarArr = this.a;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k a = oVar.a();
                if (a == null) {
                    break;
                }
                objectOutputStream.writeObject(a.b);
                objectOutputStream.writeObject(a.c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x0140, code lost:
    
        if (r1.c != r6) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0142, code lost:
    
        r1.c = (j$.util.concurrent.c[]) java.util.Arrays.copyOf(r6, r7 << 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if (r0.d(r1, r2, r4, r6) == false) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00c2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r25, int r27) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.a(long, int):void");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        k k2;
        k[] kVarArr = this.a;
        long j2 = 0;
        loop0: while (true) {
            int i2 = 0;
            while (kVarArr != null && i2 < kVarArr.length) {
                k2 = k(kVarArr, i2);
                if (k2 == null) {
                    i2++;
                } else {
                    int i3 = k2.a;
                    if (i3 == -1) {
                        break;
                    }
                    synchronized (k2) {
                        try {
                            if (k(kVarArr, i2) == k2) {
                                for (k kVar = i3 >= 0 ? k2 : k2 instanceof p ? ((p) k2).f : null; kVar != null; kVar = kVar.d) {
                                    j2--;
                                }
                                h(kVarArr, i2, null);
                                i2++;
                            }
                        } finally {
                        }
                    }
                }
            }
            kVarArr = d(kVarArr, k2);
        }
        if (j2 != 0) {
            a(j2, -1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x010e, code lost:
    
        if (r4 == 0) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0110, code lost:
    
        a(r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0114, code lost:
    
        return r5;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object compute(java.lang.Object r14, java.util.function.BiFunction r15) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.compute(java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f2, code lost:
    
        if (r5 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f4, code lost:
    
        a(1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f9, code lost:
    
        return r5;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object computeIfAbsent(java.lang.Object r12, java.util.function.Function r13) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.computeIfAbsent(java.lang.Object, java.util.function.Function):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00aa, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object computeIfPresent(java.lang.Object r14, java.util.function.BiFunction r15) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto Lbd
            if (r15 == 0) goto Lbd
            int r1 = r14.hashCode()
            int r1 = i(r1)
            j$.util.concurrent.k[] r2 = r13.a
            r3 = 0
            r5 = r0
            r4 = r3
        L12:
            if (r2 == 0) goto Lb7
            int r6 = r2.length
            if (r6 != 0) goto L19
            goto Lb7
        L19:
            int r6 = r6 + (-1)
            r6 = r6 & r1
            j$.util.concurrent.k r7 = k(r2, r6)
            if (r7 != 0) goto L24
            goto Lae
        L24:
            int r8 = r7.a
            r9 = -1
            if (r8 != r9) goto L2e
            j$.util.concurrent.k[] r2 = r13.d(r2, r7)
            goto L12
        L2e:
            monitor-enter(r7)
            j$.util.concurrent.k r10 = k(r2, r6)     // Catch: java.lang.Throwable -> L4b
            if (r10 != r7) goto Lab
            if (r8 < 0) goto L70
            r4 = 1
            r10 = r0
            r8 = r7
        L3a:
            int r11 = r8.a     // Catch: java.lang.Throwable -> L4b
            if (r11 != r1) goto L65
            java.lang.Object r11 = r8.b     // Catch: java.lang.Throwable -> L4b
            if (r11 == r14) goto L4e
            if (r11 == 0) goto L65
            boolean r11 = r14.equals(r11)     // Catch: java.lang.Throwable -> L4b
            if (r11 == 0) goto L65
            goto L4e
        L4b:
            r14 = move-exception
            goto Lb5
        L4e:
            java.lang.Object r5 = r8.c     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r5 = r15.apply(r14, r5)     // Catch: java.lang.Throwable -> L4b
            if (r5 == 0) goto L59
            r8.c = r5     // Catch: java.lang.Throwable -> L4b
            goto Lab
        L59:
            j$.util.concurrent.k r3 = r8.d     // Catch: java.lang.Throwable -> L4b
            if (r10 == 0) goto L60
            r10.d = r3     // Catch: java.lang.Throwable -> L4b
            goto L63
        L60:
            h(r2, r6, r3)     // Catch: java.lang.Throwable -> L4b
        L63:
            r3 = r9
            goto Lab
        L65:
            j$.util.concurrent.k r10 = r8.d     // Catch: java.lang.Throwable -> L4b
            if (r10 != 0) goto L6a
            goto Lab
        L6a:
            int r4 = r4 + 1
            r12 = r10
            r10 = r8
            r8 = r12
            goto L3a
        L70:
            boolean r8 = r7 instanceof j$.util.concurrent.p     // Catch: java.lang.Throwable -> L4b
            if (r8 == 0) goto L9e
            r4 = r7
            j$.util.concurrent.p r4 = (j$.util.concurrent.p) r4     // Catch: java.lang.Throwable -> L4b
            j$.util.concurrent.q r8 = r4.e     // Catch: java.lang.Throwable -> L4b
            if (r8 == 0) goto L9c
            j$.util.concurrent.q r8 = r8.b(r1, r14, r0)     // Catch: java.lang.Throwable -> L4b
            if (r8 == 0) goto L9c
            java.lang.Object r5 = r8.c     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r5 = r15.apply(r14, r5)     // Catch: java.lang.Throwable -> L4b
            if (r5 == 0) goto L8c
            r8.c = r5     // Catch: java.lang.Throwable -> L4b
            goto L9c
        L8c:
            boolean r3 = r4.f(r8)     // Catch: java.lang.Throwable -> L4b
            if (r3 == 0) goto L9b
            j$.util.concurrent.q r3 = r4.f     // Catch: java.lang.Throwable -> L4b
            j$.util.concurrent.k r3 = p(r3)     // Catch: java.lang.Throwable -> L4b
            h(r2, r6, r3)     // Catch: java.lang.Throwable -> L4b
        L9b:
            r3 = r9
        L9c:
            r4 = 2
            goto Lab
        L9e:
            boolean r6 = r7 instanceof j$.util.concurrent.l     // Catch: java.lang.Throwable -> L4b
            if (r6 != 0) goto La3
            goto Lab
        La3:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L4b
            java.lang.String r15 = "Recursive update"
            r14.<init>(r15)     // Catch: java.lang.Throwable -> L4b
            throw r14     // Catch: java.lang.Throwable -> L4b
        Lab:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4b
            if (r4 == 0) goto L12
        Lae:
            if (r3 == 0) goto Lb4
            long r14 = (long) r3
            r13.a(r14, r4)
        Lb4:
            return r5
        Lb5:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4b
            throw r14
        Lb7:
            j$.util.concurrent.k[] r2 = r13.e()
            goto L12
        Lbd:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.computeIfPresent(java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        k[] kVarArr = this.a;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k a = oVar.a();
                if (a == null) {
                    break;
                }
                Object obj2 = a.c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final k[] d(k[] kVarArr, k kVar) {
        int i2;
        if (!(kVar instanceof g)) {
            return this.a;
        }
        k[] kVarArr2 = ((g) kVar).e;
        int numberOfLeadingZeros = Integer.numberOfLeadingZeros(kVarArr.length) | 32768;
        while (kVarArr2 == this.b && this.a == kVarArr && (i2 = this.sizeCtl) < 0 && (i2 >>> 16) == numberOfLeadingZeros && i2 != numberOfLeadingZeros + 1 && i2 != 65535 + numberOfLeadingZeros && this.transferIndex > 0) {
            if (h.c(this, i, i2, i2 + 1)) {
                m(kVarArr, kVarArr2);
                break;
            }
        }
        return kVarArr2;
    }

    public final k[] e() {
        while (true) {
            k[] kVarArr = this.a;
            if (kVarArr != null && kVarArr.length != 0) {
                return kVarArr;
            }
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                Thread.yield();
            } else if (h.c(this, i, i2, -1)) {
                try {
                    k[] kVarArr2 = this.a;
                    if (kVarArr2 != null) {
                        if (kVarArr2.length == 0) {
                        }
                        this.sizeCtl = i2;
                        return kVarArr2;
                    }
                    int i3 = i2 > 0 ? i2 : 16;
                    k[] kVarArr3 = new k[i3];
                    this.a = kVarArr3;
                    i2 = i3 - (i3 >>> 2);
                    kVarArr2 = kVarArr3;
                    this.sizeCtl = i2;
                    return kVarArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i2;
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.concurrent.b, j$.util.concurrent.e, java.util.Set] */
    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        e eVar = this.f;
        if (eVar != null) {
            return eVar;
        }
        ?? bVar = new b(this);
        this.f = bVar;
        return bVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        V value;
        V v;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        k[] kVarArr = this.a;
        int length = kVarArr == null ? 0 : kVarArr.length;
        o oVar = new o(kVarArr, length, 0, length);
        while (true) {
            k a = oVar.a();
            if (a == null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                        return false;
                    }
                }
                return true;
            }
            Object obj2 = a.c;
            Object obj3 = map.get(a.b);
            if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                break;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b4, code lost:
    
        a(1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b9, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00a5, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.f(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        k[] kVarArr = this.a;
        if (kVarArr == null) {
            return;
        }
        o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
        while (true) {
            k a = oVar.a();
            if (a == null) {
                return;
            } else {
                biConsumer.accept(a.b, a.c);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ae, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(java.lang.Object r13, java.lang.Object r14, java.lang.Object r15) {
        /*
            r12 = this;
            int r0 = r13.hashCode()
            int r0 = i(r0)
            j$.util.concurrent.k[] r1 = r12.a
        La:
            r2 = 0
            if (r1 == 0) goto Lc0
            int r3 = r1.length
            if (r3 == 0) goto Lc0
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.k r4 = k(r1, r3)
            if (r4 != 0) goto L1b
            goto Lc0
        L1b:
            int r5 = r4.a
            r6 = -1
            if (r5 != r6) goto L25
            j$.util.concurrent.k[] r1 = r12.d(r1, r4)
            goto La
        L25:
            monitor-enter(r4)
            j$.util.concurrent.k r7 = k(r1, r3)     // Catch: java.lang.Throwable -> L42
            if (r7 != r4) goto Laf
            r7 = 1
            if (r5 < 0) goto L6e
            r8 = r2
            r5 = r4
        L31:
            int r9 = r5.a     // Catch: java.lang.Throwable -> L42
            if (r9 != r0) goto L65
            java.lang.Object r9 = r5.b     // Catch: java.lang.Throwable -> L42
            if (r9 == r13) goto L45
            if (r9 == 0) goto L65
            boolean r9 = r13.equals(r9)     // Catch: java.lang.Throwable -> L42
            if (r9 == 0) goto L65
            goto L45
        L42:
            r13 = move-exception
            goto Lbe
        L45:
            java.lang.Object r9 = r5.c     // Catch: java.lang.Throwable -> L42
            if (r15 == 0) goto L53
            if (r15 == r9) goto L53
            if (r9 == 0) goto Lb0
            boolean r10 = r15.equals(r9)     // Catch: java.lang.Throwable -> L42
            if (r10 == 0) goto Lb0
        L53:
            if (r14 == 0) goto L58
            r5.c = r14     // Catch: java.lang.Throwable -> L42
            goto Lb1
        L58:
            if (r8 == 0) goto L5f
            j$.util.concurrent.k r3 = r5.d     // Catch: java.lang.Throwable -> L42
            r8.d = r3     // Catch: java.lang.Throwable -> L42
            goto Lb1
        L5f:
            j$.util.concurrent.k r5 = r5.d     // Catch: java.lang.Throwable -> L42
            h(r1, r3, r5)     // Catch: java.lang.Throwable -> L42
            goto Lb1
        L65:
            j$.util.concurrent.k r8 = r5.d     // Catch: java.lang.Throwable -> L42
            if (r8 != 0) goto L6a
            goto Lb0
        L6a:
            r11 = r8
            r8 = r5
            r5 = r11
            goto L31
        L6e:
            boolean r5 = r4 instanceof j$.util.concurrent.p     // Catch: java.lang.Throwable -> L42
            if (r5 == 0) goto La2
            r5 = r4
            j$.util.concurrent.p r5 = (j$.util.concurrent.p) r5     // Catch: java.lang.Throwable -> L42
            j$.util.concurrent.q r8 = r5.e     // Catch: java.lang.Throwable -> L42
            if (r8 == 0) goto Lb0
            j$.util.concurrent.q r8 = r8.b(r0, r13, r2)     // Catch: java.lang.Throwable -> L42
            if (r8 == 0) goto Lb0
            java.lang.Object r9 = r8.c     // Catch: java.lang.Throwable -> L42
            if (r15 == 0) goto L8d
            if (r15 == r9) goto L8d
            if (r9 == 0) goto Lb0
            boolean r10 = r15.equals(r9)     // Catch: java.lang.Throwable -> L42
            if (r10 == 0) goto Lb0
        L8d:
            if (r14 == 0) goto L92
            r8.c = r14     // Catch: java.lang.Throwable -> L42
            goto Lb1
        L92:
            boolean r8 = r5.f(r8)     // Catch: java.lang.Throwable -> L42
            if (r8 == 0) goto Lb1
            j$.util.concurrent.q r5 = r5.f     // Catch: java.lang.Throwable -> L42
            j$.util.concurrent.k r5 = p(r5)     // Catch: java.lang.Throwable -> L42
            h(r1, r3, r5)     // Catch: java.lang.Throwable -> L42
            goto Lb1
        La2:
            boolean r3 = r4 instanceof j$.util.concurrent.l     // Catch: java.lang.Throwable -> L42
            if (r3 != 0) goto La7
            goto Laf
        La7:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L42
            java.lang.String r14 = "Recursive update"
            r13.<init>(r14)     // Catch: java.lang.Throwable -> L42
            throw r13     // Catch: java.lang.Throwable -> L42
        Laf:
            r7 = 0
        Lb0:
            r9 = r2
        Lb1:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L42
            if (r7 == 0) goto La
            if (r9 == 0) goto Lc0
            if (r14 != 0) goto Lbd
            r13 = -1
            r12.a(r13, r6)
        Lbd:
            return r9
        Lbe:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L42
            throw r13
        Lc0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.g(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
    
        return (V) r1.c;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r4) {
        /*
            r3 = this;
            int r0 = r4.hashCode()
            int r0 = i(r0)
            j$.util.concurrent.k[] r1 = r3.a
            if (r1 == 0) goto L4d
            int r2 = r1.length
            if (r2 <= 0) goto L4d
            int r2 = r2 + (-1)
            r2 = r2 & r0
            j$.util.concurrent.k r1 = k(r1, r2)
            if (r1 == 0) goto L4d
            int r2 = r1.a
            if (r2 != r0) goto L2b
            java.lang.Object r2 = r1.b
            if (r2 == r4) goto L28
            if (r2 == 0) goto L36
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L36
        L28:
            java.lang.Object r4 = r1.c
            return r4
        L2b:
            if (r2 >= 0) goto L36
            j$.util.concurrent.k r4 = r1.a(r0, r4)
            if (r4 == 0) goto L4d
            java.lang.Object r4 = r4.c
            return r4
        L36:
            j$.util.concurrent.k r1 = r1.d
            if (r1 == 0) goto L4d
            int r2 = r1.a
            if (r2 != r0) goto L36
            java.lang.Object r2 = r1.b
            if (r2 == r4) goto L4a
            if (r2 == 0) goto L36
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L36
        L4a:
            java.lang.Object r4 = r1.c
            return r4
        L4d:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        k[] kVarArr = this.a;
        int i2 = 0;
        if (kVarArr != null) {
            o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
            while (true) {
                k a = oVar.a();
                if (a == null) {
                    break;
                }
                i2 += a.c.hashCode() ^ a.b.hashCode();
            }
        }
        return i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return j() <= 0;
    }

    public final long j() {
        c[] cVarArr = this.c;
        long j2 = this.baseCount;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar != null) {
                    j2 += cVar.value;
                }
            }
        }
        return j2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        KeySetView keySetView = this.d;
        if (keySetView != null) {
            return keySetView;
        }
        KeySetView keySetView2 = new KeySetView(this, null);
        this.d = keySetView2;
        return keySetView2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r10v9, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r5v5, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r8v10, types: [j$.util.concurrent.k] */
    /* JADX WARN: Type inference failed for: r8v15, types: [j$.util.concurrent.k] */
    public final void m(k[] kVarArr, k[] kVarArr2) {
        k[] kVarArr3;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        char c;
        int i6;
        int i7;
        q qVar;
        int i8;
        ConcurrentHashMap<K, V> concurrentHashMap = this;
        int length = kVarArr.length;
        int i9 = g;
        boolean z2 = true;
        int i10 = i9 > 1 ? (length >>> 3) / i9 : length;
        char c2 = 16;
        int i11 = i10 < 16 ? 16 : i10;
        if (kVarArr2 == null) {
            try {
                k[] kVarArr4 = new k[length << 1];
                concurrentHashMap.b = kVarArr4;
                concurrentHashMap.transferIndex = length;
                kVarArr3 = kVarArr4;
            } catch (Throwable unused) {
                concurrentHashMap.sizeCtl = Integer.MAX_VALUE;
                return;
            }
        } else {
            kVarArr3 = kVarArr2;
        }
        int length2 = kVarArr3.length;
        g gVar = new g(kVarArr3);
        boolean z3 = true;
        int i12 = 0;
        int i13 = 0;
        boolean z4 = false;
        while (true) {
            if (z3) {
                int i14 = i12 - 1;
                if (i14 >= i13 || z4) {
                    i13 = i13;
                    i12 = i14;
                } else {
                    int i15 = concurrentHashMap.transferIndex;
                    if (i15 <= 0) {
                        i12 = -1;
                    } else {
                        j$.sun.misc.a aVar = h;
                        int i16 = i13;
                        long j2 = j;
                        if (i15 > i11) {
                            i3 = i16;
                            i4 = i15 - i11;
                            i2 = i14;
                        } else {
                            i2 = i14;
                            i3 = i16;
                            i4 = 0;
                        }
                        boolean c3 = aVar.c(concurrentHashMap, j2, i15, i4);
                        i13 = i4;
                        if (c3) {
                            i12 = i15 - 1;
                        } else {
                            i13 = i3;
                            i12 = i2;
                        }
                    }
                }
                z3 = false;
            } else {
                int i17 = i13;
                q qVar2 = null;
                if (i12 < 0 || i12 >= length || (i7 = i12 + length) >= length2) {
                    i5 = length;
                    z = z2;
                    c = c2;
                    i6 = i11;
                    if (z4) {
                        concurrentHashMap.b = null;
                        concurrentHashMap.a = kVarArr3;
                        concurrentHashMap.sizeCtl = (i5 << 1) - (i5 >>> 1);
                        return;
                    }
                    int i18 = i12;
                    j$.sun.misc.a aVar2 = h;
                    long j3 = i;
                    int i19 = concurrentHashMap.sizeCtl;
                    if (!aVar2.c(concurrentHashMap, j3, i19, i19 - 1)) {
                        i12 = i18;
                    } else {
                        if (i19 - 2 != ((Integer.numberOfLeadingZeros(i5) | 32768) << 16)) {
                            return;
                        }
                        z3 = z;
                        z4 = z3;
                        i12 = i5;
                    }
                } else {
                    ?? k2 = k(kVarArr, i12);
                    if (k2 == 0) {
                        z3 = b(kVarArr, i12, gVar);
                        i5 = length;
                        z = z2;
                        c = c2;
                        i6 = i11;
                    } else {
                        z = z2;
                        int i20 = k2.a;
                        if (i20 == -1) {
                            i5 = length;
                            c = c2;
                            i6 = i11;
                            z3 = z;
                        } else {
                            synchronized (k2) {
                                try {
                                    if (k(kVarArr, i12) == k2) {
                                        if (i20 >= 0) {
                                            int i21 = i20 & length;
                                            q qVar3 = k2;
                                            for (q qVar4 = k2.d; qVar4 != null; qVar4 = qVar4.d) {
                                                char c4 = c2;
                                                int i22 = qVar4.a & length;
                                                if (i22 != i21) {
                                                    qVar3 = qVar4;
                                                    i21 = i22;
                                                }
                                                c2 = c4;
                                            }
                                            c = c2;
                                            if (i21 == 0) {
                                                qVar = null;
                                                qVar2 = qVar3;
                                            } else {
                                                qVar = qVar3;
                                            }
                                            k kVar = k2;
                                            while (kVar != qVar3) {
                                                int i23 = kVar.a;
                                                Object obj = kVar.b;
                                                int i24 = length;
                                                Object obj2 = kVar.c;
                                                if ((i23 & i24) == 0) {
                                                    i8 = i11;
                                                    qVar2 = new k(i23, obj, obj2, qVar2);
                                                } else {
                                                    i8 = i11;
                                                    qVar = new k(i23, obj, obj2, qVar);
                                                }
                                                kVar = kVar.d;
                                                length = i24;
                                                i11 = i8;
                                            }
                                            i5 = length;
                                            i6 = i11;
                                            h(kVarArr3, i12, qVar2);
                                            h(kVarArr3, i7, qVar);
                                            h(kVarArr, i12, gVar);
                                        } else {
                                            i5 = length;
                                            c = c2;
                                            i6 = i11;
                                            if (k2 instanceof p) {
                                                p pVar = (p) k2;
                                                q qVar5 = null;
                                                q qVar6 = null;
                                                k kVar2 = pVar.f;
                                                int i25 = 0;
                                                int i26 = 0;
                                                q qVar7 = null;
                                                while (kVar2 != null) {
                                                    p pVar2 = pVar;
                                                    int i27 = kVar2.a;
                                                    q qVar8 = new q(i27, kVar2.b, kVar2.c, null, null);
                                                    if ((i27 & i5) == 0) {
                                                        qVar8.h = qVar6;
                                                        if (qVar6 == null) {
                                                            qVar2 = qVar8;
                                                        } else {
                                                            qVar6.d = qVar8;
                                                        }
                                                        i25++;
                                                        qVar6 = qVar8;
                                                    } else {
                                                        qVar8.h = qVar5;
                                                        if (qVar5 == null) {
                                                            qVar7 = qVar8;
                                                        } else {
                                                            qVar5.d = qVar8;
                                                        }
                                                        i26++;
                                                        qVar5 = qVar8;
                                                    }
                                                    kVar2 = kVar2.d;
                                                    pVar = pVar2;
                                                }
                                                p pVar3 = pVar;
                                                k p = i25 <= 6 ? p(qVar2) : i26 != 0 ? new p(qVar2) : pVar3;
                                                k p2 = i26 <= 6 ? p(qVar7) : i25 != 0 ? new p(qVar7) : pVar3;
                                                h(kVarArr3, i12, p);
                                                h(kVarArr3, i7, p2);
                                                h(kVarArr, i12, gVar);
                                            }
                                        }
                                        z3 = z;
                                    } else {
                                        i5 = length;
                                        c = c2;
                                        i6 = i11;
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                }
                concurrentHashMap = this;
                i13 = i17;
                z2 = z;
                c2 = c;
                length = i5;
                i11 = i6;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00dd, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object merge(java.lang.Object r18, java.lang.Object r19, java.util.function.BiFunction r20) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.merge(java.lang.Object, java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    public final void n(k[] kVarArr, int i2) {
        int length = kVarArr.length;
        if (length < 64) {
            o(length << 1);
            return;
        }
        k k2 = k(kVarArr, i2);
        if (k2 == null || k2.a < 0) {
            return;
        }
        synchronized (k2) {
            try {
                if (k(kVarArr, i2) == k2) {
                    q qVar = null;
                    q qVar2 = null;
                    k kVar = k2;
                    while (kVar != null) {
                        q qVar3 = new q(kVar.a, kVar.b, kVar.c, null, null);
                        qVar3.h = qVar2;
                        if (qVar2 == null) {
                            qVar = qVar3;
                        } else {
                            qVar2.d = qVar3;
                        }
                        kVar = kVar.d;
                        qVar2 = qVar3;
                    }
                    h(kVarArr, i2, new p(qVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o(int i2) {
        int length;
        int l2 = i2 >= 536870912 ? 1073741824 : l(i2 + (i2 >>> 1) + 1);
        while (true) {
            int i3 = this.sizeCtl;
            if (i3 >= 0) {
                k[] kVarArr = this.a;
                if (kVarArr != null && (length = kVarArr.length) != 0) {
                    if (l2 <= i3 || length >= 1073741824) {
                        break;
                    } else if (kVarArr == this.a) {
                        if (h.c(this, i, i3, ((Integer.numberOfLeadingZeros(length) | 32768) << 16) + 2)) {
                            m(kVarArr, null);
                        }
                    }
                } else {
                    int i4 = i3 > l2 ? i3 : l2;
                    if (h.c(this, i, i3, -1)) {
                        try {
                            if (this.a == kVarArr) {
                                this.a = new k[i4];
                                i3 = i4 - (i4 >>> 2);
                            }
                        } finally {
                            this.sizeCtl = i3;
                        }
                    } else {
                        continue;
                    }
                }
            } else {
                break;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        return (V) f(k2, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        o(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            f(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public V putIfAbsent(K k2, V v) {
        return (V) f(k2, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return (V) g(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || g(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null) {
            throw null;
        }
        if (obj2 != null) {
            return g(obj, obj2, null);
        }
        throw null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return g(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        k[] kVarArr = this.a;
        if (kVarArr == null) {
            return;
        }
        o oVar = new o(kVarArr, kVarArr.length, 0, kVarArr.length);
        while (true) {
            k a = oVar.a();
            if (a == null) {
                return;
            }
            Object obj = a.c;
            Object obj2 = a.b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                apply.getClass();
                if (g(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long j2 = j();
        if (j2 < 0) {
            return 0;
        }
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        k[] kVarArr = this.a;
        int length = kVarArr == null ? 0 : kVarArr.length;
        o oVar = new o(kVarArr, length, 0, length);
        StringBuilder sb = new StringBuilder("{");
        k a = oVar.a();
        if (a != null) {
            while (true) {
                Object obj = a.b;
                Object obj2 = a.c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                a = oVar.a();
                if (a == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Collection<V> values() {
        r rVar = this.e;
        if (rVar != null) {
            return rVar;
        }
        b bVar = new b(this);
        this.e = bVar;
        return bVar;
    }
}
