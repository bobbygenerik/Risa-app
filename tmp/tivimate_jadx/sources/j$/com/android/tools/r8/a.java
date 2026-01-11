package j$.com.android.tools.r8;

import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.c;
import j$.time.chrono.AbstractC5420a;
import j$.time.chrono.AbstractC5426g;
import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.E;
import j$.time.chrono.j;
import j$.time.chrono.m;
import j$.time.chrono.q;
import j$.time.chrono.t;
import j$.time.chrono.y;
import j$.time.f;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.o;
import j$.time.temporal.p;
import j$.util.A;
import j$.util.B;
import j$.util.C;
import j$.util.C5435a;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.D;
import j$.util.H;
import j$.util.InterfaceC5586y;
import j$.util.L;
import j$.util.List;
import j$.util.Map;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.Q;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.U;
import j$.util.X;
import j$.util.a0;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.k;
import j$.util.concurrent.s;
import j$.util.stream.Stream;
import j$.util.t0;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.RandomAccess;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.SortedSet;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static String A(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static Optional B(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? new Optional(optional.get()) : Optional.b;
    }

    public static A C(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? new A(optionalDouble.getAsDouble()) : A.c;
    }

    public static B D(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? new B(optionalInt.getAsInt()) : B.c;
    }

    public static C E(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? new C(optionalLong.getAsLong()) : C.c;
    }

    public static java.util.Optional F(Optional optional) {
        if (optional == null) {
            return null;
        }
        Object obj = optional.a;
        if (obj == null) {
            return java.util.Optional.empty();
        }
        if (obj != null) {
            return java.util.Optional.of(obj);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalDouble G(A a) {
        if (a == null) {
            return null;
        }
        boolean z = a.a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(a.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalInt H(B b) {
        if (b == null) {
            return null;
        }
        boolean z = b.a;
        if (!z) {
            return OptionalInt.empty();
        }
        if (z) {
            return OptionalInt.of(b.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalLong I(C c) {
        if (c == null) {
            return null;
        }
        boolean z = c.a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(c.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static void J(Collection collection, Consumer consumer) {
        if (collection instanceof j$.util.Collection) {
            ((j$.util.Collection) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.n(it.next());
        }
    }

    public static /* synthetic */ void K(Map map, BiConsumer biConsumer) {
        if (map instanceof j$.util.Map) {
            ((j$.util.Map) map).forEach(biConsumer);
        } else if (map instanceof ConcurrentMap) {
            f((ConcurrentMap) map, biConsumer);
        } else {
            Map.CC.$default$forEach(map, biConsumer);
        }
    }

    public static void L(Iterator it, Consumer consumer) {
        if (it instanceof InterfaceC5586y) {
            ((InterfaceC5586y) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.n(it.next());
        }
    }

    public static j M(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        Object obj = (j) temporalAccessor.w(p.b);
        q qVar = q.c;
        if (obj == null) {
            obj = Objects.requireNonNull(qVar, "defaultObj");
        }
        return (j) obj;
    }

    public static Object N(java.util.Map map, Object obj, Object obj2) {
        if (map instanceof j$.util.Map) {
            return ((j$.util.Map) map).getOrDefault(obj, obj2);
        }
        if (!(map instanceof ConcurrentMap)) {
            return Map.CC.$default$getOrDefault(map, obj, obj2);
        }
        Object obj3 = ((ConcurrentMap) map).get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    public static /* synthetic */ int O(long j) {
        int i = (int) j;
        if (j == i) {
            return i;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long P(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ List Q(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(Objects.requireNonNull(obj));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static /* synthetic */ Map.Entry R(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ boolean S(Unsafe unsafe, Object obj, long j, k kVar) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            k kVar2 = kVar;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, kVar2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            kVar = kVar2;
        }
    }

    public static /* synthetic */ long T(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long U(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ long V(long j, long j2) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long W(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static String X(Object obj, Object obj2) {
        String str;
        String obj3;
        String str2 = "null";
        if (obj == null || (str = obj.toString()) == null) {
            str = "null";
        }
        int length = str.length();
        if (obj2 != null && (obj3 = obj2.toString()) != null) {
            str2 = obj3;
        }
        int length2 = str2.length();
        char[] cArr = new char[length + length2 + 1];
        str.getChars(0, length, cArr, 0);
        cArr[length] = '=';
        str2.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }

    public static j Y(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC5420a.a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC5420a.a;
            j jVar = (j) concurrentHashMap2.get(str);
            if (jVar == null) {
                jVar = (j) AbstractC5420a.b.get(str);
            }
            if (jVar != null) {
                return jVar;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                Iterator it = ServiceLoader.load(j.class).iterator();
                while (it.hasNext()) {
                    j jVar2 = (j) it.next();
                    if (str.equals(jVar2.j()) || str.equals(jVar2.n())) {
                        return jVar2;
                    }
                }
                throw new RuntimeException("Unknown chronology: " + str);
            }
            m mVar = m.l;
            mVar.getClass();
            AbstractC5420a.m(mVar, "Hijrah-umalqura");
            t tVar = t.c;
            tVar.getClass();
            AbstractC5420a.m(tVar, "Japanese");
            y yVar = y.c;
            yVar.getClass();
            AbstractC5420a.m(yVar, "Minguo");
            E e = E.c;
            e.getClass();
            AbstractC5420a.m(e, "ThaiBuddhist");
            try {
                for (AbstractC5420a abstractC5420a : Arrays.asList(new AbstractC5420a[0])) {
                    if (!abstractC5420a.j().equals("ISO")) {
                        AbstractC5420a.m(abstractC5420a, abstractC5420a.j());
                    }
                }
                q qVar = q.c;
                qVar.getClass();
                AbstractC5420a.m(qVar, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static /* synthetic */ Stream Z(Collection collection) {
        return collection instanceof j$.util.Collection ? ((j$.util.Collection) collection).parallelStream() : Collection.CC.$default$parallelStream(collection);
    }

    public static Temporal a(ChronoLocalDate chronoLocalDate, Temporal temporal) {
        return temporal.c(chronoLocalDate.G(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static /* synthetic */ Object a0(java.util.Map map, Object obj, Object obj2) {
        return map instanceof j$.util.Map ? ((j$.util.Map) map).putIfAbsent(obj, obj2) : Map.CC.$default$putIfAbsent(map, obj, obj2);
    }

    public static s b(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new s(1, biConsumer, biConsumer2);
    }

    public static /* synthetic */ void b0(List list, Comparator comparator) {
        if (list instanceof j$.util.List) {
            ((j$.util.List) list).sort(comparator);
        } else {
            List.CC.$default$sort(list, comparator);
        }
    }

    public static int c(ChronoLocalDate chronoLocalDate, ChronoLocalDate chronoLocalDate2) {
        int compare = Long.compare(chronoLocalDate.G(), chronoLocalDate2.G());
        if (compare != 0) {
            return compare;
        }
        return ((AbstractC5420a) chronoLocalDate.a()).j().compareTo(chronoLocalDate2.a().j());
    }

    public static Spliterator c0(java.util.Collection collection) {
        if (collection instanceof j$.util.Collection) {
            return ((j$.util.Collection) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            return Spliterators.spliterator((LinkedHashSet) collection, 17);
        }
        if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new Q(sortedSet, sortedSet);
        }
        if (collection instanceof Set) {
            return Spliterators.spliterator((Set) collection, 1);
        }
        if (!(collection instanceof java.util.List)) {
            return Spliterators.spliterator(collection, 0);
        }
        java.util.List list = (java.util.List) collection;
        return list instanceof RandomAccess ? new C5435a(list) : Spliterators.spliterator(list, 16);
    }

    public static int d(ChronoLocalDateTime chronoLocalDateTime, ChronoLocalDateTime chronoLocalDateTime2) {
        int compareTo = chronoLocalDateTime.f().compareTo(chronoLocalDateTime2.f());
        return (compareTo == 0 && (compareTo = chronoLocalDateTime.b().compareTo(chronoLocalDateTime2.b())) == 0) ? ((AbstractC5420a) chronoLocalDateTime.a()).j().compareTo(chronoLocalDateTime2.a().j()) : compareTo;
    }

    public static /* synthetic */ Stream d0(java.util.Collection collection) {
        return collection instanceof j$.util.Collection ? ((j$.util.Collection) collection).stream() : Collection.CC.$default$stream(collection);
    }

    public static int e(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int compare = Long.compare(chronoZonedDateTime.toEpochSecond(), chronoZonedDateTime2.toEpochSecond());
        return (compare == 0 && (compare = chronoZonedDateTime.b().d - chronoZonedDateTime2.b().d) == 0 && (compare = chronoZonedDateTime.r().compareTo(chronoZonedDateTime2.r())) == 0 && (compare = chronoZonedDateTime.E().j().compareTo(chronoZonedDateTime2.E().j())) == 0) ? ((AbstractC5420a) chronoZonedDateTime.a()).j().compareTo(chronoZonedDateTime2.a().j()) : compare;
    }

    public static j$.time.a e0() {
        return new j$.time.a(ZoneId.systemDefault());
    }

    public static void f(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static /* synthetic */ Comparator f0(Comparator comparator, Comparator comparator2) {
        return comparator instanceof j$.util.Comparator ? ((j$.util.Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }

    public static void g(U u, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            u.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (t0.a) {
                t0.a(u.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            u.forEachRemaining((DoubleConsumer) new D(consumer, 0));
        }
    }

    public static void h(X x, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            x.forEachRemaining((IntConsumer) consumer);
        } else {
            if (t0.a) {
                t0.a(x.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            x.forEachRemaining((IntConsumer) new H(consumer, 0));
        }
    }

    public static void i(a0 a0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            a0Var.forEachRemaining((LongConsumer) consumer);
        } else {
            if (t0.a) {
                t0.a(a0Var.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            a0Var.forEachRemaining((LongConsumer) new L(consumer, 0));
        }
    }

    public static int j(ChronoZonedDateTime chronoZonedDateTime, o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return p.a(chronoZonedDateTime, oVar);
        }
        int i = AbstractC5426g.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i != 1) {
            return i != 2 ? chronoZonedDateTime.r().k(oVar) : chronoZonedDateTime.g().b;
        }
        throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int k(j$.time.chrono.k kVar, o oVar) {
        return oVar == j$.time.temporal.a.ERA ? kVar.getValue() : p.a(kVar, oVar);
    }

    public static long l(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static long m(j$.time.chrono.k kVar, o oVar) {
        if (oVar == j$.time.temporal.a.ERA) {
            return kVar.getValue();
        }
        if (oVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
        return oVar.w(kVar);
    }

    public static boolean n(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean o(ChronoLocalDate chronoLocalDate, o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).isDateBased() : oVar != null && oVar.k(chronoLocalDate);
    }

    public static boolean p(j$.time.chrono.k kVar, o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.ERA : oVar != null && oVar.k(kVar);
    }

    public static Object q(ChronoLocalDate chronoLocalDate, f fVar) {
        if (fVar == p.a || fVar == p.e || fVar == p.d || fVar == p.g) {
            return null;
        }
        return fVar == p.b ? chronoLocalDate.a() : fVar == p.c ? ChronoUnit.DAYS : fVar.g(chronoLocalDate);
    }

    public static Object r(ChronoLocalDateTime chronoLocalDateTime, f fVar) {
        if (fVar == p.a || fVar == p.e || fVar == p.d) {
            return null;
        }
        return fVar == p.g ? chronoLocalDateTime.b() : fVar == p.b ? chronoLocalDateTime.a() : fVar == p.c ? ChronoUnit.NANOS : fVar.g(chronoLocalDateTime);
    }

    public static Object s(ChronoZonedDateTime chronoZonedDateTime, f fVar) {
        return (fVar == p.e || fVar == p.a) ? chronoZonedDateTime.E() : fVar == p.d ? chronoZonedDateTime.g() : fVar == p.g ? chronoZonedDateTime.b() : fVar == p.b ? chronoZonedDateTime.a() : fVar == p.c ? ChronoUnit.NANOS : fVar.g(chronoZonedDateTime);
    }

    public static Object t(j$.time.chrono.k kVar, f fVar) {
        return fVar == p.c ? ChronoUnit.ERAS : p.c(kVar, fVar);
    }

    public static long u(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((chronoLocalDateTime.f().G() * 86400) + chronoLocalDateTime.b().f0()) - zoneOffset.b;
    }

    public static long v(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.f().G() * 86400) + chronoZonedDateTime.b().f0()) - chronoZonedDateTime.g().b;
    }

    public static boolean w(U u, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return u.tryAdvance((DoubleConsumer) consumer);
        }
        if (t0.a) {
            t0.a(u.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return u.tryAdvance((DoubleConsumer) new D(consumer, 0));
    }

    public static boolean x(X x, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return x.tryAdvance((IntConsumer) consumer);
        }
        if (t0.a) {
            t0.a(x.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return x.tryAdvance((IntConsumer) new H(consumer, 0));
    }

    public static boolean y(a0 a0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return a0Var.tryAdvance((LongConsumer) consumer);
        }
        if (t0.a) {
            t0.a(a0Var.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return a0Var.tryAdvance((LongConsumer) new L(consumer, 0));
    }

    public static String z(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2016, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public int characteristics() {
        return 16448;
    }

    public long estimateSize() {
        return 0L;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public Spliterator trySplit() {
        return null;
    }
}
