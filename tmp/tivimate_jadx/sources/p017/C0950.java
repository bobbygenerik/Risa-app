package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* renamed from: ʼʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0950 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f3890;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3891 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f3892;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Iterator f3893;

    public C0950(C0959 c0959) {
        this.f3892 = c0959;
        this.f3893 = c0959.f3905.entrySet().iterator();
    }

    public C0950(C0976 c0976, Iterator it) {
        this.f3893 = it;
        this.f3892 = c0976;
    }

    public C0950(C1007 c1007) {
        this.f3892 = c1007;
        Collection collection = c1007.f4001;
        this.f3890 = collection;
        this.f3893 = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public C0950(C1007 c1007, ListIterator listIterator) {
        this.f3892 = c1007;
        this.f3890 = c1007.f4001;
        this.f3893 = listIterator;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f3891) {
            case 0:
                return this.f3893.hasNext();
            case 1:
                return this.f3893.hasNext();
            default:
                m3233();
                return this.f3893.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f3891) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f3893.next();
                this.f3890 = (Collection) entry.getValue();
                return ((C0959) this.f3892).m3245(entry);
            case 1:
                Map.Entry entry2 = (Map.Entry) this.f3893.next();
                this.f3890 = entry2;
                return entry2.getKey();
            default:
                m3233();
                return this.f3893.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f3891) {
            case 0:
                י.ٴﹶ("no calls to next() since the last call to remove()", ((Collection) this.f3890) != null);
                this.f3893.remove();
                ((C0959) this.f3892).f3907.f3970 -= ((Collection) this.f3890).size();
                ((Collection) this.f3890).clear();
                this.f3890 = null;
                return;
            case 1:
                י.ٴﹶ("no calls to next() since the last call to remove()", ((Map.Entry) this.f3890) != null);
                Collection collection = (Collection) ((Map.Entry) this.f3890).getValue();
                this.f3893.remove();
                ((C0976) this.f3892).f3941.f3970 -= collection.size();
                collection.clear();
                this.f3890 = null;
                return;
            default:
                this.f3893.remove();
                C1007 c1007 = (C1007) this.f3892;
                C0989 c0989 = c1007.f4002;
                c0989.f3970--;
                c1007.m3298();
                return;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3233() {
        C1007 c1007 = (C1007) this.f3892;
        c1007.m3299();
        if (c1007.f4001 != ((Collection) this.f3890)) {
            throw new ConcurrentModificationException();
        }
    }
}
