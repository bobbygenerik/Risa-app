package p146;

import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: ˉᵔ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2409 implements Set {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final AtomicLong f9308 = new AtomicLong();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractMap f9309;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f9310;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2410 f9311;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ReentrantReadWriteLock f9312;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f9313;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2409() {
        this(new HashMap(), (byte) 0);
        this.f9313 = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2409(AbstractMap abstractMap) {
        this(abstractMap, (byte) 0);
        this.f9313 = 1;
    }

    public C2409(AbstractMap abstractMap, byte b) {
        this.f9310 = f9308.getAndIncrement();
        this.f9312 = new ReentrantReadWriteLock();
        this.f9309 = abstractMap;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        ReentrantReadWriteLock.WriteLock writeLock = this.f9312.writeLock();
        try {
            writeLock.lock();
            AbstractMap abstractMap = this.f9309;
            if (!abstractMap.containsKey(obj)) {
                C2410 m5513 = m5513(obj, this.f9311);
                this.f9311 = m5513;
                abstractMap.put(obj, m5513);
                z = true;
            }
            return z;
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        boolean z;
        ReentrantReadWriteLock.WriteLock writeLock = this.f9312.writeLock();
        try {
            writeLock.lock();
            boolean z2 = false;
            for (Object obj : collection) {
                if (obj != null) {
                    AbstractMap abstractMap = this.f9309;
                    if (abstractMap.containsKey(obj)) {
                        z = false;
                    } else {
                        C2410 m5513 = m5513(obj, this.f9311);
                        this.f9311 = m5513;
                        abstractMap.put(obj, m5513);
                        z = true;
                    }
                    z2 |= z;
                }
            }
            return z2;
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        ReentrantReadWriteLock.WriteLock writeLock = this.f9312.writeLock();
        try {
            writeLock.lock();
            this.f9311 = null;
            this.f9309.clear();
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        ReentrantReadWriteLock.ReadLock readLock = this.f9312.readLock();
        try {
            readLock.lock();
            C2410 c2410 = (C2410) this.f9309.get(obj);
            return (c2410 == null || c2410.m5514() == null) ? false : true;
        } finally {
            readLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f9310 == ((C2409) obj).f9310;
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        long j = this.f9310;
        return 31 + ((int) (j ^ (j >>> 32)));
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f9311 == null;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f9313) {
            case 0:
                return new C2411(this);
            default:
                return new C2411(this, (byte) 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        AbstractMap abstractMap = this.f9309;
        if (!contains(obj)) {
            return false;
        }
        ReentrantReadWriteLock.WriteLock writeLock = this.f9312.writeLock();
        try {
            writeLock.lock();
            C2410 c2410 = (C2410) abstractMap.get(obj);
            if (c2410 == null) {
                return false;
            }
            C2410 c24102 = this.f9311;
            if (c2410 != c24102) {
                C2410 c24103 = c2410.f9316;
                if (c24103 != null) {
                    c24103.f9317 = c2410.f9317;
                    C2410 c24104 = c2410.f9317;
                    if (c24104 != null) {
                        c24104.f9316 = c24103;
                    }
                } else {
                    C2410 c24105 = c2410.f9317;
                    if (c24105 != null) {
                        c24105.f9316 = null;
                    }
                }
            } else {
                this.f9311 = c24102.f9317;
            }
            abstractMap.remove(obj);
            writeLock.unlock();
            return true;
        } finally {
            writeLock.unlock();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f9309.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return this.f9309.entrySet().toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f9309.entrySet().toArray(objArr);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2410 m5513(Object obj, C2410 c2410) {
        C2410 c24102;
        C2410 c24103;
        switch (this.f9313) {
            case 0:
                if (c2410 != null) {
                    c24102 = new C2410(c2410, 0);
                    c24102.f9315 = obj;
                } else {
                    c24102 = new C2410(0);
                    c24102.f9315 = obj;
                }
                return c24102;
            default:
                if (c2410 != null) {
                    c24103 = new C2410(c2410, 1);
                    c24103.f9315 = new WeakReference(obj);
                } else {
                    c24103 = new C2410(1);
                    c24103.f9315 = new WeakReference(obj);
                }
                return c24103;
        }
    }
}
