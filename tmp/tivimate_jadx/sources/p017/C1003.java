package p017;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: ʼʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1003 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Iterator f3993;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3996;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f3995 = null;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Collection f3992 = null;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Iterator f3994 = EnumC0975.f3938;

    public C1003(C0989 c0989) {
        this.f3996 = c0989;
        this.f3993 = c0989.f3968.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3993.hasNext() || this.f3994.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f3994.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f3993.next();
            this.f3995 = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f3992 = collection;
            this.f3994 = collection.iterator();
        }
        return this.f3994.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f3994.remove();
        Collection collection = this.f3992;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f3993.remove();
        }
        C0989 c0989 = this.f3996;
        c0989.f3970--;
    }
}
