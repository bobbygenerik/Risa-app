package p146;

import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: ˉᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2411 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f9318;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9319 = 2;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f9320;

    public C2411(Iterator it, Iterator it2) {
        this.f9320 = it;
        this.f9318 = it2;
    }

    public C2411(C2409 c2409) {
        this.f9318 = c2409;
        this.f9320 = c2409.f9311;
    }

    public C2411(C2409 c2409, byte b) {
        this.f9318 = c2409;
        this.f9320 = c2409.f9311;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f9319) {
            case 0:
                return ((C2410) this.f9320) != null;
            case 1:
                C2410 c2410 = (C2410) this.f9320;
                if (c2410 == null) {
                    return false;
                }
                if (c2410.m5514() == null) {
                    m5515();
                    if (((C2410) this.f9320) == null) {
                        return false;
                    }
                }
                return true;
            default:
                return ((Iterator) this.f9320).hasNext() || ((Iterator) this.f9318).hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f9319) {
            case 0:
                C2410 c2410 = (C2410) this.f9320;
                if (c2410 == null) {
                    return null;
                }
                Object m5514 = c2410.m5514();
                this.f9320 = ((C2410) this.f9320).f9317;
                return m5514;
            case 1:
                C2410 c24102 = (C2410) this.f9320;
                if (c24102 == null) {
                    return null;
                }
                Object m55142 = c24102.m5514();
                if (m55142 == null) {
                    m5515();
                    return next();
                }
                this.f9320 = ((C2410) this.f9320).f9317;
                return m55142;
            default:
                Iterator it = (Iterator) this.f9320;
                return it.hasNext() ? it.next() : ((Iterator) this.f9318).next();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.f9319) {
            case 0:
                C2410 c2410 = (C2410) this.f9320;
                if (c2410 == null) {
                    return;
                }
                C2410 c24102 = c2410.f9317;
                ((C2409) this.f9318).remove(c2410.m5514());
                this.f9320 = c24102;
                return;
            default:
                C2410 c24103 = (C2410) this.f9320;
                if (c24103 == null) {
                    return;
                }
                C2410 c24104 = c24103.f9317;
                ((C2409) this.f9318).remove(c24103.m5514());
                this.f9320 = c24104;
                return;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5515() {
        C2410 c2410;
        C2409 c2409 = (C2409) this.f9318;
        ReentrantReadWriteLock.WriteLock writeLock = c2409.f9312.writeLock();
        try {
            writeLock.lock();
            do {
                C2410 c24102 = (C2410) this.f9320;
                c2410 = c24102.f9317;
                this.f9320 = c2410;
                C2410 c24103 = c2409.f9311;
                if (c24102 == c24103) {
                    c2409.f9311 = c24103.f9317;
                }
                C2410 c24104 = c24102.f9316;
                if (c24104 != null) {
                    c24104.f9317 = c2410;
                    C2410 c24105 = c24102.f9317;
                    if (c24105 != null) {
                        c24105.f9316 = c24104;
                    }
                } else if (c2410 != null) {
                    c2410.f9316 = null;
                }
                if (c2410 == null) {
                    break;
                }
            } while (c2410.m5514() == null);
            writeLock.unlock();
        } catch (Throwable th) {
            writeLock.unlock();
            throw th;
        }
    }
}
