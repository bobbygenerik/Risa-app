package p255;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import p152.AbstractC2444;

/* renamed from: יـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3354 implements Iterator, Map.Entry {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f13121;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f13122;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C3359 f13123;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f13124 = -1;

    public C3354(C3359 c3359) {
        this.f13123 = c3359;
        this.f13122 = c3359.f13167 - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f13121) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i = this.f13124;
        C3359 c3359 = this.f13123;
        return AbstractC2444.m5562(key, c3359.m7225(i)) && AbstractC2444.m5562(entry.getValue(), c3359.m7220(this.f13124));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f13121) {
            return this.f13123.m7225(this.f13124);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f13121) {
            return this.f13123.m7220(this.f13124);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13124 < this.f13122;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f13121) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i = this.f13124;
        C3359 c3359 = this.f13123;
        Object m7225 = c3359.m7225(i);
        Object m7220 = c3359.m7220(this.f13124);
        return (m7225 == null ? 0 : m7225.hashCode()) ^ (m7220 != null ? m7220.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f13124++;
        this.f13121 = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f13121) {
            throw new IllegalStateException();
        }
        this.f13123.mo4688(this.f13124);
        this.f13124--;
        this.f13122--;
        this.f13121 = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f13121) {
            return this.f13123.mo4686(this.f13124, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
